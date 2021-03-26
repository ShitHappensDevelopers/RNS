#include <inttypes.h>
#include <math.h>
#include <malloc.h>
#include <stdlib.h>
#include "rns.h"

#define B0 233
#define B1 239
#define B2 241
#define B3 251

#define M0 0xFF
#define M1 0xFF00
#define M2 0xFF0000
#define M3 0xFF000000

#define S0 0
#define S1 8
#define S2 16
#define S3 24

#define A0 3021585941u
#define A1 1099363434u
#define A2 1663315003u
#define A3 952860257u

#define IntRnsDelta 926404979u
#define RnsMiddlePoint 1684281159u

#define Modules_count 4
int Modules[4] = { B0, B1, B2, B3 };

rns_t Zero_rns = 0;
rns_t Middle_number = 2105046900u;

void reverse_rns(rns_t* numbers, int numbers_length) {
	for (int i = 0; i < numbers_length / 2; i++)
	{
		rns_t result_i = numbers[i];
		numbers[i] = numbers[numbers_length - i - 1];
		numbers[numbers_length - i - 1] = result_i;
	}
}

uint8_t get_rns_number_part(rns_t num, uint8_t base) {
	uint8_t ans = 0;
	switch (base) {
	case 0: ans = (uint16_t)((num & M0) >> S0); break;
	case 1: ans = (uint16_t)((num & M1) >> S1); break;
	case 2: ans = (uint16_t)((num & M2) >> S2); break;
	case 3: ans = (uint16_t)((num & M3) >> S3); break;
	default: break;
	}
	return ans;
}

rns_t int_to_rns(uint32_t n) {
	if (n >= (1 << 31))
		n = n - IntRnsDelta;
	rns_t ans = 0;
	ans |= (n % B0) << S0;
	ans |= (n % B1) << S1;
	ans |= (n % B2) << S2;
	ans |= (n % B3) << S3;
	return ans;
}

rns_t* int_to_rns_arrays(uint32_t count, uint32_t* numbers) {
	rns_t* result = (rns_t*)malloc(sizeof(rns_t) * count);
	for (int i = 0; i < count; i++) {
		result[i] = int_to_rns(numbers[i]);
	}
	return result;
}

uint32_t rns_to_int(rns_t n) {
	uint64_t ans;
	ans = (uint64_t)A0 * (uint64_t)get_rns_number_part(n, 0) +
		(uint64_t)A1 * (uint64_t)get_rns_number_part(n, 1) +
		(uint64_t)A2 * (uint64_t)get_rns_number_part(n, 2) +
		(uint64_t)A3 * (uint64_t)get_rns_number_part(n, 3);
	ans = (uint32_t)(ans % (rns_maxint() + 1u));
	if (ans >= RnsMiddlePoint)
		ans = ans + IntRnsDelta;
	return ans;
}

uint32_t* rns_to_int_arrays(uint32_t count, rns_t* numbers) {
	uint32_t* result = (uint32_t*)malloc(sizeof(uint32_t) * count);
	for (int i = 0; i < count; i++) {
		result[i] = rns_to_int(numbers[i]);
	}
	return result;
}

void set_rns_number_part(rns_t* num, uint8_t val, uint8_t base) {
	switch (base) {
	case 0: *num |= (uint32_t)val << S0; break;
	case 1: *num |= (uint32_t)val << S1; break;
	case 2: *num |= (uint32_t)val << S2; break;
	case 3: *num |= (uint32_t)val << S3; break;
	default: break;
	}
}

rns_t add_rns_numbers(rns_t x, rns_t y) {
	rns_t ans = 0;
	set_rns_number_part(&ans, (get_rns_number_part(x, 0) + get_rns_number_part(y, 0)) % B0, 0);
	set_rns_number_part(&ans, (get_rns_number_part(x, 1) + get_rns_number_part(y, 1)) % B1, 1);
	set_rns_number_part(&ans, (get_rns_number_part(x, 2) + get_rns_number_part(y, 2)) % B2, 2);
	set_rns_number_part(&ans, (get_rns_number_part(x, 3) + get_rns_number_part(y, 3)) % B3, 3);
	return ans;
}

rns_t mul_rns_numbers(rns_t x, rns_t y) {
	rns_t ans = 0;
	set_rns_number_part(&ans, (get_rns_number_part(x, 0) * get_rns_number_part(y, 0)) % B0, 0);
	set_rns_number_part(&ans, (get_rns_number_part(x, 1) * get_rns_number_part(y, 1)) % B1, 1);
	set_rns_number_part(&ans, (get_rns_number_part(x, 2) * get_rns_number_part(y, 2)) % B2, 2);
	set_rns_number_part(&ans, (get_rns_number_part(x, 3) * get_rns_number_part(y, 3)) % B3, 3);

	return ans;
}

rns_t inverse_rns_number(rns_t y) {
	rns_t ans = 0;
	set_rns_number_part(&ans, B0 - get_rns_number_part(y, 0), 0);
	set_rns_number_part(&ans, B1 - get_rns_number_part(y, 1), 1);
	set_rns_number_part(&ans, B2 - get_rns_number_part(y, 2), 2);
	set_rns_number_part(&ans, B3 - get_rns_number_part(y, 3), 3);
	return ans;
}

rns_t sub_rns_numbers(rns_t x, rns_t y) {
	rns_t iy = inverse_rns_number(y);
	return add_rns_numbers(x, iy);
}

rns_t sum_array_numbers_rns(rns_t* numbers, int numbers_length) {
	rns_t sum = 0;
	for (int i = 0; i < numbers_length; i++)
	{
		sum = add_rns_numbers(sum, numbers[i]);
	}
	return sum;
}

bool equal_rns(rns_t x, rns_t y) {
	for (int i = 0; i < 4; i++)
	{
		if (get_rns_number_part(x, i) != get_rns_number_part(y, i))
			return false;
	}
	return true;
}

rns_t div_rns_numbers(rns_t a, rns_t b) {
	if (equal_rns(a, b))
		return int_to_rns(1);

	rns_t X[32] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
	rns_t U[32] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
	rns_t x = int_to_rns(1);

	rns_t two = int_to_rns(2);
	int counter_X = 0;
	while (compare(a, mul_rns_numbers(x, b)) >= 0)
	{
		X[counter_X] = x;
		x = mul_rns_numbers(two, x);
		counter_X++;
	}

	reverse_rns(X, counter_X);

	int counter_U = 0;
	for (int i = 0; i < counter_X; i++)
	{
		rns_t mul_result = mul_rns_numbers(add_rns_numbers(sum_array_numbers_rns(U, counter_U), X[i]), b);
		if (compare(mul_result, a) <= 0) {
			U[counter_U] = X[i];
			counter_U++;
		}
	}

	return sum_array_numbers_rns(U, counter_U);
}

int negative(int a, int base) {
	int b = base, x = 1, y = 0, n = 0, a_temp = 0, x_temp = 0;
	while (a != 0) {
		n = b / a;
		a_temp = b - n * a;
		b = a;
		a = a_temp;
		x_temp = y - n * x;
		y = x;
		x = x_temp;
	}
	return y % base;
}

void to_associated_mixed_radix_system(int* vector, int vector_length, int* result, int result_length, int modules_offset) {
	modules_offset = modules_offset + 1;
	if (vector_length > 0) {
		int a1 = vector[0];
		result[result_length] = a1;

		int Ai[Modules_count];
		for (int i = 0; i < vector_length - 1; i++)
		{
			Ai[i] = vector[i + 1] - a1;
		}

		int Mn[Modules_count];
		for (int i = modules_offset; i < Modules_count; i++)
		{
			Mn[i - modules_offset] = negative(Modules[modules_offset - 1], Modules[i]);
		}

		int Aj[Modules_count];
		for (int i = 0; i < vector_length - 1; i++)
		{
			Aj[i] = ((Ai[i] * Mn[i]) % Modules[i + modules_offset] + Modules[i + modules_offset]) % Modules[i + modules_offset];
		}

		to_associated_mixed_radix_system(Aj, vector_length - 1, result, result_length + 1, modules_offset);
	}
	else {
		for (int i = 0; i < result_length / 2; i++)
		{
			int result_i = result[i];
			result[i] = result[result_length - i - 1];
			result[result_length - i - 1] = result_i;
		}
	}
}

int compare(rns_t a, rns_t b) {
	if (equal_rns(a, b))
		return 0;

	int vectorA[Modules_count];
	int vectorB[Modules_count];
	int resultA[Modules_count];
	int resultB[Modules_count];
	for (int i = 0; i < Modules_count; i++)
	{
		vectorA[i] = get_rns_number_part(a, i);
		vectorB[i] = get_rns_number_part(b, i);
		resultA[i] = 0;
		resultB[i] = 0;
	}

	to_associated_mixed_radix_system(vectorA, Modules_count, resultA, 0, 0);
	to_associated_mixed_radix_system(vectorB, Modules_count, resultB, 0, 0);

	for (int i = 0; i < Modules_count; i++)
	{
		if (resultA[i] > resultB[i])
			return 1;
		if (resultA[i] < resultB[i])
			return -1;
	}
}

rns_t sqrt_rns(rns_t number) {
	rns_t result = number;
	rns_t xk = number;

	if (compare(number, Zero_rns) <= 0)
		return Zero_rns;

	rns_t two = int_to_rns(2);
	while (true) {
		xk = add_rns_numbers(div_rns_numbers(number, xk), xk);
		xk = div_rns_numbers(xk, two);

		if (compare(result, xk) > 0)
			result = xk;
		else
			return result;
	}
}

uint32_t rns_maxint() {
	return B0 * B1 * B2 * B3 - 1;
}

bool is_positive(rns_t number) {
	return compare(number, Middle_number) <= 0;
}
#include "rns_fp.h"

//1000 in rns
rns_t Default_fixed_point_divider_rns = 4146342980u;
int Default_fixed_point_divider = 1000;
rns_fp_t Zero_rns_fp = { 0, 4146342980u };

rns_fp_t int_to_rns_fp(uint32_t n) {
	rns_fp_t result = { int_to_rns(n), int_to_rns(1) };
	return result;
}

rns_fp_t* int_to_rns_fp_arrays(uint32_t count, uint32_t* numbers) {
	rns_fp_t* result = (rns_fp_t*)malloc(sizeof(rns_fp_t) * count);
	for (int i = 0; i < count; i++) {
		result[i] = int_to_rns_fp(numbers[i]);
	}
	return result;
}

uint32_t rns_fp_to_int(rns_fp_t n) {
	return rns_to_int(div_rns_numbers(n.x, n.divider));
}

uint32_t* rns_fp_to_int_arrays(uint32_t count, rns_fp_t* numbers) {
	uint32_t* result = (uint32_t*)malloc(sizeof(uint32_t) * count);
	for (int i = 0; i < count; i++) {
		result[i] = rns_fp_to_int(numbers[i]);
	}
	return result;
}

double rns_fp_to_double(rns_fp_t n) {
	return (double)rns_to_int(n.x) / rns_to_int(n.divider);
}

rns_fp_t double_to_rns_fp(double n) {
	return (rns_fp_t) { int_to_rns(n * Default_fixed_point_divider), Default_fixed_point_divider_rns };
}

void set_rns_fp_number_part(rns_fp_t* num, uint8_t val, uint8_t base) {
	set_rns_number_part(&(num->x), val, base);
}

void set_rns_fp_divider(rns_fp_t* num, int divider) {
	num->divider = divider;
}

uint8_t get_rns_fp_number_part(rns_fp_t num, uint8_t base) {
	return get_rns_number_part(num.x, base);
}

rns_fp_t add_rns_fp_numbers(rns_fp_t a, rns_fp_t b) {
	if (a.divider != b.divider) {
		exit(0);
	}
	rns_t ans = add_rns_numbers(a.x, b.x);
	return (rns_fp_t) { ans, a.divider };
}

rns_fp_t mul_rns_fp_numbers(rns_fp_t a, rns_fp_t b) {
	if (a.divider != b.divider) {
		exit(0);
	}
	rns_t ans = mul_rns_numbers(a.x, b.x);
	ans = div_rns_numbers(ans, a.divider);
	return (rns_fp_t) { ans, a.divider };
}

rns_fp_t inverse_rns_fp_number(rns_fp_t a) {
	return (rns_fp_t) { inverse_rns_number(a.x), a.divider };
}

rns_fp_t sub_rns_fp_numbers(rns_fp_t x, rns_fp_t y) {
	rns_fp_t iy = inverse_rns_fp_number(y);
	return add_rns_fp_numbers(x, iy);
}

rns_fp_t sum_array_numbers_rns_fp(rns_fp_t* numbers, int numbers_length) {
	rns_fp_t sum = Zero_rns_fp;
	for (int i = 0; i < numbers_length; i++)
	{
		sum = add_rns_fp_numbers(sum, numbers[i]);
	}
	return sum;
}

bool equal_rns_fp(rns_fp_t x, rns_fp_t y) {
	for (int i = 0; i < 4; i++)
	{
		if (get_rns_fp_number_part(x, i) != get_rns_fp_number_part(y, i))
			return false;
	}
	return true;
}

rns_fp_t div_rns_fp_numbers(rns_fp_t a, rns_fp_t b) {
	if (a.divider != b.divider) {
		exit(0);
	}
	rns_t a_rns = mul_rns_numbers(a.x, a.divider);
	return (rns_fp_t) { div_rns_numbers(a_rns, b.x), a.divider };
}

int compare_rns_fp(rns_fp_t a, rns_fp_t b) {
	if (a.divider != b.divider) {
		exit(0);
	}
	return compare(a.x, b.x);
}

rns_fp_t sqrt_rns_fp(rns_fp_t number) {
	rns_fp_t result = number;
	rns_fp_t xk = number;

	if (compare_rns_fp(number, Zero_rns_fp) <= 0)
		return Zero_rns_fp;

	rns_fp_t two = int_to_rns_fp(2);
	while (true) {
		xk = add_rns_fp_numbers(div_rns_fp_numbers(number, xk), xk);
		xk = div_rns_fp_numbers(xk, two);

		if (compare_rns_fp(result, xk) > 0)
			result = xk;
		else
			return result;
	}
}

#define _USE_MATH_DEFINES
#include <stdint.h>
#include <stdio.h>
#include <inttypes.h>
#include <stdbool.h>
#include <math.h>
#include <malloc.h>
#include <stdlib.h>






typedef uint32_t rns_t;

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

uint16_t get_rns_number_part(rns_t num, uint8_t base) {
	uint16_t ans = 0;
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

void set_rns_number_part(rns_t* num, uint16_t val, uint8_t base) {
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



//int ex(int x, int eps)
//{
//	int ret = 1, t = 1, f = 1;
//	int k;
//	for (int n = 1; t > eps; n++)
//	{
//		t = pow(x, n) / f;
//		ret += t;
//		f = k = n + 1;
//		while (k > 1)
//			f *= --k;
//	}
//	return ret;
//}













typedef struct {
	rns_t x;
	rns_t divider;
} rns_fp_t;

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

















int32_t* read_file(char* file_name, int32_t* count)
{
	FILE* myFile;
	errno_t err = fopen_s(&myFile, file_name, "r");

	if (err != 0) {
		printf("Error Reading File\n");
		exit(0);
	}

	fscanf_s(myFile, "%d,", count);

	int32_t* array = (int32_t*)malloc(sizeof(int32_t) * (*count));

	for (int i = 0; i < *count; i++) {
		fscanf_s(myFile, "%d,", &array[i]);
	}

	fclose(myFile);

	return array;
}

uint32_t* apply_filter(uint32_t filter_count, uint32_t* filter, uint32_t signal_count, uint32_t* signal) {
	uint32_t* result = (uint32_t*)malloc(sizeof(uint32_t) * signal_count);

	for (int i = 0; i < signal_count; i++) {
		uint32_t sum = 0;
		for (int j = 0; j < filter_count; j++) {
			if (i - j >= 0) {
				sum += filter[j] * signal[i - j];
			}
		}
		result[i] = sum;
	}

	return result;
}

void print_numbers(uint32_t count, uint32_t* numbers) {
	for (int i = 0; i < count; i++) {
		printf(" %d, ", numbers[i]);
	}
	printf("\n");
	printf("\n");
}

bool check_arrays_equal(uint32_t count, uint32_t* arr1, uint32_t* arr2) {
	for (int i = 0; i < count; i++) {
		if (arr1[i] != arr2[i])
			return false;
	}
	return true;
}









rns_t* apply_filter_rns(uint32_t filter_count, rns_t* filter, uint32_t signal_count, rns_t* signal) {
	rns_t* result = (rns_t*)malloc(sizeof(rns_t) * signal_count);

	for (int i = 0; i < signal_count; i++) {
		rns_t sum = 0;
		for (int j = 0; j < filter_count; j++) {
			if (i - j >= 0) {
				rns_t temp = mul_rns_numbers(filter[j], signal[i - j]);
				sum = add_rns_numbers(sum, temp);
			}
		}
		result[i] = sum;
	}

	return result;
}




char* int32ToBinary(int n)
{
	char* result = (char*)malloc(sizeof(char) * 33);

	for (int i = 0; i < 32; i++)
		result[31 - i] = (n & (1 << i)) != 0 ? '1' : '0';
	result[32] = NULL;

	return result;
}

void generatefilterCoefficients(char* coefs_input_file_name, char* coefs_file_name, char* coefs_file_name_rns) {
	remove(coefs_file_name);
	remove(coefs_file_name_rns);

	int32_t coefsCount = 0;
	int32_t* coefs = read_file(coefs_input_file_name, &coefsCount);

	FILE* coefs_file;
	fopen_s(&coefs_file, coefs_file_name, "a");
	FILE* coefs_file_rns;
	fopen_s(&coefs_file_rns, coefs_file_name_rns, "a");

	for (size_t j = 0; j < coefsCount; j++)
	{
		fprintf(coefs_file, "%s\n", int32ToBinary(coefs[j]));
		fprintf(coefs_file_rns, "%s\n", int32ToBinary((int32_t)int_to_rns((uint32_t)coefs[j])));
	}

	fclose(coefs_file);
	fclose(coefs_file_rns);
}

void generateTwiddleFactors(int signalsCount, int scaling, char* cos_file_name, char* sin_file_name, char* cos_file_name_rns, char* sin_file_name_rns) {
	remove(cos_file_name);
	remove(sin_file_name);
	remove(cos_file_name_rns);
	remove(sin_file_name_rns);

	FILE* cosFile;
	fopen_s(&cosFile, cos_file_name, "a");
	FILE* sinFile;
	fopen_s(&sinFile, sin_file_name, "a");
	FILE* cosFileRns;
	fopen_s(&cosFileRns, cos_file_name_rns, "a");
	FILE* sinFileRns;
	fopen_s(&sinFileRns, sin_file_name_rns, "a");

	for (size_t i = 0; i < signalsCount; i++)
	{
		for (size_t j = 0; j < signalsCount; j++)
		{
			int32_t re = cos(-2 * M_PI * i * j / signalsCount) * (1 << scaling);
			int32_t im = sin(-2 * M_PI * i * j / signalsCount) * (1 << scaling);

			fprintf(cosFile, "%s\n", int32ToBinary(re));
			fprintf(sinFile, "%s\n", int32ToBinary(im));
			fprintf(cosFileRns, "%s\n", int32ToBinary((int32_t)int_to_rns((uint32_t)re)));
			fprintf(sinFileRns, "%s\n", int32ToBinary((int32_t)int_to_rns((uint32_t)im)));
		}
	}

	fclose(cosFile);
	fclose(sinFile);
	fclose(cosFileRns);
	fclose(sinFileRns);
}

int main(int argc, char* argv[])
{
	//rns_t q = int_to_rns(-5);
	//int q2 = rns_to_int(q);

	/*int signalsCount = atoi(argv[1]);
	int scaling = atoi(argv[2]);
	char* cos_file_name = argv[3];
	char* sin_file_name = argv[4];
	char* sin_file_name_rns = argv[5];
	char* cos_file_name_rns = argv[6];

	generateTwiddleFactors(signalsCount, scaling, cos_file_name, sin_file_name, sin_file_name_rns, cos_file_name_rns);*/


	/*int32_t* signalsCount=0;
	int32_t* signals = read_file("filter.txt", &signalsCount);
	print_numbers(6, signals);*/

	char* coefs_input_file_name = argv[1];
	char* coefs_file_name = argv[2];
	char* coefs_file_name_rns = argv[3];
	generatefilterCoefficients(coefs_input_file_name, coefs_file_name, coefs_file_name_rns);

	/*rns_fp_t i = double_to_rns_fp(5.6);
	rns_fp_t k = double_to_rns_fp(10.1);
	rns_fp_t rns_fp_res = div_rns_fp_numbers(k, i);
	double res_div = rns_fp_to_double(rns_fp_res);
	rns_fp_res = mul_rns_fp_numbers(k, i);
	double res_mul = rns_fp_to_double(rns_fp_res);
	printf("division result : %f\n", res_div);
	printf("multiplication result : %f\n", res_mul);*/



	//rns_t a1 = int_to_rns(28);
	//rns_t a2 = int_to_rns(93);
	//rns_t a1minusa2 = sub_rns_numbers(a1, a2);

	//bool a1pos = is_positive(a1);
	//bool a1m = is_positive(a1minusa2);



	/*uint32_t filter_count = 0;
	uint32_t* filter = read_file("filter.txt", &filter_count);
	rns_t* filter_rns = int_to_rns_arrays(filter_count, filter);
	printf("Filter: ");
	print_numbers(filter_count, filter);

	uint32_t signal_count = 0;
	uint32_t* signal = read_file("signal.txt", &signal_count);
	rns_t* signal_rns = int_to_rns_arrays(signal_count, signal);
	printf("Input signals: ");
	print_numbers(signal_count, signal);

	rns_t* result_signal_rns = apply_filter_rns(filter_count, filter_rns, signal_count, signal_rns);
	uint32_t* result_signal_rns_converted = rns_to_int_arrays(signal_count, result_signal_rns);
	printf("Output signals: ");
	print_numbers(signal_count, result_signal_rns_converted);*/







	//uint32_t a = 0;
	//uint32_t b = 2;
	//rns_t a1 = int_to_rns(a);
	//rns_t b1 = int_to_rns(b);
	//int compare_result = compare(a1, b1);
	//printf("compare_result: %d\n", compare_result);


	//uint32_t a2 = 987654321;
	//uint32_t b2 = 123456;
	//rns_t a3 = int_to_rns(a2);
	//rns_t b3 = int_to_rns(b2);
	//rns_t div_result_rns = div_rns_numbers(a3, b3);
	//int div_result = rns_to_int(div_result_rns);
	//printf("div_result: %d", div_result);







	//long sqrtRes = sqrt_cpu_newton(6090);
	//printf("div_result: %d\n", sqrtRes);

	//rns_t a10 = int_to_rns(6084);
	//rns_t sqrtRes_rns = sqrt_rns(a10);
	//int res = rns_to_int(sqrtRes_rns);
	//printf("div_result: %d\n", res);





	//int res1 = ex(4, -5);
	//printf("div_result: %d\n", pow(3,3));






	//rns_fp_t i = double_to_rns_fp(5.6);
	//rns_fp_t k = double_to_rns_fp(10.1);
	//rns_fp_t rns_fp_res = div_rns_fp_numbers(k, i);
	//double rns_fp_int_res = rns_fp_to_double(rns_fp_res);
	//rns_fp_t rns_fp_int_res2 = mul_rns_fp_numbers(k, i);
	//double rns_fp_int_res3 = rns_fp_to_double(rns_fp_int_res2);



	return 0;
}
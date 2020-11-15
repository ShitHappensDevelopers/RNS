#include <stdint.h>
#include<stdio.h>
#include <inttypes.h>
#include <stdint.h>
#include <stdbool.h>

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

void print_rns_number(rns_t n) {
	uint16_t n0, n1, n2, n3;
	n0 = (n & M0) >> S0;
	n1 = (n & M1) >> S1;
	n2 = (n & M2) >> S2;
	n3 = (n & M3) >> S3;
	printf("%02x %02x %02x %02x", n0, n1, n2, n3);
}

rns_t int_to_rns(uint32_t n) {
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

void set_rns_number_part(rns_t* num, uint16_t val, uint8_t base) {
	switch (base) {
	case 0: *num |= (uint32_t)val << S0; break;
	case 1: *num |= (uint32_t)val << S1; break;
	case 2: *num |= (uint32_t)val << S2; break;
	case 3: *num |= (uint32_t)val << S3; break;
	default: break;
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




#define A0 3021585941u
#define A1 1099363434u
#define A2 1663315003u
#define A3 952860257u

uint32_t rns_to_int(rns_t n) {
	uint64_t ans;
	ans = (uint64_t)A0 * (uint64_t)get_rns_number_part(n, 0) +
		(uint64_t)A1 * (uint64_t)get_rns_number_part(n, 1) +
		(uint64_t)A2 * (uint64_t)get_rns_number_part(n, 2) +
		(uint64_t)A3 * (uint64_t)get_rns_number_part(n, 3);
	return (uint32_t)(ans % (rns_maxint() + 1u));
}

uint32_t* rns_to_int_arrays(uint32_t count, rns_t* numbers) {
	uint32_t* result = (uint32_t*)malloc(sizeof(uint32_t) * count);
	for (int i = 0; i < count; i++) {
		result[i] = rns_to_int(numbers[i]);
	}
	return result;
}

uint32_t rns_maxint() {
	return B0 * B1 * B2 * B3 - 1;
}






typedef uint64_t rbr_t;

rbr_t to_rbr(int32_t n) {
	rbr_t ans = 0;
	uint8_t i, s = 0;
	if (n < 0) {
		s = 1;
		n = abs(n);

	}
	for (i = 0; i < 32; i++) {
		ans += ((n & 1) ? 3 : 1) * (1llu << (2 * i));
		n >>= 1;
	}
	return (s) ? ~ans : ans;
}

int8_t rbr_digit(uint8_t b) {
	switch (b) {
	case 0: return -1;
	case 1: return 0;
	case 2: return 0;
	case 3: return 1;
	}
}

int32_t rbr_to_int(rbr_t n) {
	int64_t ans = 0;
	uint8_t i;
	for (i = 0; i < 32; i++) {
		ans += rbr_digit(n & 3) * (1 << i);
		n >>= 2;
	}
	return (int32_t)ans;
}

int8_t rbr_enc(int8_t s) {
	switch (s) {
	case -1: return 0;
	case 0: return 1;
	case 1: return 3;
	}
}

int8_t rbr_add_partial(rbr_t s, rbr_t t) {
	int8_t z = rbr_digit(s & 3) + rbr_digit(t & 3);
	return rbr_enc(z);
}

int8_t rbr_add_st(rbr_t x, rbr_t y, int8_t* s, int8_t* t) {
	int8_t dx = rbr_digit(x & 3);
	int8_t dy = rbr_digit(y & 3);
	if ((dx == -1) && (dy == -1)) { *t = -1; *s = 0; }
	if ((dx == -1) && (dy == 0)) { *t = -1; *s = 1; }
	if ((dx == 0) && (dy == -1)) { *t = 0; *s = -1; }
	if ((dx == -1) && (dy == 1)) { *t = 0; *s = 0; }
	if ((dx == 1) && (dy == -1)) { *t = 0; *s = 0; }
	if ((dx == 0) && (dy == 0)) { *t = 0; *s = 0; }
	if ((dx == 0) && (dy == 1)) { *t = 0; *s = 1; }
	if ((dx == 1) && (dy == 0)) { *t = 1; *s = -1; }
	if ((dx == 1) && (dy == 1)) { *t = 1; *s = 0; }
}

rbr_t rbr_add(rbr_t x, rbr_t y) {
	rbr_t ans = 0, s = 0, t = 0;
	int8_t ds, dt;
	uint8_t i;
	for (i = 0; i < 32; i++) {
		rbr_add_st(x, y, &ds, &dt);
		s += ds * (1llu << (i * 2));
		t += dt * (1llu << (i * 2));
		x >>= 2;
		y >>= 2;
	}
	t <<= 2;
	for (i = 0; i < 32; i++) {
		ans += rbr_add_partial(s, t) * (1llu << (2 * i));
		s >>= 2;
		t >>= 2;
	}
	return ans;
}

rbr_t rbr_sub(rbr_t x, rbr_t y) {
	return rbr_add(x, ~y);
}





uint32_t* read_file(char* file_name, uint32_t* count)
{
	FILE* myFile;
	errno_t err = fopen_s(&myFile, file_name, "r");

	if (err != 0) {
		printf("Error Reading File\n");
		exit(0);
	}

	fscanf_s(myFile, "%d,", count);

	uint32_t* array = (uint32_t*)malloc(sizeof(uint32_t) * (*count));

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

void print_numbers(uint32_t count, uint32_t* numbers) {
	for (int i = 0; i < count; i++) {
		printf("Number is: %d\n", numbers[i]);
	}
	printf("\n");
}

bool check_arrays_equal(uint32_t count, uint32_t* arr1, uint32_t* arr2) {
	for (int i = 0; i < count; i++) {
		if (arr1[i] != arr2[i])
			return false;
	}
	return true;
}

main()
{
	//printf("Hello World!\n");

	//uint32_t i1 = 10;
	//uint32_t i2 = 5;
	//rns_t rns1 = int_to_rns(i1);
	//rns_t rns2 = int_to_rns(i2);
	//rns_t sum = mul_rns_numbers(rns1, rns2);
	//uint32_t result = to_int(sum);

	//printf("%" PRIu32 "\n", result);



	uint32_t filter_count = 0;
	uint32_t* filter = read_file("filter.txt", &filter_count);
	rns_t* filter_rns = int_to_rns_arrays(filter_count, filter);
	print_numbers(filter_count, filter);

	uint32_t signal_count = 0;
	uint32_t* signal = read_file("signal.txt", &signal_count);
	rns_t* signal_rns = int_to_rns_arrays(signal_count, signal);
	print_numbers(signal_count, signal);

	uint32_t* result_signal = apply_filter(filter_count, filter, signal_count, signal);
	print_numbers(signal_count, result_signal);
	rns_t* result_signal_rns = apply_filter_rns(filter_count, filter_rns, signal_count, signal_rns);
	uint32_t* result_signal_rns_converted = rns_to_int_arrays(signal_count, result_signal_rns);
	print_numbers(signal_count, result_signal_rns_converted);

	bool are_equal = check_arrays_equal(signal_count, result_signal, result_signal_rns_converted);
	if (are_equal)
		printf("ARE EQUAL!!!");
}
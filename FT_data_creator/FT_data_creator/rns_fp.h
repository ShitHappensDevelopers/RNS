#pragma once
#include "rns.h"

typedef struct {
	rns_t x;
	rns_t divider;
} rns_fp_t;

rns_fp_t int_to_rns_fp(uint32_t n);
rns_fp_t* int_to_rns_fp_arrays(uint32_t count, uint32_t* numbers);
uint32_t rns_fp_to_int(rns_fp_t n);
uint32_t* rns_fp_to_int_arrays(uint32_t count, rns_fp_t* numbers);
double rns_fp_to_double(rns_fp_t n);
rns_fp_t double_to_rns_fp(double n);
void set_rns_fp_number_part(rns_fp_t* num, uint8_t val, uint8_t base);
uint8_t get_rns_fp_number_part(rns_fp_t num, uint8_t base);
void set_rns_fp_divider(rns_fp_t* num, int divider);
rns_fp_t add_rns_fp_numbers(rns_fp_t a, rns_fp_t b);
rns_fp_t mul_rns_fp_numbers(rns_fp_t a, rns_fp_t b);
rns_fp_t inverse_rns_fp_number(rns_fp_t a);
rns_fp_t sub_rns_fp_numbers(rns_fp_t x, rns_fp_t y);
rns_fp_t div_rns_fp_numbers(rns_fp_t a, rns_fp_t b);
bool equal_rns_fp(rns_fp_t x, rns_fp_t y);
int compare_rns_fp(rns_fp_t a, rns_fp_t b);
rns_fp_t sqrt_rns_fp(rns_fp_t number);
rns_fp_t sum_array_numbers_rns_fp(rns_fp_t* numbers, int numbers_length);
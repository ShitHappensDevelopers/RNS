#pragma once
#include <stdint.h>
#include <stdbool.h>

typedef uint32_t rns_t;

uint8_t get_rns_number_part(rns_t num, uint8_t base);
void set_rns_number_part(rns_t* num, uint8_t val, uint8_t base);

rns_t int_to_rns(uint32_t n);
rns_t* int_to_rns_arrays(uint32_t count, uint32_t* numbers);
uint32_t rns_to_int(rns_t n);
uint32_t* rns_to_int_arrays(uint32_t count, rns_t* numbers);

rns_t inverse_rns_number(rns_t y);
rns_t add_rns_numbers(rns_t x, rns_t y);
rns_t mul_rns_numbers(rns_t x, rns_t y);
rns_t sub_rns_numbers(rns_t x, rns_t y);
rns_t div_rns_numbers(rns_t a, rns_t b);
rns_t sqrt_rns(rns_t number);

bool equal_rns(rns_t x, rns_t y);
int compare(rns_t a, rns_t b);

rns_t sum_array_numbers_rns(rns_t* numbers, int numbers_length);
uint32_t rns_maxint();
bool is_positive(rns_t number);

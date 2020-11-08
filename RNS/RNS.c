#include <stdint.h>
#include<stdio.h>

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

main()
{
	printf("Hello World!\n");
}

void pp(rns_t n) {
	uint16_t n0, n1, n2, n3;
	n0 = (n & M0) >> S0;
	n1 = (n & M1) >> S1;
	n2 = (n & M2) >> S2;
	n3 = (n & M3) >> S3;
	printf("%02x %02x %02x %02x", n0, n1, n2, n3);
}

rns_t to_rns(uint32_t n) {
	rns_t ans = 0;
	ans |= (n % B0) << S0;
	ans |= (n % B1) << S1;
	ans |= (n % B2) << S2;
	ans |= (n % B3) << S3;
	return ans;
}

void rns_set(rns_t* num, uint16_t val, uint8_t base) {
	switch (base) {
	case 0: *num |= (uint32_t)val << S0; break;
	case 1: *num |= (uint32_t)val << S1; break;
	case 2: *num |= (uint32_t)val << S2; break;
	case 3: *num |= (uint32_t)val << S3; break;
	default: break;
	}
}

uint16_t rns_get(rns_t num, uint8_t base) {
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

rns_t rns_add(rns_t x, rns_t y) {
	rns_t ans = 0;
	rns_set(&ans, (rns_get(x, 0) + rns_get(y, 0)) % B0, 0);
	rns_set(&ans, (rns_get(x, 1) + rns_get(y, 1)) % B1, 1);
	rns_set(&ans, (rns_get(x, 2) + rns_get(y, 2)) % B2, 2);
	rns_set(&ans, (rns_get(x, 3) + rns_get(y, 3)) % B3, 3);
	return ans;
}

rns_t rns_mul(rns_t x, rns_t y) {
	rns_t ans = 0;
	rns_set(&ans, (rns_get(x, 0) * rns_get(y, 0)) % B0, 0);
	rns_set(&ans, (rns_get(x, 1) * rns_get(y, 1)) % B1, 1);
	rns_set(&ans, (rns_get(x, 2) * rns_get(y, 2)) % B2, 2);
	rns_set(&ans, (rns_get(x, 3) * rns_get(y, 3)) % B3, 3);
	return ans;
}

rns_t rns_inverse(rns_t y) {
	rns_t ans = 0;
	rns_set(&ans, B0 - rns_get(y, 0), 0);
	rns_set(&ans, B1 - rns_get(y, 1), 1);
	rns_set(&ans, B2 - rns_get(y, 2), 2);
	rns_set(&ans, B3 - rns_get(y, 3), 3);
	return ans;
}

rns_t rns_sub(rns_t x, rns_t y) {
	rns_t ans = 0, iy = rns_inverse(y);
	rns_set(&ans, (rns_get(x, 0) + rns_get(iy, 0)) % B0, 0);
	rns_set(&ans, (rns_get(x, 1) + rns_get(iy, 1)) % B1, 1);
	rns_set(&ans, (rns_get(x, 2) + rns_get(iy, 2)) % B2, 2);
	rns_set(&ans, (rns_get(x, 3) + rns_get(iy, 3)) % B3, 3);
	return ans;
}




#define A0 3021585941u
#define A1 1099363434u
#define A2 1663315003u
#define A3 952860257u

uint32_t to_int(rns_t n) {
	uint64_t ans;
	ans = (uint64_t)A0 * rns_get(n, 0) +
		(uint64_t)A1 * rns_get(n, 1) +
		(uint64_t)A2 * rns_get(n, 2) +
		(uint64_t)A3 * rns_get(n, 3);
	return (uint32_t)(ans % (rns_maxint() + 1));
}

uint32_t rns_maxint() {
	return B0 * B1 * B2 * B3 - 1;
}





#include <stdint.h>
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

int32_t to_int(rbr_t n) {
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
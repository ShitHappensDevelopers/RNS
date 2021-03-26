#include "rns.h"
#define _USE_MATH_DEFINES
#include <stdio.h>
#include <math.h>

char* int32ToBinary(int n)
{
	char* result = (char*)malloc(sizeof(char) * 33);

	for (int i = 0; i < 32; i++)
		result[31 - i] = (n & (1 << i)) != 0 ? '1' : '0';
	result[32] = NULL;

	return result;
}

void generateTwiddleFactors(int signalsCount, int scaling, char* cos_file_name, char* sin_file_name, char* cos_file_name_rns, char* sin_file_name_rns)
{
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
	int signalsCount = atoi(argv[1]);
	int scaling = atoi(argv[2]);
	char* cos_file_name = argv[3];
	char* sin_file_name = argv[4];
	char* sin_file_name_rns = argv[5];
	char* cos_file_name_rns = argv[6];

	generateTwiddleFactors(signalsCount, scaling, cos_file_name, sin_file_name, sin_file_name_rns, cos_file_name_rns);

	return 0;
}
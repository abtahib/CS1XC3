#include<stdio.h>

int main() {

	for (int i = 2; i < 85; i+=2) {
		if (168%i == 0) {
			int j = 168/i;
			if (j < i)
				continue;
			int m = (i+j)/2;
			int n = (i-j)/2;
			int x1 = m*m - 268;
			int x2 = n*n - 100;
			if (x1 == x2)
				printf("%d\n",x1);
		}
	}

	return 0;

}


#include<stdio.h>

int main() {

	for (int num = 1; num < 1000; num++) {
		int sum = 0;
		if (num == 1) continue;
		for (int i = 1; i*i <= num; i++) { // faster substitute for i < sqrt(num)
			if (num%i == 0) {
				if (i*i != num) {
					sum += i;
					if (i != 1)
						sum += (num/i);
				} else {
					sum += i;
				}
			}
		}

		if (sum == num) { printf("%d\n",num); }

	}


	return 0;

}

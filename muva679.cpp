#include <cstdio>
#include <cstring>
int main() {
	int n;
	while(scanf("%d", &n) != EOF && n != -1) {
		int d, l;
		for(int i = 1; i <= n; ++i) {
			scanf("%d %d", &d, &l);
			int k = 1;
			for(int j = 0; j < d - 1; ++j) {
				if(l % 2 == 0) {
					k = k * 2 + 1;
					l /= 2;
				}
				else {
					k = k * 2;
					l = l / 2 + 1;
				}
			}
			printf("%d\n", k);
		}
	}
	return 0;
}

#include <cstdio>
#include <cmath>
#include <cstring>
const int maxn = 20;
int nod[22];
int main() {
	int n, h;
	while((h = scanf("%d", &n)) != EOF && n != -1) {
		for(int i = 1; i <= n; ++i) {
			int d, l;
			scanf("%d%d", &d, &l);
			int temp = (1 << 20) - 1, k = 1;
			for(int j = 1; j <= l; ++j) {
				k = 1;
				
				for(;;) {
					if(nod[k]){
						k = 2 * k + 1;
						nod[k] = !nod[k];
					}
					/*
					else {
						k = 2 * k;
						nod[k] = !nod[k];
					}
				*/	
					if(k > 20) break;
				}	
				
			}
			printf("%d\n", k / 2);
		}
	}
	return 0;

}

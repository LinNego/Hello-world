#include <iostream>
#include <cstdio>
#include <algorithm>
using namespace std;
const int maxn = 100000 + 10;
int L[maxn], R[maxn];
inline void
link(int l, int r) {
	L[r] = l;
	R[l] = r;
}
inline void 
ini(int n) {
	for(int i = 1; i <= n; ++i) {
		L[i] = i - 1;
		R[i] = (i + 1) % (n + 1);
	}
	L[0] = n, R[0] = 1;
}

int main() {
	int n, m;
    int num = 0;
	while(cin >> n >> m) {
		ini(n);
		bool sign = 0;
		for(int i = 0; i != m; ++i) {
			int cmd, x, y;
			scanf("%d", &cmd);
			if(cmd == 4) {
				sign = !sign;
				continue;
			}
			else {
				scanf("%d %d", &x, &y);

				if(cmd == 3 && R[x] == y) {
					swap(x, y);
				}
				if(cmd != 3 && sign) {
					cmd = 3 - cmd;
				}
				if(cmd == 1 && L[y] == x) continue;
				if(cmd == 2 && R[y] == x) continue;

			}
			int lx = L[x], rx = R[x], ly = L[y], ry = R[y];
			if(cmd == 1) {
				link(lx, rx);
				link(ly, x);
				link(x, y);
				continue;
			}
			if(cmd == 2) {
				link(lx, rx);
				link(y, x);
				link(x, ry);
				continue;
			}
			if(cmd == 3 && ry == x) {
				
				link(ly, x);
				link(x, y);
				link(y, rx);
			}
			else {
				link(lx, y);
				link(y, rx);
				link(ly, x);
				link(x, ry);
			}

		}
		int b = 0;
		long long ans = 0;
		for(int i = 1; i <= n; ++i) {
			b = R[b];
			if(i % 2 == 1) {
				ans += b;
			}
		}
		if(sign && n % 2 == 0) {
			ans = (long long)n * (n + 1) / 2 - ans;
		}
		printf("Case %d: %lld\n", ++num, ans);
	}
	return 0;
}

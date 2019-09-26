#include <iostream>
#include <cstdio>
#include <cstring>
using namespace std;
const int maxn = 1000 + 10;
const int len = 32;
int cnt = 0, pic[len][len];
string s;
void solve(int r, int c, int w) {
	char ch;
	cin >> ch;
	if(ch == 'p') {
		int q = w / 2;
		solve(r, c + q, q);
		solve(r, c, q);
		solve(r + q, c, q);
		solve(r + q, c + q, q);
	}
	else if(ch == 'f') {
		int t1 = r + w, t2 = c + w;
		for(int i = r; i < t1; ++i) {
			for(int j = c; j < t2; ++j) {
				if(!pic[i][j]) {
					pic[i][j] = 1;
					++cnt;
				}
			}
		}
	}
}
int main() {
	int n;
	cin >> n;
	while(n--) {
		memset(pic, 0, sizeof(pic));
		cnt = 0;
		for(int i = 0; i < 2; ++i) {
			solve(0, 0, 32);
			getchar();
		}
//		cout << cnt << endl;
		printf("There are %d black pixels.\n", cnt);
	}
}

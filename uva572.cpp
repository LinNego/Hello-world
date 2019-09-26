#include <cstdio>
#include <cstring>
const int max_r = 100, max_c = 100;
bool visd[max_r][max_c];
char pic[max_r][max_c];
int m, n;
inline bool
judge(int r, int c) {
	bool j =  r < 0 || r >= m || c < 0 || c >= n, p = false;
	if(j) return false;
	if(visd[r][c] || pic[r][c] != '@') return false;
	return true;
}
void dfs(int r, int c) {
	visd[r][c] = true;
	for(int i = -1; i <= 1; ++i) {
		for(int j = -1; j <= 1; ++j) {
			if(judge(r + i, c + j) && (i != 0 || j != 0)) dfs(r + i, c + j);
		}
	}
}
int main() {
	while(scanf("%d %d", &m, &n) && m && n) {
		memset(visd, 0, sizeof(visd));
		int cnt = 0;
		for(int i = 0; i < m; ++i)	{
			scanf("%s", pic[i]);
		}
		for(int i = 0; i < m; ++i) {
			for(int j = 0; j < n; ++j) {
				if(judge(i, j)) {
					dfs(i, j);
					++cnt;
				}
			}
		}
		printf("%d\n", cnt);
		
	}
	return 0;
}

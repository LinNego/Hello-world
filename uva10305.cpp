#include <cstdio>
#include <iostream>
#include <cstring>
using namespace std;
const int maxn = 100 + 1;
int graph[maxn][maxn];
int vis[maxn];
int t[maxn], now, n, m;
bool dfs(int u) {
	vis[u] = -1; //必须要有一个标志位，在拓扑中用来标志是否回到了在该拓扑序中已经访问过的结点
	for(int v = 1; v <= n; ++v) {
		if(graph[u][v]) {
			if(vis[v] < 0) return false;
			if(!vis[v] && !dfs(v)) return false;
		}
	}
	vis[u] = 1;
	t[now--] = u;
//	printf("%d\n", u);
	return true;
}
bool start() {
	memset(vis, 0, sizeof(vis));
	now = n;	
	for(int u = 1; u <= n; ++u) {
		if(!vis[u]) {
			if(!dfs(u)) return false;
		}
	}
	return true;
}

int main() {
	while(scanf("%d %d", &n, &m) != EOF && (n != 0 ||  m != 0)) {
		int x, y;
		memset(graph, 0, sizeof(graph));
		for(int i = 0; i < m; ++i) {
			scanf("%d %d", &x, &y);
			graph[x][y] = 1;
		}
		if(start()) {
			for(int i = 1; i <= n; ++i) {
				printf("%d ", t[i]);
			}
			printf("\n");
		}
	}
	return 0;
}

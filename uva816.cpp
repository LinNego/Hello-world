#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <algorithm>
#include <queue>
#include <vector>
using namespace std;
const int maxn = 10;
const int Max = ~(1 << 31);
const char dirs[] = "NESW";
const char tune[] = "FLR";
const int drs[4] = {-1, 0, 1, 0};
const int dc[4] = {0, 1, 0, -1};
int had_edge[maxn][maxn][4][3];
int dist[maxn][maxn][4];
struct node{
	int r, c, dir;
	node(int r = 0, int c = 0, int dir = 0): r(r), c(c), dir(dir){

	}
};
node p[maxn][maxn][4];
int change_dir(char c) {
	return strchr(dirs, c) - dirs;
}
int change_tune(char c) {
	return strchr(tune, c) - tune;
}
node walk(const node &n, int tune) {
	int dir = n.dir; 
	if(tune = 1) dir = (dir + 3) % 4;
	if(tune = 2) dir = (dir + 1) % 4;
	return node(n.r + drs[dir], n.c + dc[dir], dir);
}
int zr, zc, er, ec, br, bc, dr;
char bd, ch[99];
bool sign;
bool read() {
	scanf("%s",ch);
	if(ch[0] == 'E') return false;
	puts(ch);
	if(ch[0] == 'N') sign = 1;
	scanf("%d %d %c %d %d", &zr, &zc, &bd, &er, &ec);
	dr = change_dir(bd);
	br = zr + drs[dr];
	bc = zc + dc[dr];
	memset(had_edge, 0, sizeof(had_edge));
	while(1) {
		int x, y;
		char buf[99];
		scanf("%d", &x);
		if(x == 0) break;
		scanf("%d", &y);
		while(scanf("%s", buf) && ch[0] != '*') {
			int temp = change_dir(ch[0]);
			int len = strlen(buf);
			for(int i = 1; i != len; ++i) {
				int temp2 = change_tune(ch[i]);
				had_edge[x][y][temp][temp2] = 1;
			}
		}
	}
	return true;;	
}
/*
void print_ans(node u) {
	vector<node> ans;
	for(;;) {
		ans.push_back(u);
		if(dist[u.r][u.c][u.dir] == 0) break;
		u = p[u.r][u.c][u.dir];
	}
	ans.push_back(node(zr, zc));
	int len = ans.size();
	int cnt = 0;
	for(int i = len - 1; len >= 0; --i) {
		if(cnt % 10) printf(" ");
		printf(" (%d,%d)", ans[i].r, ans[i].c);
		if(++cnt % 10 == 0) printf("\n");
	}
	
}
*/
bool inside(int r, int c) {
	if(r <= 9 && r >= 1 && c <= 9 && c >= 1) return true;
	return false;
}
/*
void solve() {
	queue<node> q;	
	node u(br, bc, dr);
	memset(dist, -1, sizeof(dist));
	//distance(u.r, u.c, u.dir) = 1;
	dist[u.r][u.c][u.dir] = 0;
	q.push(u);
	while(!q.empty()) {
		node u = q.front();
		q.pop();
		if(u.r == er && u.c == ec) {
//			print_ans(temp);
			return ;
		}
		for(int i = 0; i < 3; ++i) {
			node v = walk(u, i);
			if(had_edge[u.r][u.c][u.dir][i] && inside(v.r, v.c) && dist[v.r][v.c][v.dir] < 0) {
				dist[v.r][v.c][v.dir] = dist[u.r][u.c][u.dir] + 1;
				p[v.r][v.c][v.dir] = u;
				q.push(v);
			}

		}
	}
	printf("No Solution Possible\n");
}
*/
int main() {
	while(read()) {
	//	solve();
	}
	return 0;
}


#include <cstdio>
bool solve(int &w) {
	int w1, d1, w2, d2;
	scanf("%d %d %d %d", &w1, &d1, &w2, &d2);
	bool left = true, right = true;
	if(!w1) left = solve(w1);
	if(!w2) right = solve(w2);
	w = w1 + w2;
	return left && right && (w1 * d1 == w2 * d2);
}
int main() {
	int t, w;
	scanf("%d", &t);
	while(t--) {
		printf("%s\n", solve(w) ? "YES": "NO");
		if(t) putchar('\n');
	}
	return 0;
}

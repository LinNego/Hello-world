#include <iostream>
#include <sstream>
#include <cstring>
using namespace std;
const int maxn = 10000 + 10;
int Left[maxn], Right[maxn], value[maxn];
int io[maxn], po[maxn];
int root, cnt;
void ini() {
	memset(Left, 0, sizeof(Left));
	memset(Right, 0, sizeof(Right));
	memset(value, 0, sizeof(value));
}
int partition(int left, int right, int value) {
	for(int i = left; i <= right; ++i) {
		if(io[i] == value) return i;
	}
}
void build(int left, int right, int v) {
	if(left > right) return ;

}

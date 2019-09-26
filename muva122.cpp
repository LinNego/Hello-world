#include <algorithm>
#include <cstring>
#include <iostream>
#include <cstdio>
#include <queue>
#include <vector>
using namespace std;
const int  maxn = 256 + 10;
int cnt = 1;
int l[maxn], r[maxn],value[maxn], root = 1;
bool had[maxn], fail;
void ini() {
	cnt = 1;
	root = 1;
	memset(had, false, sizeof(had));
	memset(value, 0, sizeof(value));
	memset(l, 0, sizeof(l));
	memset(r, 0, sizeof(r));
}
void newtree() {
	l[root] =r[root] = 0;
	had[root] = false;
}
int newnode() {
	int u = ++cnt;
	l[u] =r[u] = 0;
	had[u] = false;
	return u;
}

void addnode(int v, string path) {
	int ri = root;
	int len = path.length();
	for(int i = 0; i < len; ++i) {
		int temp;
		if(path[i] == 'L') {
			temp =l[ri];
			if(temp == 0){
				temp = newnode();
				l[ri] = temp;
				ri = temp;
			}
			else {
				ri = temp;
			}
		}
		else if(path[i] == 'R') {
			temp =r[ri];
			if(temp == 0) {
				temp = newnode();
				r[ri] = temp;
				ri = temp;
			}
			else {
				ri = temp;
			}
		}
	}
	if(!had[ri]) {
		value[ri] = v;
		had[ri] = true;

	}
	else fail = true;
}
bool build() {
	fail = false;
	string s, com("()");
	ini();
	newtree();
	bool sign = 1;
	while(cin >> s && s != com) {
		string num, path;
		int v, t = s.find(','), p = s.find(')');
		num = s.substr(1, t - 1);
		v = stoi(num);
		path = s.substr(t + 1, p - t - 1);
		addnode(v, path);
	}
	if(s == com) return true;
	else return false;			
		
	
}
bool bfs(vector<int> &v) {
	int u = root;		
	queue<int> q;
	q.push(root);
	while(!q.empty()) {
		int t = q.front();
		q.pop();
		if(!had[t]) {
			return false;
		}
		else v.push_back(value[t]);
		if(l[t] != 0) {
			q.push(l[t]);
		}
		if(r[t] != 0) {
			q.push(r[t]);
		}
	}
	return true;
}
int main() {
	while(build()) {
		vector<int> t;
		bool b = bfs(t);
		if(!b) fail = true;
		if(fail) cout << "not complete";
		else {
			for(int i = 0; i < cnt; ++i) {
				if(i == 0) cout << t[i];
				else cout << " " << t[i];
			}
		}
		cout << endl;	
	}
	return 0;
}


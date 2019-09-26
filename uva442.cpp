#include <iostream>
#include <stack>
#include <sstream>
#include <cctype>
using namespace std;
struct matrix {
	matrix():row(0), col(0){};
	int row,col;
};
matrix m[26 + 1];
int main(){
	int n;
	cin >> n;
	/*
	while(n--) {
		string line;
		char s;	
		getline(cin, line);
		stringstream l(line);
		l >> s;
		int tem = s - 'A';
		l >> s;
		m[tem].row = s - '0';
		l >> s;
		m[tem].col = s - '0';

	}
	*/
	for(int i = 0; i < 9; ++i) {
		char ch;
		cin >> ch;
		int tem = ch - 'A';
		int r, c;
		cin >> r >> c;
		m[tem].row = r;
		m[tem].col = c;
	}
	getchar();
	string exp;
	while(getline(cin, exp)) {
		stack<char> c;
		int len = exp.length();
		int num = 0;
		bool sign = 0;
		for(int i = 0; i < len; ++i) {
			if(exp[i] == '(') continue;
			if(exp[i] == ')') {
				int a = c.top() - 'A';
				c.pop();
				int b = c.top() - 'A';
				c.pop();
				if(m[a].row != m[b].col) {
					sign = 1;
					break;
				}
				num = m[a].col * m[b].row;
			}	
			if(isupper(exp[i])) {
				c.push(exp[i]);
			}
		}
		if(sign) {
			printf("%s\n", "error");
			continue;
		}
		printf("%d\n", num);
		
	}
}

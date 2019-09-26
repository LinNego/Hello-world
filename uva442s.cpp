#include <iostream>
#include <string>
#include <cctype>
#include <sstream>
#include <stack>
using namespace std;
struct matrix{
	matrix(int a = 0, int b = 0): row(a), col(b) {
		
	}
	int row, col;
} m[26];
stack<matrix> ma;
int main() {
	int n;
	cin >> n;
	for(int i = 0; i < 9; ++i) {
		char c;
		cin >> c;
		int t = c - 'A';
		int t1, t2;
		cin >> t1 >> t2;
		m[t].row = t1, m[t].col = t2;
	//	cout << t1 << t2;
	
	}
	getchar();
	string exp;
	while(cin >> exp) {
		int len = exp.length(), ans = 0;
		bool error = 0;
		for(int i = 0; i != len; ++i) {
	//		cout << exp[i];
			if(isupper(exp[i])){
				
				ma.push(m[exp[i] - 'A']);
	//			cout << "?"	;
				continue;
			}
			if(exp[i] == ')') {
				matrix m1 = ma.top(); ma.pop();
				matrix m2 = ma.top(); ma.pop();
				if(m1.row != m2.col) {
					error = 1;
					break;
				}
	////			cout << m1.row << m1.col << m2.row;
				ans += m1.row * m1.col * m2.row;
				ma.push(matrix(m2.row, m1.col));
			}

		}
		if(error) {
			cout << "error" << endl;
		}
		else {
			cout << ans  << endl; 
		}
	}
}

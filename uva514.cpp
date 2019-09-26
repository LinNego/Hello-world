#include <bits/stdc++.h>
using namespace std;
const int MAXN = 1005;
int main() {
	stack<int> s;
	int n;
	while(cin >> n && n != 0){
		int m, target[MAXN];
		bool zero = 0;
		while(cin >> target[1] && target[1] != 0) {
			for(int i = 2; i <= n; ++i) {
				cin >> target[i];
			}
			int index = 1, num = 1;
			bool ok = true;
			while(index <= n) {
				if(num == target[index]) {
					++index, ++num;
				}
				else if(!s.empty() && s.top() == target[index]) {
					s.pop();
					++index;
				}
				else if(num <= n) {
					s.push(num++);
				}
				else {
					ok = false;
					break;
				}
			}
			printf("%s\n", ok == true ?  "Yes": "No");
		}
		if(!target[1]){
		 	printf("\n");
		}
		
	}
	return 0;	

}

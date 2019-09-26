#include <iostream>
#include <string>
#include <queue>
#include <deque>
using namespace std;
const int maxn = 1000;
int time[5],c[maxn], quantum, n;
bool locked = false;
string prog[maxn];
char var[26];
deque<int> await;
queue<int> block;
void run(int p) {
	string mes = prog[c[p]];
	int q = quantum;
	while(q > 0) {

		switch(mes[2]) {
			case '=':
				var[mes[0] - 'a'] = mes[4] - '0';
				q -= c[0];
				break;
			case 'i':
				cout << p << ": " << var[mes[6] - 'a'];
				q -= c[1];
				break;	
			case 'c':
				q -= c[2];
				if(!locked) {
					locked = true;
					break;

				}	
				block.push(i);
				return;
			case 'l':
				q -= c[3];
				locked = false;
				if(!block.empty()) {
					int p2 = block.front();
					block.pop();
					await.push_back(p2);
				}
				break;
			case 'd':
				q -= c[4];
				return ;
		}
	}
	await.push_back(p);
}
int main() {
	for(int i = 0 ; i < 5; ++i) {
		cin >> time[0];
	}
	cin >> quantum;
      	string prog[maxn];
	int start_p = -1;
	for(int i = 0; i < 3; ++i) {
		string temp;
		
		c[i] = ++start_p;
		int var = 0;
		while(cin >> temp && temp != string("end")) {
			
			pro[start_p++] = temp;	
			
		}
		pro[start_p] = temp;
		await.push_back(i);
	}	
	
	
	
	

}

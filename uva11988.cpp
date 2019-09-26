#include <iostream>
#include <cctype>
using namespace std;
struct Sch {
	char c;
	Sch *next;
	Sch(char c = '#', Sch *next = nullptr):c(c), next(next) {

	}
};
int main() {
	string str;
	while(cin >> str) {
		Sch b, *e, *cur;
		e = &b;
//		cout << str << 's';
		int len = str.length();
		cur = &b;
		for(int i = 0; i != len; ++i) {
			if(str[i] == '[') {
				cur = &b;
			}
			if(isalpha(str[i]) || str[i] == '_') {
			    Sch *t  = new Sch(str[i]);
				//cout << t->c << " ";
				if(cur->next == nullptr) {
					cur->next = t;
					cur = t;
					e = t;
				}
				else {
					t->next = cur->next;
					cur->next = t;
					cur = t;
					
				}
			}
			if(str[i] == ']') {
				cur = e;	
			}
		}
		Sch *temp = b.next;	
		while(temp != nullptr) {
			cout << temp->c;
			temp = temp->next;
		}
		cout << endl;
	}
	return 0;
}

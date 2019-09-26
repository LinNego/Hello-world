#include <cstdio>
#include <iostream>
#include <string>
#include <queue>
#include <algorithm>
#include <vector>
using namespace std;
struct Node {
	Node *left, *right;
	bool had;
	int v;
	Node(Node *left = nullptr, Node *right = nullptr, int v = 0): left(left), right(right), v(v), had(false) {}
};
queue<Node*> tra;
Node *root = nullptr;
bool fail = false;

void clear(queue<Node*> &tra) {
	queue<Node*> change;
	swap(tra, change);
	
}
void addnode(int v, string path) {
	Node *r = root;
	int len = path.length();
	for(int i = 0; i < len; ++i) {
		if(path[i] == 'L') {
			if(r->left == nullptr) {
				r->left = new Node();
				r = r->left;
			}
			else r = r->left;
			
		}
		else if(path[i] == 'R') {
			if(r->right == nullptr) {
				r->right = new Node();
				r = r->right;
			}
			else r = r->right;
		}
	}
	if(!r->had) {
		r->v = v;
		r->had = true;

	}
	else fail = true;
}
bool func(vector<int> &v) {
	clear(tra);
	tra.push(root);
	while(!tra.empty()) {
		Node *temp = tra.front();
		tra.pop();
		if(fail | !temp->had) return false;
		else {
			v.push_back(temp->v);
		}
		if(temp->left != nullptr) {
			tra.push(temp->left);
		}
		if(temp->right != nullptr) {
			tra.push(temp->right);
		}
	}
	return true;
}

void release(Node *root) {
	if(root == nullptr) return ;
	release(root->left);
	release(root->right);
	delete root;
}

bool build() {
	fail = false;
	string s, com("()");
	release(root);
	root = new Node();
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
int main() {
	vector<int> v;
	while(build()) {
		bool first = 1, sign;
		v.clear();
		sign = func(v);
		if(sign){
			int num = v.size();
			for(int i = 0; i < num; ++i) {
				if(i != 0) {
					cout << " ";
				}
				cout << v[i];
			}
		}
		else if(!sign || fail) {
			cout << "not complete";
		}
		cout << endl;
	}
	return 0;	

}

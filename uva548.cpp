#include <cstdio>
#include <cstring>
#include <iostream>
#include <algorithm>
#include <sstream>
using namespace std;
const int maxn = 10000 + 10;
int io[maxn], po[maxn], cnt = 0;
struct Node {
	int n;
	Node *left, *right;
	Node(int n = 0, Node *left = nullptr, Node *right = nullptr): n(n), left(left), right(right) { }
} *root;
void remove(Node *root) {
	if(root == nullptr) return ;
	remove(root->left);
	remove(root->right);
	delete root;
}
void newtree() {
	root = new Node();
}
/*
void ini(int num) {
	cnt = num;
	memset(io, 0, sizeof(io));
	memset(po, 0, sizeof(po));
}
*/
int partition(int left, int right, int value) {
	for(int i = left; i <= right; ++i) {
		if(io[i] == value) return i;
	}
}
void build(int left, int right, Node *root) {
	--cnt;
	int temp = po[cnt];
	int middle = partition(left, right, temp);
	root->n = temp;
	//cout << root->n << endl;
	if(middle + 1 <= right) {
		root->right = new Node();
		build(middle + 1, right, root->right);
	}
	if(left <= middle - 1) {
		root->left = new Node();
		build(left, middle - 1, root->left);
	}
}
bool read() {
	string line1, line2;
	if(getline(cin, line1)) {
		stringstream s1(line1);
		cnt = 0;
		while(s1 >> io[cnt]) {
			++cnt;
		}
		getline(cin, line2);
		stringstream s2(line2);
		cnt = 0;
		while(s2 >> po[cnt]) {
			++cnt;
		}
		return true;

	}
	return false;
}
void preorder(Node *root) {
	if(root == nullptr) {
		return ;
	}
	cout << root->n << " ";
	preorder(root->left);
	preorder(root->right);
}
int dfs(Node *root, int n) {
	if(root == nullptr)	return 0;
	return n = min(dfs(root->left, n), dfs(root->right, n)) + root->n;
}
int best, best_sum;
void dfs_leaf(Node *root, int sum) {
	sum += root->n;
	//if(root->right == nullptr) cout << "nullptr";
	if((root->left == nullptr) && (root->right == nullptr))	 {

		if(sum < best_sum || (sum == best_sum && root->n < best))	{
			best = root->n;
			best_sum = sum;
		}
		return ;
	}
	if(root->left != nullptr){
		dfs_leaf(root->left, sum);
	}
	if(root->right != nullptr) {
		dfs_leaf(root->right, sum);
	}
}
int main() {
	while(read()) {
		remove(root);
		newtree();
		build(0, cnt - 1, root);
//		preorder(root);
		best = 10001, best_sum = 10001 * 10000 / 2 + 1;
		int t = 0;
		dfs_leaf(root, t);
		cout << best << endl;
		/*	
		for(int i = 0; i < cnt; ++i) {
			cout << io[i] << " " << po[i] << " ";
		}
		*/
	
	}

	return 0;
}


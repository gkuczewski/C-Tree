#include <stdio.h>
#include <stdlib.h>
#include "TreeNode.h"

int main(void){

	Node n2, n3, n4, times, plus;

	setNode(&n2, 2, '\0', NULL, NULL, true);
	setNode(&n3, 3, '\0', NULL, NULL, true);
	setNode(&n4, 4, '\0', NULL, NULL, true);
	printf("\n");

	setNode(&times, 0, '*', &n3, &n4, true);
	setNode(&plus, 0, '+', &n2, &times, true);

	printf(" Tree evaluation: %d\n\n", eval(&plus));

	setNode(&plus, 0, '+', &n2, &n3, true);
	setNode(&times, 0, '*', &plus, &n4, true);

	printf(" Tree evaluation: %d\n\n", eval(&times));

	setNode(&plus, 0 , '.', &n2, &n3,true);
	setNode(&times, 0 , '*', &plus, &n4, true);

	printf(" Tree evaluation: %d\n\n", eval(&times));

	return 0;
}

String nodeToString(Node_p np){

	String s;

	sprintf(s,"<0x%p>[value: %d, left: 0x%p, right: 0x%p]",
							np,np->value,np->left,np->right);
	return s;
}

void setNode(Node_p np, int  value, char op, Node_p  left, 
					Node_p  right, bool display){

	np->value = value;
	np->left = left;
	np->right = right;
	np->op = op;

	if(display){
		printf("%s \n", NodeToString(np));
	}
}
int eval(Node_p np){

	int left = 0; 
	int right = 0;

	if(np->op == '\0') return np->value;

		if(np->left != NULL && np->left->op != NULL){
			eval(left);
			left = eval(np->left);
		}
		else left = np->left->value;

		if(np->right != NULL && np->right->op != NULL){
			eval(right);
			right = eval(np->right);
		}
		else right = np->right->value;

	switch(np->op){
		case '*': return left*right;
		case '+': return left+right;
		case '-': return left-right;
		case '/': return left/right;
	default:
		printf("invald operator: %s", np->op);
		exit EXIT_FAILURE;
	}

}
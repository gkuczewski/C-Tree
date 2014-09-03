#include <stdio.h>
#include <stdlib.h>
#include "TreeNodez.h"

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
 
        setNode(&plus, 0, '.', &n2, &n3,true);
        setNode(&times, 0, '*', &plus, &n4, true);
 
        printf(" Tree evaluation: %d\n\n", eval(&times));
 
        return 0;
}
 
String nodeToString(Node_p np){
        String s = calloc(1,255);
        sprintf(s,"<%p>[value: %d, left: %p, right: %p]",np,np->value,np->left,np->right);
        return s;
}
 
void setNode(Node_p np, int value, char op, Node_p left, Node_p right, bool display){
    np->value = value;
    np->op = op;
    np->left = left;
    np->right = right;
    if(display) {
        printf("%s\n",nodeToString(np));
    }
}

int eval(Node_p np){
    if (np->op == '\0') return np->value;
    int left = 0;
    int right = 0;

    if (np->left != NULL && np->left->op != '\0') {
        left = eval(np->left);
    }
    else left = np->left->value;

    if(np->right == NULL){
        switch(np->op){
            case '*': return left*left;
            case '+': return ++left;
            case '-': return --left;
            default: goto INVALID_OP;
        }
    }
    else if (np->right->op != '\0') {
        right = eval(np->right);
    }
    else right = np->right->value;

     switch (np->op) {
        case '*': return left*right;
        case '+': return left+right;
        case '-': return left-right;
        case '/': return left/right;
        default : goto INVALID_OP;
    }
    if (np->op == '?') {
        if (np->left != NULL) return eval(np->right->left->left);
        else return eval(np->right->right->left);
    }

    INVALID_OP:
        printf("Invald Operator: %c \n",np->op);
        exit(EXIT_FAILURE);

}

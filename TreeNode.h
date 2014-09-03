#ifndef TREE_NODE                              
#define TREE_NODE

/*
 *      Define the structure of an evaluation tree node.
 *      The node contains an integer value which may be either a number
 *      or an operator character.
 *      The node will contain two NULL pointers if the value is a number.
 *      The node will contain one or two non-NULL pointers if the value is
 *      an operator.  Unary operators will have the right pointer set to NULL.
 *      Binary operators will use both the left and right pointers.
 *
 *      Note: if implementing the ternary operator (?:) then the operator for
 *      this node is '?', the left pointer is the condition to be tested and
 *      the right pointer is to another node.  This node contains the ':' operator
 *      and its pointers point to node with operators 'T' and 'F'.  These us their
 *      left pointers to point to the expression to be evaluated for the correct
 *      logical value.
 */
typedef struct Node_t {
        int    value;
        char op;
        struct Node_t   left;
        struct Node_t   right;
} 
Node, *Node_p;

/*
 *      Simplify the name of a C string.
 */

typedef char *String;

/*
 *      C does not have a Boolean type.  Make one!
 */
typedef enum {false, true} bool;

/*
 *      Set the values for an existing node.
 *
 *      The display argument controls the display of the Node data.
 */
void setNode(Node_p np,
                        int  value,
                        Node_p  left,
                        Node_p  right,
                        bool    display
                        char op);

/*
 *      Convert a Node object to a string.
 *
 *      We require a pointer to the Node object so that we can display the
 *      address of the object for further reference.
 */
String nodeToString(Node_p np);

/*
 *      Evaluate the expression tree and return the value computed.
 *
 *      Pointers are required for easy recursive implementation of eval.
 */
int eval(Node_p np);

#endif

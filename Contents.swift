import UIKit
// The goal of this excercise is to create a function to print the values of a linked list in reverse

class Node {
    
    var value: Int
    var next: Node?
        
    init(_ value:T) {
        self.value = value
    }
}

extension Node: CustomStringConvertible {
    
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}

    class LinkedList<Int>{

        public var head: Node<T>?
        public var tail: Node<T>?

        public init() { }

        public var isEmpty: Bool {
            head == nil
    }

        func append(_ value: T) {
        let newNode = Node(value)
    
        guard let lastNode = tail else{
            head = newNode
            tail = head
            return
        }
    }
    //traversing the list
        
        func printinReverse(_ node: Node?) {
            while let currentNode = node {
                print currentNode.value
                node = currentNode.next
            }
        }

        let node1 = Node(3)
        let node2 = Node(1)
        let node3 = Node(8)
        
        node1.next = node(2)
        node2.next = node(3)
  
    //In this problem there is pointer manipulation
    //current node pointer is 3 -> 1 -> 8 -> nil
    // 8 -> 1 -> 3
        
        func reverseList(_ node: Node?) -> Node? {
            
            var node = node //makes the node mutatable(changable)
            var previousNode: Node?
            var nextNode: Node? // Temporary variable node

            while let currentNode = node {
                nextNode = currentNode.next
                
            //main part of the problem is in the following two lines below:
            // this line will be reversing the current next pointer
                currentNode.next = previousNode
                previousNode = currentNode
            
            //Keep traversing the list of nodes
            //reassign node and ends the while loop
            node = nextNode
        }
        return previousNode
    }

let modifiedNode = reverseList(nodeOne)
        
        printNodeValues(modifiedNode)

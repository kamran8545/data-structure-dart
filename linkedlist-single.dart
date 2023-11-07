import 'dart:math';


void main(){
  
  var linkedList  = SingleLinkedList();
  linkedList.generateSingleLinked(noOfNodes:5);
  linkedList.traverseSingleLinked();
  
}  


class SingleLinkedList{
  
  int data = -1;
  SingleLinkedList? link;
  
  SingleLinkedList({this.data = -1, this.link});
  
  /// This method will generate Single Linked List with n nodes
  void generateSingleLinked({required int noOfNodes}){
    SingleLinkedList? previousNode;
    for(int i = 1;i <= noOfNodes; i++){
      if(previousNode == null){
        link = SingleLinkedList(data:  Random().nextInt(100));
        previousNode = link;
      }else{
        previousNode.link = SingleLinkedList(data:  Random().nextInt(100));
        previousNode = previousNode.link;
      }
    }
  }

  /// This method will traverse Single Linked List
  void traverseSingleLinked(){
    SingleLinkedList? headNode = link;
    if(headNode == null){
      print('Linked List is empty!');
    }else{
      while(headNode!.link != null){
        print('Current Node Data => ${headNode.data}');
        headNode = headNode.link;
      }
      print('Current Node Data => ${headNode.data}');
    }
  }
  
  
  
}
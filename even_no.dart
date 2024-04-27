//WAP to read a list of integers
//and print only even integers. 
// List contains ordered collection of elements 
// list can contain elements of different data types
void main(){ // main execution body of dart 
  List<int>nums=[12,23,54,75,38,44,0,79];
  for(var i=0;i<nums.length;i++){
    if(nums[i]%2==0){
      print(nums[i]);
      
    }
    
  }
  
  
  
}

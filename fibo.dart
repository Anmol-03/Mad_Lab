// Code to print fibonacci series by using function
void fibo(int n){
    int a=0;
    int b=1;
    for(var i=0;i<n;i++){
        // 0,1,1,2,3
        print(a);
       int  c=a+b;
        a=b;
        b=c;
        
        
    }
    
    
}
void main(){
    print('Fibo Series is ');
    int n=10;
    fibo(n);
}

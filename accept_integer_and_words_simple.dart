//WAP to accept an integer number and print it in words.
import 'dart:io';
void main(){
    // Declaring a map 
    Map<String,String>num={
        "0":"Zero",
        "1":"One",
        "2":"Two",
        "3":"Three",
        "4":"Four",
        "5":"Five",
        "6":"Six",
        "7":"Seven",
        "8":"Eight",
        "9":"Nine",
        // accessing key value pair through num[1]="one",num[2]="two"
        
    };
    // User input of number
    stdout.write("Enter a integer number:");
    // int number=int.parse(stdin.readLineSync()!)
    String snumber=stdin.readLineSync()!;
    for(var i=0;i<snumber.length;i++){
        print(num[snumber[i]]);
    }
    
}

import 'package:flutter/material.dart';

class Balance with ChangeNotifier{
  GlobalKey<FormState>formKey = GlobalKey<FormState>();
  List<String> balanceList = ['0'];

  void addBalance(String value){
    final last = balanceList[0];
  if(last == '0'){
      balanceList[0] = value;
    } 
  else if (last != '0' && last.length < 12){
    String totalBalance = last + value;
    balanceList[0] = totalBalance;
    } 
  else {
    return;
    }
    notifyListeners();
  }

  void removeBalance(){
    final last = balanceList[0];

  if(last.isNotEmpty && last.length < 1) {
    final last =  balanceList[0];
    balanceList[0] =  last.substring(0, last.length - 1);
    notifyListeners();
    } 
  else {
    return;
    }
  }

  void setterBalance(){
    balanceList[0] = '0';
    notifyListeners();
  }

}
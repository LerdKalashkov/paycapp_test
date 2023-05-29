import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';
import 'package:paycapp/widgets/delete.dart';
import 'package:paycapp/widgets/widgets.dart';
import 'dart:developer';

class PaymentKeypad extends StatelessWidget {
  const PaymentKeypad({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: 
        FlexibleSpaceBar(
          titlePadding: EdgeInsets.only(
            left: size.width * 0.875,
            right: size.width * 0.008,
            bottom: size.width * 0.04
          ),
          title: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              childAspectRatio: 1,             
              children: List.generate(12, (index) {
                return Container(                                              
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(55)),
                  color:  AppTheme.purpleLight,                          
                ),              
              );
            })
          ),
        ),
        toolbarHeight: 85,
        leadingWidth: size.width * 0.23,
        elevation: 0,
        actions: const <Widget>[
          SizedBox(
            width: 20,
          )
        ],
        leading: const Arrow(route: 'swiper'),         
      ),
      body: Column(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            color: AppTheme.background,
          ),
          width: size.width * 1,
          height: size.height * 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(bottom: 5),
                  child: const Avatar(
                    size: 45, 
                    radius: 17,
                    route: 'swiper',
                  )
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                  color: AppTheme.background,
                  ),
                padding: EdgeInsets.only(bottom: size.height * 0.01),
                child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                  children: [  
                    Text('Sending money to ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                  Text('Jessica',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  ]
                )),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                  top: size.height * 0.025, 
                  bottom: 0.08,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 10,
                        top: 5,
                        ),
                      child: const Text('\$',
                        style: TextStyle(
                          letterSpacing: 4,
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w300
                      ),
                                      ),
                    ),   
                    const Text('230',
                      style: TextStyle(
                        letterSpacing: 4,
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w400
                    ),
                  ),                  
                  ]
                )
              ),
            ]),
        ),        
       Stack(
        children: [
            Container(
                decoration: BoxDecoration(
                  color: AppTheme.background,
                  border: Border.all(color: AppTheme.background), 
                ), 
                width: size.width * 1,
                height: size.height * 0.12,
              ),
          Container(
            margin: const EdgeInsets.only(top: 50),
                width: size.width * 1,
                height: size.height * 0.5995,
                decoration: BoxDecoration(
                color: AppTheme.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size.height * 0.035),
                    topRight: Radius.circular(size.height * 0.035),
                
            )
          ),
          child: Column(
            
            children: [  
              ClipRRect(
              borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size.height * 0.035),
                    topRight: Radius.circular(size.height * 0.035),
                
            ),
              child: Container(
                height: size.height * 0.4995,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                color: AppTheme.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GridView.count(
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 15,
                    physics:const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 3,
                    childAspectRatio: 1,             
                    children: List.generate(12, (index) {
                      return _getButtonContent(index);
                    })
                              ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: AppTheme.white,
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    top: 10,
                  ),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                  Calendar(
                    color:AppTheme.grey,
                    route: 'swiper',
                    ),
                  Padding(
                    padding: const EdgeInsets.only(
                          left: 10,
                        ),
                    child: InkWell(
                      onTap: () {
                        
                      },
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(55)),
                        child: Container(  
                          width: 270,
                          color: AppTheme.icons,
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text('Continue',
                            style: TextStyle(
                              color: AppTheme.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                            )),
                        ),
                      ),
                    ),
                  )
                            
                  ],),
                ),
              ),
            )
            
            ]
          ),
          ), 
       ],)
            
      ]) 
    );
  }
}


class Button extends StatelessWidget {

  final int index;
  final Widget content;
  final Function? action;
  final Widget? widget;

  const Button({super.key, 
  required this.index, 
  required this.content, 
  this.widget, 
  this.action, 
    }
  );

  @override
  Widget build(BuildContext context) {

    final int i = index + 1;


    return InkWell(
      onTap: () {
        action;
        log(i.toString());
      },
      child: Container(                                              
        decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(55)),
        color:  AppTheme.white,                          
          ),              
        child: content,
       ),
    );
  }
}

class _TextContent extends StatelessWidget {
  final String content;
  
  const _TextContent({
    required this.content
    });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(content,
            style:  const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              ),   
      ),
    );
  }
}

Widget _getButtonContent(int index) {
  switch (index) {
    case 0:  return Button(index: index, content: const _TextContent(content: '1'));
    case 1:  return Button(index: index, content: const _TextContent(content: '2'));
    case 2:  return Button(index: index, content: const _TextContent(content: '3'));
    case 3:  return Button(index: index, content: const _TextContent(content: '4'));
    case 4:  return Button(index: index, content: const _TextContent(content: '5'));
    case 5:  return Button(index: index, content: const _TextContent(content: '6'));
    case 6:  return Button(index: index, content: const _TextContent(content: '7'));
    case 7:  return Button(index: index, content: const _TextContent(content: '8'));
    case 8:  return Button(index: index, content: const _TextContent(content: '9'));
    case 9:  return Container();
    case 10: return Button(index: index, content: const _TextContent(content: '0'));
    case 11: return Button(index: index, content: Delete(color: AppTheme.black,));
    default:
      return Button(index: index, content: const _TextContent(content: '?'));
  }
} 


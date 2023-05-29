import 'package:flutter/material.dart';
import 'package:paycapp/widgets/widgets.dart';
import 'package:paycapp/theme/app_theme.dart';

class Body extends StatelessWidget {
  final String route;

  const Body({super.key, 
  required this.route
  
  });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final v = size.height * 0.005;
    final h = size.width * 0.08;
    final b = size.width * 0.1;

    return Column(
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
                decoration: const BoxDecoration(
                color: AppTheme.background,
                ),
                padding: EdgeInsets.symmetric(vertical: v, horizontal: h ),
                child: const Text('Good morning,',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w400,
                ),
                )),
              Container(
                padding: EdgeInsets.only(top: v, left: h, bottom: b,),
                child: const Text('Ashley',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                  ),
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
              height: size.height * 0.22,
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.18),
              width: size.width * 1,
              height: size.height * 0.11,
              decoration: BoxDecoration(
              color: AppTheme.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(size.height * 0.035),
                  topRight: Radius.circular(size.height * 0.035),
                )
              ),
            ),
            const CardSlider(),       
            //const CardSwiper(),
            const AddCard(
              route: 'payment',
            ),
        ],     
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 25,
            left: 25,
            right: 25,
          ),
              width: size.width * 1,
              height: size.height * 0.3613,
              decoration: const BoxDecoration(
              color: AppTheme.white,       
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text('Actions',
                      style: TextStyle(
                      color: AppTheme.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600, 
                      ), 
                    ),
                  ),
                  //TODO: responsive, quitar SizedBox
                  const SizedBox(height: 10),
                  
                  Expanded(
                  child: GridView.count(
                    physics: const BouncingScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    children: List.generate(4, (index) {
                      return Container(                      
                        margin: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color:  AppTheme.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(30, 30, 30, .1),
                              blurRadius: 8,
                              ),
                             ],
                           ),
                        child:  InkWell(
                         
                            onTap:(){
                Navigator.pushNamed(context, route);
      },
                          
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: AppTheme.gridBackground,
                              borderRadius: BorderRadius.all(Radius.circular(18))
                            ),
                              child: IconButton(
                                icon: _getIconWidget(index), 
                                onPressed: () {                Navigator.pushNamed(context, route);
 },
                              ),
                            ),       
                        
                            const SizedBox(height: 10),
                        
                            Text(_getTitle(index),
                              style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          ]
                          ),
                        ),
                    );
                  }),
                ),
              ),                 
            ],
          ),
        ),
      ],
    );
  }
}

Widget _getIconWidget(int index) {
  switch (index) {
    case 0:
      return Image.asset(
              width: 20,
              'assets/icons/telegram.png',
              color: AppTheme.gridIcon,
              );
    case 1:
      return Image.asset(
              width: 26,
              'assets/icons/contact.png',
              color: AppTheme.gridIcon,
              );
    case 2:
      return Image.asset(
              width: 21,
              'assets/icons/wallet.jpg',
              color: AppTheme.gridIcon,
              );
    case 3:
      return Image.asset(
              width: 22,
              'assets/icons/bill.jpg',
              color: AppTheme.gridIcon,
              );
    default:
      return Image.asset(
              width: 30,
              'assets/icons/contact.png',
              color: AppTheme.gridIcon,
              );
  }
}

String _getTitle(int index) {
  switch (index) {
    case 0:
      return 'Send money';
    case 1:
      return 'Request money';
    case 2:
      return 'Check wallet';
    case 3:
      return 'Pending Bill';
    default:
      return 'No found';
  }
}
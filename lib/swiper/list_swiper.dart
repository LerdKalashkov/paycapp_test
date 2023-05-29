import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';


class MasterCard extends StatelessWidget {
  const MasterCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      child: Container(
        padding: const EdgeInsets.only(
          top: 25,
          bottom: 15,
          left: 20,
          right: 20
        ),
        color: AppTheme.mastercard,
        child:  Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: size.height * 0.0045
              ),
              alignment: Alignment.topLeft,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    width: size.width * 0.06,  
                    height: size.height * 0.03,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppTheme.yelow,
                    ),
                  ),
                  Container(
                    width: size.width * 0.06,  
                    height: size.height * 0.03,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppTheme.red,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    width: size.width * 0.06,  
                    height: size.height * 0.03,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppTheme.yelowLight,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: size.height * 0.05
              ),
              alignment: Alignment.topLeft,
              child: const Text('Platinum',
              style: TextStyle(
              color: AppTheme.whiteLight,
              fontSize: 12,
              fontWeight: FontWeight.w500,  
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: size.height * 0.01
              ),
              alignment: Alignment.topLeft,
              child: const Text('\$24,873',
              style: TextStyle(
              color: AppTheme.white,
              fontSize: 20,
              fontWeight: FontWeight.w800,  
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: size.height * 0.065),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SizedBox(
                child: Image.asset(
                  width: 19,
                  'assets/icons/chip.png',
                  color: Colors.white,
                ), ),
              const SizedBox(width: 5),
              SizedBox(
                child: Image.asset(
                  width: 34,
                  'assets/icons/points.png',
                  color: Colors.white,
                ), 
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text('4889',
                style: TextStyle(
                color: AppTheme.white,
                fontSize: 15,
                fontWeight: FontWeight.w800,  
                  ),
                ),
              ),
              ],           
              ),
            ),           
          ],
        ),
      ),
    );
  }
}

class Visa extends StatelessWidget {
  const Visa({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      child: Container(
        padding: const EdgeInsets.only(
          top: 25,
          bottom: 15,
          left: 20,
          right: 20
        ),
        color: AppTheme.visa,
        child:  Column(
          children: [
            Container(
                          alignment: Alignment.topLeft,
              child: Image.asset(
                width: 55,
                'assets/icons/visa.png',
                color: Colors.white,
              ),  
            ),
            SizedBox(height: size.height * 0.07,),
            Container(
              alignment: Alignment.topLeft,
              child: const Text('Signature',
              style: TextStyle(
              color: AppTheme.whiteLight,
              fontSize: 12,
              fontWeight: FontWeight.w500,  
                ),
              ),
            ),
            SizedBox(height: size.height * 0.005,),
            Container(
              alignment: Alignment.topLeft,
              child: const Text('\$81,323',
              style: TextStyle(
              color: AppTheme.white,
              fontSize: 20,
              fontWeight: FontWeight.w800,  
                ),
              ),
            ),
            const SizedBox(height: 48),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            SizedBox(
              child: Image.asset(
                width: 19,
                'assets/icons/chip.png',
                color: Colors.white,
              ), ),
            const SizedBox(width: 5),
            SizedBox(
              child: Image.asset(
                width: 34,
                'assets/icons/points.png',
                color: Colors.white,
              ), 
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text('7359',
              style: TextStyle(
              color: AppTheme.white,
              fontSize: 15,
              fontWeight: FontWeight.w800,  
                ),
              ),
            ),
            ],           
           ),           
          ],
        ),
      ),
    );
  }
}

List imagepath = [
  const MasterCard(),
  const Visa(),
  const MasterCard(),
  const Visa(),
];
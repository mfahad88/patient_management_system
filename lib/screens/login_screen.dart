import 'package:flutter/material.dart';
import 'package:patient_management_system/screens/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        print('${constraints.minWidth}\t${constraints.maxWidth}');
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 50.0),
            FlutterLogo(size:constraints.maxWidth * 0.15,),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Username:"),
                const SizedBox(width: 10.0,),
                SizedBox(
                  width: constraints.maxWidth*0.3,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.grey.shade500
                            )
                        )
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Password:"),
                const SizedBox(width: 10.0,),
                SizedBox(
                  width: constraints.maxWidth*0.3,
                  height: 35,
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.grey.shade500
                            )
                        )
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0,),
            SizedBox(
              width: constraints.maxWidth*0.25,
              child: constraints.maxWidth>850?Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text("Forgot Password? "),

                  FilledButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const DashboardScreen(),)),style: FilledButton.styleFrom(
                      backgroundColor: Colors.grey.shade700,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ), child: const Text("Login"),)
                ],
              ):Column(
                children: [
                  const Text("Forgot Password? "),

                  FilledButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const DashboardScreen(),)),style: FilledButton.styleFrom(
                      backgroundColor: Colors.grey.shade700,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ), child: const Text("Login"),)
                ],
              ),
            )


          ],
        );
      },),
    );
  }
}

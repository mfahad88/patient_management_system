import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 50.0),
        FlutterLogo(size:MediaQuery.of(context).size.width * 0.15,),
        const SizedBox(height: 50.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Username:"),
            const SizedBox(width: 10.0,),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.3,
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
              width: MediaQuery.of(context).size.width*0.3,
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
          width: MediaQuery.of(context).size.width*0.25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text("Forgot Password? "),

              FilledButton(onPressed: () => print('Clicked'), child: const Text("Login"),style: FilledButton.styleFrom(
                backgroundColor: Colors.grey.shade700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
                )
              ),)
            ],
          ),
        )


      ],
    );
  }
}

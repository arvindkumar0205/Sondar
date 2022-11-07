import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    size: 40,
                    color: Colors.grey,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Log in",
                  style: GoogleFonts.aclonica(
                    fontSize: 30,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "E-mail Address",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              child: TextFormField(
                obscureText: isHiddenPassword,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: "Password",
                    suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(Icons.visibility))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Forgot password?",
                style: TextStyle(color: Colors.orange, fontSize: 20),
              ),
            ),
            SizedBox(
              height: h * 0.050,
            ),
            Center(
              child: MaterialButton(
                height: h * 0.08,
                minWidth: w * 0.60,
                color: Color.fromARGB(255, 241, 217, 106),
                onPressed: () {
                  // Get.to(() => const Login());
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Color.fromARGB(255, 51, 43, 43),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.08,
            ),
            Row(
              children: const [
                Expanded(
                    child: Divider(
                  indent: 20.0,
                  endIndent: 10,
                  height: 20,
                  thickness: 2,
                  color: Colors.red,
                )),
                Text(
                  "Or Continue With",
                  style: TextStyle(color: Color.fromARGB(255, 140, 175, 99)),
                ),
                Expanded(
                  child: Divider(
                    indent: 10,
                    endIndent: 30,
                    thickness: 2,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook,
                    size: 60,
                    color: Color.fromARGB(255, 4, 131, 235),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {
      isHiddenPassword = isHiddenPassword;
    });
  }
}

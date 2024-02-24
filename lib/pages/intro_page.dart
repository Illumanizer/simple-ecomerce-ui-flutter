import 'package:flutter/material.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  "lib/assets/images/nike_PNG11.png",
                  height: 240,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              const Text(
                "Just do it",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Brand new collection of sneakers",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 94, 87, 87),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 48,
              ),

              GestureDetector(
                onTap: ()=> Navigator.pushNamed(context, "/home"),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Center(
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

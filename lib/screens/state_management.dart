//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  List data = ["قيد التنفيذ", "الملغيه", "المكتملة", "تحت المراجعه", "تمت"];

  int selecteditemindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selecteditemindex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(2),
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: selecteditemindex == index
                            ? Colors.red
                            : const Color.fromARGB(255, 169, 163, 163),
                      ),
                      child: Center(
                        child: Text(
                          data[index], // Use correct key
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  data[selecteditemindex],
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 3,
              thickness: 3,
            ),
            const SizedBox(
              height: 22,
            ),
            const passwordtextfield(),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class passwordtextfield extends StatefulWidget {
  const passwordtextfield({
    super.key,
  });

  @override
  State<passwordtextfield> createState() => _passwordtextfieldState();
}

// ignore: camel_case_types
class _passwordtextfieldState extends State<passwordtextfield> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !isvisible,
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              isvisible = !isvisible;
            });
          },
          child: isvisible == true
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: const BorderSide(width: 1),
        ),
      ),
    );
  }
}

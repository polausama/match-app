import 'package:flutter/material.dart';
import 'package:flutter_match_app/view/widgets/CustomNumber.dart';
import 'package:flutter_match_app/view/widgets/CustomText.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
   int counter = 311;
  void incrementnumber() {
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage("assets/images/Untitled.png"), 
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Pola Usama ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'I love travelling and i doenjoy taking ',
              style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'photos of tourist attraction ',
              style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Followers',
                ),
                const SizedBox(width: 50),
                CustomText(
                  text: 'Following',
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomNumber(
                  number: '48K',
                ),
                const SizedBox(width: 90),
                CustomNumber(
                  number: '$counter',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Total Maps',
                ),
                const SizedBox(
                  width: 30,
                ),
                CustomText(
                  text: 'Total Stories',
                ),
                const SizedBox(
                  width: 30,
                ),
                CustomText(
                  text: 'Total Likes',
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomNumber(
                  number: '314',
                ),
                const SizedBox(
                  width: 80,
                ),
                CustomNumber(
                  number: '1.2K',
                ),
                const SizedBox(
                  width: 80,
                ),
                CustomNumber(
                  number: '560K',
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  incrementnumber();
                },
                child: const Text(
                  'Follow',
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.green),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ) ;
  }
  }
  

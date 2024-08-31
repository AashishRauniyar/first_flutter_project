import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.green,
//       body: Center(
//         child: Text("Profile page"),
//       ),
//     );
//   }
// }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.tealAccent,
            child: Icon(Icons.person, size: 50, color: Colors.white),
          ),
          const SizedBox(height: 20),
          const Text(
            'Aashish Prasad Gupta',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Level: Intermediate',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Edit Profile'),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.fitness_center),
            title: const Text('Workout History'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.assessment),
            title: const Text('Achievements'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

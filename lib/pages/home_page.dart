import 'package:flutter/material.dart';
import 'package:first_project/pages/gym_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome to Gymify!',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Replacing the manual workout section with WorkoutCard widgets
          const WorkoutCard(
            workoutName: 'Push-ups',
            reps: '3 sets of 15',
            info: 'Standard push-ups to build upper body strength.',
          ),
          const SizedBox(height: 16),
          const WorkoutCard(
            workoutName: 'Squats',
            reps: '3 sets of 20',
            info: 'Deep squats for leg strength and endurance.',
          ),
          const SizedBox(height: 16),
          const WorkoutCard(
            workoutName: 'Running',
            reps: '30 minutes',
            info: 'Cardio running for endurance.',
          ),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Start Workout'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('View Progress'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

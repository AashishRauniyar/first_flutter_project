import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget {
  final String workoutName;
  final String reps;
  final String info;

  const WorkoutCard({
    Key? key,
    required this.workoutName,
    required this.reps,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Adds a slight shadow for a raised effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Padding inside the card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              workoutName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Reps: $reps',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700], // Slightly lighter color for the reps text
              ),
            ),
            const SizedBox(height: 8),
            Text(
              info,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600], // Even lighter color for the info text
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
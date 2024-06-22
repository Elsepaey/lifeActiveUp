import 'package:get/get.dart';

class WorkoutPlansController extends GetxController {
  int selected = 0;
  List labels = ["", "Home", "Gym"];
  void swipe(int index) {
    if (selected != index) {
      selected = index;
      update();
    }
  }

  double sliderValue = 3.0;

  void updateSliderValue(double value) {
    sliderValue = value.roundToDouble();
    update();
  }

  Map plans = {
    "keepFitMaleGym": {
      "Beginner": {
        "3": {
          "Day 1": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes brisk walking or cycling'
            },
            {
              'exercise': 'Core (choose one)',
              'sets': '-',
              'reps': 'Planks, Bicycle Crunches'
            },
          ],
          "Day 3": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15 per leg'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Seated Rows', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
        },
        "4": {
          "Day 1": [
            {
              'exercise': 'Upper Body Strength Training',
              'sets': 3,
              'reps': '10-12'
            },
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes brisk walking or cycling'
            },
            {
              'exercise': 'Core (choose one)',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes moderate intensity'
            },
            {
              'exercise': 'Core (choose one)',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Lower Body Strength Training',
              'sets': 3,
              'reps': '10-12'
            },
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 4": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {
              'exercise': 'Flexibility (choose one)',
              'sets': '-',
              'reps': 'Stretching'
            },
          ],
        },
        "5": {
          "Day 1": [
            {
              'exercise': 'Upper Body Strength Training',
              'sets': 3,
              'reps': '12-15'
            },
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '15 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Lower Body Strength Training',
              'sets': 3,
              'reps': '12-15'
            },
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes brisk walking or cycling'
            },
            {
              'exercise': 'Core (choose one)',
              'sets': '-',
              'reps': 'Planks, Bicycle Crunches'
            },
          ],
          "Day 4": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {
              'exercise': 'Flexibility (choose one)',
              'sets': '-',
              'reps': 'Stretching'
            },
          ],
          "Day 5": [
            {
              'exercise': 'Upper Body Strength Training',
              'sets': 3,
              'reps': '12-15'
            },
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '15 minutes moderate intensity'
            },
          ],
        },
        "6": {
          "Day 1": [
            {
              'exercise': 'Upper Body Strength Training',
              'sets': 3,
              'reps': '12-15'
            },
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '15 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Lower Body Strength Training',
              'sets': 3,
              'reps': '12-15'
            },
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes brisk walking or cycling'
            },
            {
              'exercise': 'Core (choose one)',
              'sets': '-',
              'reps': 'Planks, Bicycle Crunches'
            },
          ],
          "Day 4": [
            {
              'exercise': 'Upper Body Strength Training',
              'sets': 3,
              'reps': '12-15'
            },
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '15 minutes moderate intensity'
            },
          ],
          "Day 5": [
            {
              'exercise': 'Lower Body Strength Training',
              'sets': 3,
              'reps': '12-15'
            },
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 6": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {
              'exercise': 'Flexibility (choose one)',
              'sets': '-',
              'reps': 'Stretching'
            },
          ],
        },
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes running or cycling'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks, Russian Twists'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 3": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15 per leg'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lat Pull downs', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Triceps Dips', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes moderate intensity'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
          "Day 3": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 4": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Mountain Climbers', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Kettlebell Swings', 'sets': 3, 'reps': '15-20'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Triceps Dips', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15 per leg'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes running or cycling'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks, Russian Twists'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 4": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Mountain Climbers', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Kettlebell Swings', 'sets': 3, 'reps': '15-20'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 5": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Triceps Dips', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15 per leg'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes running or cycling'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks, Russian Twists'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 4": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Triceps Dips', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15 per leg'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 6": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Mountain Climbers', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Kettlebell Swings', 'sets': 3, 'reps': '15-20'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
        },
      },
      "Advanced": {
        "3": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Dips', 'sets': 3, 'reps': '8-10'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '6-8'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 per leg'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes running or cycling'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks, Russian Twists'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Dips', 'sets': 3, 'reps': '8-10'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '6-8'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 per leg'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes running or cycling'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks, Russian Twists'},
          ],
          "Day 4": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Kettlebell Swings', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Box Jumps', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Dips', 'sets': 3, 'reps': '8-10'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '6-8'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 per leg'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes running or cycling'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks, Russian Twists'},
          ],
          "Day 4": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Kettlebell Swings', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Box Jumps', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 5": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Hanging Leg Raises'
            },
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Dips', 'sets': 3, 'reps': '8-10'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '6-8'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 per leg'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes running or cycling'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks, Russian Twists'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 4": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Dips', 'sets': 3, 'reps': '8-10'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '6-8'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 per leg'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 6": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Kettlebell Swings', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Box Jumps', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
        },
      },
    },
    "weightLossMaleGym": {
      "Beginner": {
        "3": {
          "Day 1": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes brisk walking or cycling'
            },
            {'exercise': 'Planks', 'sets': '-', 'reps': '30 sec'},
            {'exercise': 'Bicycle Crunches', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Seated Rows', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes brisk walking or cycling'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
          "Day 3": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 4": [
            {
              'exercise': 'Full-Body Circuit',
              'sets': '-',
              'reps': 'Bodyweight Squats, Push-Ups, Mountain Climbers'
            },
            {'exercise': 'Flexibility', 'sets': '-', 'reps': 'Stretching'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '15 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15 per leg'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes brisk walking or cycling'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Planks, Bicycle Crunches'
            },
          ],
          "Day 4": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '15 minutes moderate intensity'
            },
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15 per leg'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '15 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15 per leg'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes brisk walking or cycling'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Planks, Bicycle Crunches'
            },
          ],
          "Day 4": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '15 minutes moderate intensity'
            },
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15 per leg'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 6": [
            {
              'exercise': 'Full-Body Circuit',
              'sets': '-',
              'reps': 'Bodyweight Squats, Push-Ups, Mountain Climbers'
            },
            {'exercise': 'Flexibility', 'sets': '-', 'reps': 'Stretching'},
          ],
        },
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes running or cycling'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks, Russian Twists'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 3": [
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Dumbbell Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lat Pulldowns', 'sets': 4, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes moderate intensity'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes interval training'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks, Russian Twists'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 4": [
            {
              'exercise': 'Full-Body Circuit',
              'sets': '-',
              'reps': 'Burpees, Mountain Climbers, Kettlebell Swings'
            },
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Shoulder Press', 'sets': 4, 'reps': '8-10'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks, Russian Twists'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes interval training'
            },
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 4": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes moderate intensity'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Shoulder Press', 'sets': 4, 'reps': '8-10'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks, Russian Twists'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes interval training'
            },
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 4": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes moderate intensity'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {
              'exercise': 'Core',
              'sets': '-',
              'reps': 'Leg Raises, Bicycle Crunches'
            },
          ],
          "Day 6": [
            {
              'exercise': 'Full-Body Circuit',
              'sets': '-',
              'reps': 'Burpees, Mountain Climbers, Kettlebell Swings'
            },
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
        },
      },
      "Advanced": {
        "3": {
          "Day 1": [
            {'exercise': 'Squats', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Bench Press', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Deadlifts', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Pull-Ups', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Cardio', 'sets': '-', 'reps': '20 minutes HIIT'},
          ],
          "Day 2": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes running or cycling'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Russian Twists'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Hanging Leg Raises'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 3": [
            {'exercise': 'Lunges', 'sets': 5, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Dumbbell Press', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Lat Pulldowns', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Cardio', 'sets': '-', 'reps': '20 minutes HIIT'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Pull-Ups', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Shoulder Press', 'sets': 5, 'reps': '6-8'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Leg Raises'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Russian Twists'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Deadlifts', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Leg Press', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Calf Raises', 'sets': 5, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Leg Raises'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Bicycle Crunches'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes interval training'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Russian Twists'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 4": [
            {'exercise': 'Burpees', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Mountain Climbers', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Kettlebell Swings', 'sets': 5, 'reps': '15-20'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Pull-Ups', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Shoulder Press', 'sets': 5, 'reps': '6-8'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Russian Twists'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Deadlifts', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Leg Press', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Calf Raises', 'sets': 5, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Leg Raises'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Bicycle Crunches'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes interval training'
            },
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 4": [
            {'exercise': 'Bench Press', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Pull-Ups', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Shoulder Press', 'sets': 5, 'reps': '6-8'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Leg Raises'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Bicycle Crunches'},
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Deadlifts', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Leg Press', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Calf Raises', 'sets': 5, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Leg Raises'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Bicycle Crunches'},
          ],
        },
        "6-Day Workout Plan": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Pull-Ups', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Shoulder Press', 'sets': 5, 'reps': '6-8'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Planks'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Russian Twists'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Deadlifts', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Leg Press', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Calf Raises', 'sets': 5, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Leg Raises'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Bicycle Crunches'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes interval training'
            },
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
          "Day 4": [
            {'exercise': 'Bench Press', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Pull-Ups', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Shoulder Press', 'sets': 5, 'reps': '6-8'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Leg Raises'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Bicycle Crunches'},
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Deadlifts', 'sets': 5, 'reps': '6-8'},
            {'exercise': 'Leg Press', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Calf Raises', 'sets': 5, 'reps': '10-12'},
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '20 minutes moderate intensity'
            },
            {'exercise': 'Core', 'sets': '-', 'reps': 'Leg Raises'},
            {'exercise': 'Core', 'sets': '-', 'reps': 'Bicycle Crunches'},
          ],
          "Day 6": [
            {'exercise': 'Burpees', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Mountain Climbers', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Kettlebell Swings', 'sets': 5, 'reps': '15-20'},
            {
              'exercise': 'Flexibility',
              'sets': '-',
              'reps': 'Stretching or Yoga'
            },
          ],
        },
      },
    },
    "muscleGainMaleGym": {
      "Beginner": {
        "3": {
          "Day 1": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Seated Rows', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-10'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 4": [
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Rows', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Dumbbell Curls', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Face Pulls', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 3": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': 3, 'reps': '30 sec'},
          ],
          "Day 5": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes running or cycling'
            },
          ],
          "Day 4": [
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 5": [
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 6": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Mountain Climbers', 'sets': 3, 'reps': '30 sec'},
          ],
        },
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Dumbbell Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lat Pulldowns', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Seated Rows', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Hamstring Curls', 'sets': 4, 'reps': '10-12'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Incline Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Skull Crushers', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Overhead Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Front Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': 4, 'reps': '30 sec'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Incline Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Skull Crushers', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Overhead Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Front Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': 4, 'reps': '30 sec'},
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '10-15'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Incline Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Chest Flyes', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '10-15'},
          ],
          "Day 2": [
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lat Pulldowns', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Overhead Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Front Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': 4, 'reps': '30 sec'},
          ],
          "Day 5": [
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Hammer Curls', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Skull Crushers', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 6": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '10-15'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
          ],
        },
      },
      "Advanced": {
        "3": {
          "Day 1": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Weighted Pull-Ups', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Dumbbell Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'T-Bar Rows', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Incline Bench Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Romanian Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'One-Arm Rows', 'sets': 4, 'reps': '10-12'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Incline Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Skull Crushers', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Overhead Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Front Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': 4, 'reps': '30 sec'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Incline Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Skull Crushers', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Overhead Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Front Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': 4, 'reps': '30 sec'},
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '10-15'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Incline Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Chest Flyes', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '10-15'},
          ],
          "Day 2": [
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lat Pulldowns', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Overhead Press', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Front Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': 4, 'reps': '30 sec'},
          ],
          "Day 5": [
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Hammer Curls', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Skull Crushers', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 6": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '10-15'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '8-10'},
          ],
        },
      },
    },
    "muscleGainFemaleGym": {
      "Beginner": {
        "3": {
          "Day 1": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Seated Rows', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-10'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 4": [
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Rows', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Curls', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Face Pulls', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 3": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': '-', 'reps': '1-2 minutes'},
          ],
          "Day 5": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '30 minutes moderate intensity'
            },
          ],
          "Day 4": [
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 5": [
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 6": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {
              'exercise': 'Mountain Climbers',
              'sets': '-',
              'reps': '1-2 minutes'
            },
          ],
        },
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
          ],
          "Day 2": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Lat Pulldowns', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Seated Rows', 'sets': 3, 'reps': '10-12'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 4": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Goblet Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Incline Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Skull Crushers', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 3": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Overhead Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Front Raises', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': '-', 'reps': '1-2 minutes'},
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '8-10'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Incline Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Skull Crushers', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio',
              'sets': '-',
              'reps': '40 minutes running or cycling'
            },
            {
              'exercise': 'Core (Planks, Russian Twists)',
              'sets': 3,
              'reps': '12-15 each'
            },
          ],
          "Day 4": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 5": [
            {'exercise': 'Overhead Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Front Raises', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': '-', 'reps': '1-2 minutes'},
          ],
          "Day 6": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Kettlebell Swings', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Box Jumps', 'sets': 3, 'reps': '10-15'},
            {
              'exercise': 'Mountain Climbers',
              'sets': '-',
              'reps': '1-2 minutes'
            },
          ],
        },
      },
      "Advanced": {
        "3": {
          "Day 1": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '6-10'},
          ],
          "Day 2": [
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Weighted Pull-Ups', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Dumbbell Press', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'T-Bar Rows', 'sets': 4, 'reps': '8-12'},
          ],
          "Day 3": [
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Incline Bench Press', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Romanian Deadlifts', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'One-Arm Rows', 'sets': 4, 'reps': '8-12'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Incline Press', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Skull Crushers', 'sets': 4, 'reps': '8-12'},
          ],
          "Day 2": [
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '12-15'},
          ],
          "Day 3": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Overhead Press', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Lateral Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Front Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': '-', 'reps': '1-2 minutes'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Incline Press', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Skull Crushers', 'sets': 4, 'reps': '8-12'},
          ],
          "Day 2": [
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '12-15'},
          ],
          "Day 3": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Overhead Press', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Lateral Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Front Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Planks', 'sets': '-', 'reps': '1-2 minutes'},
          ],
          "Day 5": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '10-15'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '6-10'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Incline Press', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Chest Flyes', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '10-15'},
          ],
          "Day 2": [
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Lat Pulldowns', 'sets': 4, 'reps': '8-12'},
          ],
          "Day 3": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Overhead Press', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Lateral Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Front Raises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Rear Delt Flyes', 'sets': 4, 'reps': '12-15'},
          ],
          "Day 5": [
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Hammer Curls', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Skull Crushers', 'sets': 4, 'reps': '8-12'},
          ],
          "Day 6": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '10-15'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '6-10'},
          ],
        },
      },
    },
    "keepFitnessFemaleGym": {
      "Beginner": {
        "3": {
          "Day 1": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {
              'exercise': 'Cardio (30 minutes brisk walking or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Russian Twists)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 3": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Seated Rows', 'sets': 3, 'reps': '10-12'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (30 minutes brisk walking or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Russian Twists)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (30 minutes brisk walking or cycling)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
          ],
          "Day 5": [
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (30 minutes moderate intensity)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
          ],
          "Day 5": [
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 6": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {
              'exercise': 'Mountain Climbers',
              'sets': 3,
              'reps': '20-30 seconds'
            },
          ],
        },
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-10'},
          ],
          "Day 2": [
            {
              'exercise': 'Cardio (40 minutes running or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {'exercise': 'Core (Planks, Leg Raises)', 'sets': '-', 'reps': '-'},
          ],
          "Day 3": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '8-12'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '8-12'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (40 minutes running or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {'exercise': 'Core (Planks, Leg Raises)', 'sets': '-', 'reps': '-'},
          ],
          "Day 4": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '8-12'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '10-15'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (40 minutes running or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {'exercise': 'Core (Planks, Leg Raises)', 'sets': '-', 'reps': '-'},
          ],
          "Day 4": [
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
          ],
          "Day 5": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Goblet Squats', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '10-15'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-10'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (40 minutes running or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {'exercise': 'Core (Planks, Leg Raises)', 'sets': '-', 'reps': '-'},
          ],
          "Day 4": [
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
          ],
          "Day 5": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Goblet Squats', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 6": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Kettlebell Swings', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Box Jumps', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Mountain Climbers',
              'sets': 3,
              'reps': '20-30 seconds'
            },
          ],
        },
      },
      "Advanced": {
        "3": {
          "Day 1": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '6-8'},
          ],
          "Day 2": [
            {
              'exercise': 'Cardio (45 minutes running or HIIT)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Bicycle Crunches)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 3": [
            {'exercise': 'Lunges', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Weighted Pull-Ups', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Dumbbell Press', 'sets': 4, 'reps': '8-10'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '6-10'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (45 minutes running or HIIT)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Bicycle Crunches)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Lunges', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Weighted Pull-Ups', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Dumbbell Press', 'sets': 4, 'reps': '8-10'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Shoulder Press', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '8-12'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (45 minutes running or HIIT)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Bicycle Crunches)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Shoulder Press', 'sets': 4, 'reps': '6-8'},
          ],
          "Day 5": [
            {'exercise': 'Lunges', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Hamstring Curls', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Bent-Over Rows', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Shoulder Press', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '8-12'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Deadlifts', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Leg Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (45 minutes running or HIIT)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Bicycle Crunches)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Pull-Ups', 'sets': 4, 'reps': '6-10'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Shoulder Press', 'sets': 4, 'reps': '6-8'},
          ],
          "Day 5": [
            {'exercise': 'Lunges', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Hamstring Curls', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '8-12'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 6": [
            {'exercise': 'Burpees', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Kettlebell Swings', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Box Jumps', 'sets': 4, 'reps': '10-12'},
            {
              'exercise': 'Mountain Climbers',
              'sets': 4,
              'reps': '20-30 seconds'
            },
          ],
        },
      },
    },
    "weightLossFemaleGym": {
      "Beginner": {
        "3": {
          "Day 1": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 2": [
            {
              'exercise': 'Cardio (30 min brisk walking or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Russian Twists)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 3": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Seated Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (30 min brisk walking or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Russian Twists)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (30 min brisk walking or cycling)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 5": [
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Cardio (30 min moderate intensity)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (30 min moderate intensity)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 5": [
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 6": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {
              'exercise': 'Mountain Climbers',
              'sets': 3,
              'reps': '20-30 seconds'
            },
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 2": [
            {
              'exercise': 'Cardio (40 min running or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {'exercise': 'Core (Planks, Leg Raises)', 'sets': '-', 'reps': '-'},
          ],
          "Day 3": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (40 min running or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {'exercise': 'Core (Planks, Leg Raises)', 'sets': '-', 'reps': '-'},
          ],
          "Day 4": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (40 min running or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {'exercise': 'Core (Planks, Leg Raises)', 'sets': '-', 'reps': '-'},
          ],
          "Day 4": [
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 5": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Goblet Squats', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (40 min running or cycling)',
              'sets': '-',
              'reps': '-'
            },
            {'exercise': 'Core (Planks, Leg Raises)', 'sets': '-', 'reps': '-'},
          ],
          "Day 4": [
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 5": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Goblet Squats', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Cardio (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 6": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Kettlebell Swings', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Box Jumps', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Mountain Climbers',
              'sets': 3,
              'reps': '20-30 seconds'
            },
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
      },
      "Advanced": {
        "3": {
          "Day 1": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 2": [
            {
              'exercise': 'Cardio (45 min running or HIIT)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Bicycle Crunches)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 3": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Weighted Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (45 min running or HIIT)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Bicycle Crunches)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Weighted Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (45 min running or HIIT)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Bicycle Crunches)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 5": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Goblet Squats', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bent-Over Rows', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 2": [
            {'exercise': 'Squats', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Deadlifts', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Leg Press', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 3": [
            {
              'exercise': 'Cardio (45 min running or HIIT)',
              'sets': '-',
              'reps': '-'
            },
            {
              'exercise': 'Core (Planks, Bicycle Crunches)',
              'sets': '-',
              'reps': '-'
            },
          ],
          "Day 4": [
            {'exercise': 'Pull-Ups', 'sets': 3, 'reps': '6-10'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Shoulder Press', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 5": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Hamstring Curls', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Goblet Squats', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
          "Day 6": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Kettlebell Swings', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Box Jumps', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Mountain Climbers',
              'sets': 3,
              'reps': '20-30 seconds'
            },
            {'exercise': 'HIIT (20 min)', 'sets': '-', 'reps': '-'},
          ],
        },
      },
    },
    "muscleGainMaleHome": {
      'Beginner': {
        "3": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Dumbbell Flyes', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 3": [
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '12-15'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 4": [
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 6": [
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 4": [
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 5": [
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 6": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Bicep Curls', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 4": [
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 5": [
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 6": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          'Day 7': [
            {'exercise': 'Bodyweight Exercises', 'sets': 3, 'reps': '10-15'},
          ],
        },
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {'exercise': 'Incline Push-Ups', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Dumbbell Flyes', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 2": [
            {
              'exercise': 'Bulgarian Split Squats',
              'sets': 4,
              'reps': '10-12 each leg'
            },
            {'exercise': 'Dumbbell Deadlifts', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 3": [
            {'exercise': 'One-Arm Dumbbell Rows', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '10-12'},
            {
              'exercise': 'Overhead Tricep Extensions',
              'sets': 4,
              'reps': '10-12'
            },
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Incline Push-Ups', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 4, 'reps': '8-10'},
          ],
          "Day 2": [
            {
              'exercise': 'Bulgarian Split Squats',
              'sets': 4,
              'reps': '10-12 each leg'
            },
            {'exercise': 'Dumbbell Deadlifts', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 4": [
            {'exercise': 'One-Arm Dumbbell Rows', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 6": [
            {
              'exercise': 'Overhead Tricep Extensions',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Incline Push-Ups', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 4, 'reps': '8-10'},
          ],
          "Day 2": [
            {
              'exercise': 'Bulgarian Split Squats',
              'sets': 4,
              'reps': '10-12 each leg'
            },
            {'exercise': 'Dumbbell Deadlifts', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'One-Arm Dumbbell Rows', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 4": [
            {
              'exercise': 'Overhead Tricep Extensions',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 5": [
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 6": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Incline Push-Ups', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 4, 'reps': '8-10'},
          ],
          "Day 2": [
            {
              'exercise': 'Bulgarian Split Squats',
              'sets': 4,
              'reps': '10-12 each leg'
            },
            {'exercise': 'Dumbbell Deadlifts', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 3": [
            {'exercise': 'One-Arm Dumbbell Rows', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bicep Curls', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 4": [
            {
              'exercise': 'Overhead Tricep Extensions',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 5": [
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 6": [
            {'exercise': 'Dumbbell Flyes', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '12-15'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
      },
      'Advanced': {
        "3": {
          "Day 1": [
            {'exercise': 'Decline Push-Ups', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 4, 'reps': '6-8'},
            {'exercise': 'Dumbbell Flyes', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Dumbbell Pullover', 'sets': 3, 'reps': '10-12'},
          ],
          "Day 2": [
            {'exercise': 'Pistol Squats', 'sets': 4, 'reps': '6-8 each leg'},
            {'exercise': 'Dumbbell Deadlifts', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Bulgarian Split Squats', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 3": [
            {'exercise': 'Renegade Rows', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Dumbbell Bicep Curls', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Decline Push-Ups', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 4, 'reps': '6-8'},
          ],
          "Day 2": [
            {'exercise': 'Pistol Squats', 'sets': 4, 'reps': '6-8 each leg'},
            {'exercise': 'Dumbbell Deadlifts', 'sets': 4, 'reps': '8-10'},
          ],
          "Day 3": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 4": [
            {'exercise': 'Renegade Rows', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Dumbbell Bicep Curls', 'sets': 4, 'reps': '8-10'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 6": [
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Decline Push-Ups', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 4, 'reps': '6-8'},
          ],
          "Day 2": [
            {'exercise': 'Pistol Squats', 'sets': 4, 'reps': '6-8 each leg'},
            {'exercise': 'Dumbbell Deadlifts', 'sets': 4, 'reps': '8-10'},
          ],
          "Day 3": [
            {'exercise': 'Renegade Rows', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Dumbbell Bicep Curls', 'sets': 4, 'reps': '8-10'},
          ],
          "Day 4": [
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 5": [
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Dumbbell Flyes', 'sets': 4, 'reps': '8-10'},
          ],
          "Day 6": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Decline Push-Ups', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Dumbbell Bench Press', 'sets': 4, 'reps': '6-8'},
          ],
          "Day 2": [
            {'exercise': 'Pistol Squats', 'sets': 4, 'reps': '6-8 each leg'},
            {'exercise': 'Dumbbell Deadlifts', 'sets': 4, 'reps': '8-10'},
          ],
          "Day 3": [
            {'exercise': 'Renegade Rows', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Dumbbell Bicep Curls', 'sets': 4, 'reps': '8-10'},
          ],
          "Day 4": [
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Lateral Raises', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 5": [
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Dumbbell Flyes', 'sets': 4, 'reps': '8-10'},
          ],
          "Day 6": [
            {'exercise': 'Dumbbell Pullovers', 'sets': 4, 'reps': '10-12'},
            {'exercise': 'Calf Raises', 'sets': 4, 'reps': '15-20'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
      },
    },
    "weightLossMaleHome": {
      'Beginner': {
        "3": {
          "Day 1": [
            {'exercise': 'Jumping Jacks', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Jumping Jacks', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 4": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 5": [
            {'exercise': 'Mountain Climbers', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Plank', 'sets': 3, 'reps': '30 sec'},
          ],
          "Day 6": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Jumping Jacks', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 4": [
            {'exercise': 'Mountain Climbers', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Plank', 'sets': 3, 'reps': '30 sec'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 6": [
            {'exercise': 'Jumping Jacks', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Jumping Jacks', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Burpees', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 4": [
            {'exercise': 'Mountain Climbers', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Plank', 'sets': 3, 'reps': '30 sec'},
          ],
          "Day 5": [
            {'exercise': 'Jumping Jacks', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 6": [
            {'exercise': 'High Knees', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {'exercise': 'Burpees', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Dumbbell Squats', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Dumbbell Rows', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '15-20 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Mountain Climbers', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Glute Bridges', 'sets': 4, 'reps': '15-20'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Burpees', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Dumbbell Squats', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Dumbbell Rows', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '15-20 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 4": [
            {'exercise': 'Mountain Climbers', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Glute Bridges', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 5": [
            {'exercise': 'Jumping Jacks', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Plank', 'sets': 4, 'reps': '45 sec'},
          ],
          "Day 6": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Burpees', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Dumbbell Squats', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Dumbbell Rows', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '15-20 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Mountain Climbers', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Glute Bridges', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Jumping Jacks', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Plank', 'sets': 4, 'reps': '45 sec'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 6": [
            {'exercise': 'Burpees', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Dumbbell Squats', 'sets': 4, 'reps': '15-20'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Burpees', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Dumbbell Squats', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Dumbbell Rows', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '15-20 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Mountain Climbers', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Tricep Dips', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Glute Bridges', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Jumping Jacks', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Plank', 'sets': 4, 'reps': '45 sec'},
          ],
          "Day 5": [
            {'exercise': 'Burpees', 'sets': 4, 'reps': '15-20'},
            {'exercise': 'Push-Ups', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Dumbbell Squats', 'sets': 4, 'reps': '15-20'},
          ],
          "Day 6": [
            {'exercise': 'High Knees', 'sets': 4, 'reps': '45 sec'},
            {'exercise': 'Dumbbell Rows', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Lunges', 'sets': 4, 'reps': '15-20 each leg'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
      },
      'Advanced': {
        "3": {
          "Day 1": [
            {'exercise': 'Burpees', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Push-Ups', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Dumbbell Squats', 'sets': 5, 'reps': '20-25'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Dumbbell Rows', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 5, 'reps': '20-25 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Mountain Climbers', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Tricep Dips', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Glute Bridges', 'sets': 5, 'reps': '20-25'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Burpees', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Push-Ups', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Dumbbell Squats', 'sets': 5, 'reps': '20-25'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Dumbbell Rows', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 5, 'reps': '20-25 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 4": [
            {'exercise': 'Mountain Climbers', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Tricep Dips', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Glute Bridges', 'sets': 5, 'reps': '20-25'},
          ],
          "Day 5": [
            {'exercise': 'Jumping Jacks', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Plank', 'sets': 5, 'reps': '1 min'},
          ],
          "Day 6": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Burpees', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Push-Ups', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Dumbbell Squats', 'sets': 5, 'reps': '20-25'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Dumbbell Rows', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 5, 'reps': '20-25 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Mountain Climbers', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Tricep Dips', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Glute Bridges', 'sets': 5, 'reps': '20-25'},
          ],
          "Day 4": [
            {'exercise': 'Jumping Jacks', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Plank', 'sets': 5, 'reps': '1 min'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 6": [
            {'exercise': 'Burpees', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Push-Ups', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Dumbbell Squats', 'sets': 5, 'reps': '20-25'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Burpees', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Push-Ups', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Dumbbell Squats', 'sets': 5, 'reps': '20-25'},
          ],
          "Day 2": [
            {'exercise': 'High Knees', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Dumbbell Rows', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 5, 'reps': '20-25 each leg'},
          ],
          "Day 3": [
            {'exercise': 'Mountain Climbers', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Tricep Dips', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Glute Bridges', 'sets': 5, 'reps': '20-25'},
          ],
          "Day 4": [
            {'exercise': 'Jumping Jacks', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Dumbbell Shoulder Press', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Plank', 'sets': 5, 'reps': '1 min'},
          ],
          "Day 5": [
            {'exercise': 'Burpees', 'sets': 5, 'reps': '20-25'},
            {'exercise': 'Push-Ups', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Dumbbell Squats', 'sets': 5, 'reps': '20-25'},
          ],
          "Day 6": [
            {'exercise': 'High Knees', 'sets': 5, 'reps': '1 min'},
            {'exercise': 'Dumbbell Rows', 'sets': 5, 'reps': '15-20'},
            {'exercise': 'Lunges', 'sets': 5, 'reps': '20-25 each leg'},
          ],
          'Day 7': [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
      },
    },
    "keepFitMaleHome": {
      'Beginner': {
        "3": {
          "Day 1": [
            {'exercise': 'Body weight Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Plank', 'sets': 1, 'reps': '30 sec - 1 min'},
          ],
          "Day 2": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '15-20 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Jumping Jacks', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Plank', 'sets': 1, 'reps': '30 sec - 1 min'},
          ],
          "Day 2": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '15-20 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Jumping Jacks', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 4": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Plank', 'sets': 1, 'reps': '30 sec - 1 min'},
          ],
          "Day 2": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '15-20 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Jumping Jacks', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 4": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Push-Ups', 'sets': 3, 'reps': '8-12'},
            {'exercise': 'Plank', 'sets': 1, 'reps': '30 sec - 1 min'},
          ],
          "Day 2": [
            {'exercise': 'Lunges', 'sets': 3, 'reps': '10-12 each leg'},
            {'exercise': 'Dumbbell Rows', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '15-20 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Jumping Jacks', 'sets': 3, 'reps': '30 sec'},
            {'exercise': 'Tricep Dips', 'sets': 3, 'reps': '10-15'},
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'},
          ],
          "Day 4": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 6": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Push-Ups (elevated)', 'sets': 4, 'reps': '10-15'},
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {'exercise': 'Inverted Rows', 'sets': 4, 'reps': '10-12'},
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '20-25 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '15-20'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Push-Ups (elevated)', 'sets': 4, 'reps': '10-15'},
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {'exercise': 'Inverted Rows', 'sets': 4, 'reps': '10-12'},
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '20-25 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Push-Ups (elevated)', 'sets': 4, 'reps': '10-15'},
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {'exercise': 'Inverted Rows', 'sets': 4, 'reps': '10-12'},
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '20-25 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Push-Ups (elevated)', 'sets': 4, 'reps': '10-15'},
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {'exercise': 'Inverted Rows', 'sets': 4, 'reps': '10-12'},
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '20-25 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '15-20'},
          ],
          "Day 4": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 6": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
      },
      'Advanced': {
        "3": {
          "Day 1": [
            {'exercise': 'Barbell Squats', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Push-Ups', 'sets': 5, 'reps': '10-12'},
            {
              'exercise': 'Plank with Leg Lifts',
              'sets': 4,
              'reps': '12-15 per leg'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Bulgarian Split Squats with Dumbbells',
              'sets': 5,
              'reps': '8-10 each leg'
            },
            {'exercise': 'Pull-Ups (weighted)', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 4,
              'reps': '15-20 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Box Jumps', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Dips', 'sets': 5, 'reps': '10-12'},
            {'exercise': 'Plank to Push-Up', 'sets': 4, 'reps': '10-12'},
          ],
        },
        "4": {
          "Day 1": [
            {'exercise': 'Barbell Squats', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Push-Ups', 'sets': 5, 'reps': '10-12'},
            {
              'exercise': 'Plank with Leg Lifts',
              'sets': 4,
              'reps': '12-15 per leg'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Bulgarian Split Squats with Dumbbells',
              'sets': 5,
              'reps': '8-10 each leg'
            },
            {'exercise': 'Pull-Ups (weighted)', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 4,
              'reps': '15-20 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Box Jumps', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Dips', 'sets': 5, 'reps': '10-12'},
            {'exercise': 'Plank to Push-Up', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 4": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "5": {
          "Day 1": [
            {'exercise': 'Barbell Squats', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Push-Ups', 'sets': 5, 'reps': '10-12'},
            {
              'exercise': 'Plank with Leg Lifts',
              'sets': 4,
              'reps': '12-15 per leg'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Bulgarian Split Squats with Dumbbells',
              'sets': 5,
              'reps': '8-10 each leg'
            },
            {'exercise': 'Pull-Ups (weighted)', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 4,
              'reps': '15-20 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Box Jumps', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Dips', 'sets': 5, 'reps': '10-12'},
            {'exercise': 'Plank to Push-Up', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 4": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
        "6": {
          "Day 1": [
            {'exercise': 'Barbell Squats', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Push-Ups', 'sets': 5, 'reps': '10-12'},
            {
              'exercise': 'Plank with Leg Lifts',
              'sets': 4,
              'reps': '12-15 per leg'
            },
          ],
          "Day 2": [
            {
              'exercise': 'Bulgarian Split Squats with Dumbbells',
              'sets': 5,
              'reps': '8-10 each leg'
            },
            {'exercise': 'Pull-Ups (weighted)', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 4,
              'reps': '15-20 per side'
            },
          ],
          "Day 3": [
            {'exercise': 'Box Jumps', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Dips', 'sets': 5, 'reps': '10-12'},
            {'exercise': 'Plank to Push-Up', 'sets': 4, 'reps': '10-12'},
          ],
          "Day 4": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 5": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
          "Day 6": [
            {'exercise': 'Rest', 'sets': 0, 'reps': '0'},
          ],
        },
      },
    },
    "muscleGainFemaleHome": {
      "Beginner": {
        "3": {
          "Day 1": [
            {"exercise": "Bodyweight Squats", "sets": 3, "reps": "12-15"},
            {
              "exercise": "Push-Ups (knee or regular)",
              "sets": 3,
              "reps": "8-12"
            },
            {"exercise": "Plank", "sets": 1, "reps": "30 sec - 1 min"}
          ],
          "Day 2": [
            {
              "exercise": "Lunges (bodyweight)",
              "sets": 3,
              "reps": "10-12 each leg"
            },
            {
              "exercise": "Dumbbell Rows (or Bent-Over Rows)",
              "sets": 3,
              "reps": "10-12"
            },
            {
              "exercise": "Bicycle Crunches",
              "sets": 3,
              "reps": "15-20 per side"
            }
          ],
          "Day 3": [
            {"exercise": "Glute Bridges", "sets": 3, "reps": "12-15"},
            {
              "exercise": "Tricep Dips (using a chair)",
              "sets": 3,
              "reps": "10-15"
            },
            {"exercise": "Superman Exercise", "sets": 3, "reps": "12-15"}
          ]
        },
        "4": {
          "Day 1": [
            {"exercise": "Bodyweight Squats", "sets": 3, "reps": "12-15"},
            {
              "exercise": "Push-Ups (knee or regular)",
              "sets": 3,
              "reps": "8-12"
            },
            {"exercise": "Plank", "sets": 1, "reps": "30 sec - 1 min"}
          ],
          "Day 2": [
            {
              "exercise": "Lunges (bodyweight)",
              "sets": 3,
              "reps": "10-12 each leg"
            },
            {
              "exercise": "Dumbbell Rows (or Bent-Over Rows)",
              "sets": 3,
              "reps": "10-12"
            },
            {
              "exercise": "Bicycle Crunches",
              "sets": 3,
              "reps": "15-20 per side"
            }
          ],
          "Day 3": [
            {"exercise": "Glute Bridges", "sets": 3, "reps": "12-15"},
            {
              "exercise": "Tricep Dips (using a chair)",
              "sets": 3,
              "reps": "10-15"
            },
            {"exercise": "Superman Exercise", "sets": 3, "reps": "12-15"}
          ],
          "Day 4": [
            {"exercise": "Bodyweight Squats", "sets": 3, "reps": "12-15"},
            {
              "exercise": "Lunges (bodyweight)",
              "sets": 3,
              "reps": "10-12 each leg"
            },
            {
              "exercise": "Bicycle Crunches",
              "sets": 3,
              "reps": "15-20 per side"
            }
          ]
        },
        "5": {
          "Day 1": [
            {"exercise": "Bodyweight Squats", "sets": 3, "reps": "12-15"},
            {
              "exercise": "Push-Ups (knee or regular)",
              "sets": 3,
              "reps": "8-12"
            },
            {"exercise": "Plank", "sets": 1, "reps": "30 sec - 1 min"}
          ],
          "Day 2": [
            {
              "exercise": "Lunges (bodyweight)",
              "sets": 3,
              "reps": "10-12 each leg"
            },
            {
              "exercise": "Dumbbell Rows (or Bent-Over Rows)",
              "sets": 3,
              "reps": "10-12"
            },
            {
              "exercise": "Bicycle Crunches",
              "sets": 3,
              "reps": "15-20 per side"
            }
          ],
          "Day 3": [
            {"exercise": "Glute Bridges", "sets": 3, "reps": "12-15"},
            {
              "exercise": "Tricep Dips (using a chair)",
              "sets": 3,
              "reps": "10-15"
            },
            {"exercise": "Superman Exercise", "sets": 3, "reps": "12-15"}
          ],
          "Day 4": [
            {"exercise": "Bodyweight Squats", "sets": 3, "reps": "12-15"},
            {
              "exercise": "Lunges (bodyweight)",
              "sets": 3,
              "reps": "10-12 each leg"
            },
            {
              "exercise": "Dumbbell Rows (or Bent-Over Rows)",
              "sets": 3,
              "reps": "10-12"
            }
          ],
          "Day 5": [
            {
              "exercise": "Bicycle Crunches",
              "sets": 3,
              "reps": "15-20 per side"
            },
            {"exercise": "Glute Bridges", "sets": 3, "reps": "12-15"},
            {"exercise": "Superman Exercise", "sets": 3, "reps": "12-15"}
          ]
        },
        "6": {
          "Day 1": [
            {"exercise": "Bodyweight Squats", "sets": 3, "reps": "12-15"},
            {
              "exercise": "Push-Ups (knee or regular)",
              "sets": 3,
              "reps": "8-12"
            },
            {"exercise": "Plank", "sets": 1, "reps": "30 sec - 1 min"}
          ],
          "Day 2": [
            {
              "exercise": "Lunges (bodyweight)",
              "sets": 3,
              "reps": "10-12 each leg"
            },
            {
              "exercise": "Dumbbell Rows (or Bent-Over Rows)",
              "sets": 3,
              "reps": "10-12"
            },
            {
              "exercise": "Bicycle Crunches",
              "sets": 3,
              "reps": "15-20 per side"
            }
          ],
          "Day 3": [
            {"exercise": "Glute Bridges", "sets": 3, "reps": "12-15"},
            {
              "exercise": "Tricep Dips (using a chair)",
              "sets": 3,
              "reps": "10-15"
            },
            {"exercise": "Superman Exercise", "sets": 3, "reps": "12-15"}
          ],
          "Day 4": [
            {"exercise": "Bodyweight Squats", "sets": 3, "reps": "12-15"},
            {
              "exercise": "Lunges (bodyweight)",
              "sets": 3,
              "reps": "10-12 each leg"
            },
            {
              "exercise": "Dumbbell Rows (or Bent-Over Rows)",
              "sets": 3,
              "reps": "10-12"
            }
          ],
          "Day 5": [
            {
              "exercise": "Bicycle Crunches",
              "sets": 3,
              "reps": "15-20 per side"
            },
            {"exercise": "Glute Bridges", "sets": 3, "reps": "12-15"},
            {"exercise": "Superman Exercise", "sets": 3, "reps": "12-15"}
          ],
          "Day 6": [
            {
              "exercise": "Push-Ups (knee or regular)",
              "sets": 3,
              "reps": "8-12"
            },
            {
              "exercise": "Tricep Dips (using a chair)",
              "sets": 3,
              "reps": "10-15"
            },
            {"exercise": "Plank", "sets": 1, "reps": "30 sec - 1 min"}
          ]
        }
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            }
          ],
          "Day 2": [
            {
              'exercise': 'Push-Ups (regular or incline)',
              'sets': 4,
              'reps': '10-12'
            },
            {
              'exercise': 'Inverted Rows (using a table)',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Leg Raises', 'sets': 3, 'reps': '15-20'}
          ],
          "Day 3": [
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (using parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 3,
              'reps': '15-20 per side'
            }
          ]
        },
        "4": {
          "Day 1": [
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            }
          ],
          "Day 2": [
            {
              'exercise': 'Push-Ups (regular or incline)',
              'sets': 4,
              'reps': '10-12'
            },
            {
              'exercise': 'Inverted Rows (using a table)',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Leg Raises', 'sets': 3, 'reps': '15-20'}
          ],
          "Day 3": [
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (using parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 3,
              'reps': '15-20 per side'
            }
          ],
          "Day 4": [
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            }
          ]
        },
        "5": {
          "Day 1": [
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            }
          ],
          "Day 2": [
            {
              'exercise': 'Push-Ups (regular or incline)',
              'sets': 4,
              'reps': '10-12'
            },
            {
              'exercise': 'Inverted Rows (using a table)',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Leg Raises', 'sets': 3, 'reps': '15-20'}
          ],
          "Day 3": [
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (using parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 3,
              'reps': '15-20 per side'
            }
          ],
          "Day 4": [
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            }
          ],
          "Day 5": [
            {
              'exercise': 'Push-Ups (regular or incline)',
              'sets': 4,
              'reps': '10-12'
            },
            {
              'exercise': 'Inverted Rows (using a table)',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Leg Raises', 'sets': 3, 'reps': '15-20'}
          ]
        },
        "6": {
          "Day 1": [
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            }
          ],
          "Day 2": [
            {
              'exercise': 'Push-Ups (regular or incline)',
              'sets': 4,
              'reps': '10-12'
            },
            {
              'exercise': 'Inverted Rows (using a table)',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Leg Raises', 'sets': 3, 'reps': '15-20'}
          ],
          "Day 3": [
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (using parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 3,
              'reps': '15-20 per side'
            }
          ],
          "Day 4": [
            {'exercise': 'Goblet Squats', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            }
          ],
          "Day 5": [
            {
              'exercise': 'Push-Ups (regular or incline)',
              'sets': 4,
              'reps': '10-12'
            },
            {
              'exercise': 'Inverted Rows (using a table)',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Leg Raises', 'sets': 3, 'reps': '15-20'}
          ],
          "Day 6": [
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (using parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 3,
              'reps': '15-20 per side'
            }
          ]
        }
      },
      "Advanced": {
        "3": {
          "Day 1": [
            {'exercise': 'Barbell Squats', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Bulgarian Split Squats with Dumbbells',
              'sets': 5,
              'reps': '8-10 each leg'
            },
            {
              'exercise': 'Plank with Leg Lifts',
              'sets': 4,
              'reps': '12-15 per leg'
            }
          ],
          "Day 2": [
            {'exercise': 'Weighted Push-Ups', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 4,
              'reps': '15-20 per side'
            }
          ],
          "Day 3": [
            {'exercise': 'Box Jumps', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Dips', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Plank to Push-Up', 'sets': 4, 'reps': '10-12'}
          ]
        },
        "4": {
          "Day 1": [
            {'exercise': 'Barbell Squats', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Bulgarian Split Squats with Dumbbells',
              'sets': 5,
              'reps': '8-10 each leg'
            },
            {
              'exercise': 'Plank with Leg Lifts',
              'sets': 4,
              'reps': '12-15 per leg'
            }
          ],
          "Day 2": [
            {'exercise': 'Weighted Push-Ups', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 4,
              'reps': '15-20 per side'
            }
          ],
          "Day 3": [
            {'exercise': 'Box Jumps', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Dips', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Plank to Push-Up', 'sets': 4, 'reps': '10-12'}
          ],
          "Day 4": [
            {'exercise': 'Barbell Squats', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Bulgarian Split Squats with Dumbbells',
              'sets': 5,
              'reps': '8-10 each leg'
            },
            {
              'exercise': 'Plank with Leg Lifts',
              'sets': 4,
              'reps': '12-15 per leg'
            }
          ]
        },
        "5": {
          "Day 1": [
            {'exercise': 'Barbell Squats', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Bulgarian Split Squats with Dumbbells',
              'sets': 5,
              'reps': '8-10 each leg'
            },
            {
              'exercise': 'Plank with Leg Lifts',
              'sets': 4,
              'reps': '12-15 per leg'
            }
          ],
          "Day 2": [
            {'exercise': 'Weighted Push-Ups', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 4,
              'reps': '15-20 per side'
            }
          ],
          "Day 3": [
            {'exercise': 'Box Jumps', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Dips', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Plank to Push-Up', 'sets': 4, 'reps': '10-12'}
          ],
          "Day 4": [
            {'exercise': 'Barbell Squats', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Bulgarian Split Squats with Dumbbells',
              'sets': 5,
              'reps': '8-10 each leg'
            },
            {
              'exercise': 'Plank with Leg Lifts',
              'sets': 4,
              'reps': '12-15 per leg'
            }
          ],
          "Day 5": [
            {'exercise': 'Weighted Push-Ups', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 4,
              'reps': '15-20 per side'
            }
          ]
        },
        "6": {
          "Day 1": [
            {'exercise': 'Barbell Squats', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Bulgarian Split Squats with Dumbbells',
              'sets': 5,
              'reps': '8-10 each leg'
            },
            {
              'exercise': 'Plank with Leg Lifts',
              'sets': 4,
              'reps': '12-15 per leg'
            }
          ],
          "Day 2": [
            {'exercise': 'Weighted Push-Ups', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 4,
              'reps': '15-20 per side'
            }
          ],
          "Day 3": [
            {'exercise': 'Box Jumps', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Dips', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Plank to Push-Up', 'sets': 4, 'reps': '10-12'}
          ],
          "Day 4": [
            {'exercise': 'Barbell Squats', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Bulgarian Split Squats with Dumbbells',
              'sets': 5,
              'reps': '8-10 each leg'
            },
            {
              'exercise': 'Plank with Leg Lifts',
              'sets': 4,
              'reps': '12-15 per leg'
            }
          ],
          "Day 5": [
            {'exercise': 'Weighted Push-Ups', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 5, 'reps': '8-10'},
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 4,
              'reps': '15-20 per side'
            }
          ],
          "Day 6": [
            {'exercise': 'Box Jumps', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Weighted Dips', 'sets': 5, 'reps': '8-10'},
            {'exercise': 'Plank to Push-Up', 'sets': 4, 'reps': '10-12'}
          ]
        }
      }
    },
    "keepFitFemaleHome": {
      'Beginner': {
        "3": {
          "Day 1": [
            {
              'exercise': 'Brisk Walking or Jogging',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Push-Ups (knee or regular)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Plank', 'sets': 3, 'reps': '20-30 seconds'}
          ],
          "Day 2": [
            {
              'exercise': 'Yoga or Stretching Routine',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {
              'exercise': 'Lunges (bodyweight)',
              'sets': 3,
              'reps': '10-12 each leg'
            },
            {
              'exercise': 'Dumbbell Rows (or Bent-Over Rows)',
              'sets': 3,
              'reps': '10-12'
            },
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '12-15 per side'
            }
          ],
          "Day 3": [
            {
              'exercise': 'Dance Workout or Aerobics',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Tricep Dips (using a chair)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'}
          ]
        },
        "4": {
          "Day 1": [
            {
              'exercise': 'Brisk Walking or Jogging',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Push-Ups (knee or regular)',
              'sets': 3,
              'reps': '8-10'
            }
          ],
          "Day 2": [
            {'exercise': 'Plank', 'sets': 3, 'reps': '20-30 seconds'},
            {
              'exercise': 'Yoga or Stretching Routine',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {
              'exercise': 'Lunges (bodyweight)',
              'sets': 3,
              'reps': '10-12 each leg'
            }
          ],
          "Day 3": [
            {
              'exercise': 'Dumbbell Rows (or Bent-Over Rows)',
              'sets': 3,
              'reps': '10-12'
            },
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '12-15 per side'
            },
            {
              'exercise': 'Dance Workout or Aerobics',
              'sets': 1,
              'reps': '20-30 minutes'
            }
          ],
          "Day 4": [
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Tricep Dips (using a chair)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'}
          ]
        },
        "5": {
          "Day 1": [
            {
              'exercise': 'Brisk Walking or Jogging',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '10-12'}
          ],
          "Day 2": [
            {
              'exercise': 'Push-Ups (knee or regular)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Plank', 'sets': 3, 'reps': '20-30 seconds'},
            {
              'exercise': 'Yoga or Stretching Routine',
              'sets': 1,
              'reps': '20-30 minutes'
            }
          ],
          "Day 3": [
            {
              'exercise': 'Lunges (bodyweight)',
              'sets': 3,
              'reps': '10-12 each leg'
            },
            {
              'exercise': 'Dumbbell Rows (or Bent-Over Rows)',
              'sets': 3,
              'reps': '10-12'
            }
          ],
          "Day 4": [
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '12-15 per side'
            },
            {
              'exercise': 'Dance Workout or Aerobics',
              'sets': 1,
              'reps': '20-30 minutes'
            }
          ],
          "Day 5": [
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Tricep Dips (using a chair)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'}
          ]
        },
        "6": {
          "Day 1": [
            {
              'exercise': 'Brisk Walking or Jogging',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '10-12'}
          ],
          "Day 2": [
            {
              'exercise': 'Push-Ups (knee or regular)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Plank', 'sets': 3, 'reps': '20-30 seconds'}
          ],
          "Day 3": [
            {
              'exercise': 'Yoga or Stretching Routine',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {
              'exercise': 'Lunges (bodyweight)',
              'sets': 3,
              'reps': '10-12 each leg'
            }
          ],
          "Day 4": [
            {
              'exercise': 'Dumbbell Rows (or Bent-Over Rows)',
              'sets': 3,
              'reps': '10-12'
            },
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '12-15 per side'
            }
          ],
          "Day 5": [
            {
              'exercise': 'Dance Workout or Aerobics',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'}
          ],
          "Day 6": [
            {
              'exercise': 'Tricep Dips (using a chair)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'}
          ]
        }
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {
              'exercise': 'Running or Cycling',
              'sets': 1,
              'reps': '30-45 minutes'
            },
            {'exercise': 'Bodyweight Squats', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Push-Ups (regular or incline)',
              'sets': 4,
              'reps': '10-12'
            },
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            }
          ],
          "Day 2": [
            {'exercise': 'Pilates or Yoga', 'sets': 1, 'reps': '30-45 minutes'},
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {
              'exercise': 'Inverted Rows (using a table)',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Leg Raises', 'sets': 3, 'reps': '15-20'}
          ],
          "Day 3": [
            {
              'exercise': 'Dance Workout or Zumba',
              'sets': 1,
              'reps': '30-45 minutes'
            },
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (using parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 3,
              'reps': '15-20 per side'
            }
          ]
        },
        "4": {
          "Day 1": [
            {
              'exercise': 'Running or Cycling',
              'sets': 1,
              'reps': '30-45 minutes'
            },
            {'exercise': 'Bodyweight Squats', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Push-Ups (regular or incline)',
              'sets': 4,
              'reps': '10-12'
            }
          ],
          "Day 2": [
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            },
            {'exercise': 'Pilates or Yoga', 'sets': 1, 'reps': '30-45 minutes'},
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            }
          ],
          "Day 3": [
            {
              'exercise': 'Inverted Rows (using a table)',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Leg Raises', 'sets': 3, 'reps': '15-20'},
            {
              'exercise': 'Dance Workout or Zumba',
              'sets': 1,
              'reps': '30-45 minutes'
            }
          ],
          "Day 4": [
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (using parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 3,
              'reps': '15-20 per side'
            }
          ]
        },
        "5": {
          "Day 1": [
            {
              'exercise': 'Running or Cycling',
              'sets': 1,
              'reps': '30-45 minutes'
            },
            {'exercise': 'Bodyweight Squats', 'sets': 4, 'reps': '12-15'}
          ],
          "Day 2": [
            {
              'exercise': 'Push-Ups (regular or incline)',
              'sets': 4,
              'reps': '10-12'
            },
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            },
            {'exercise': 'Pilates or Yoga', 'sets': 1, 'reps': '30-45 minutes'}
          ],
          "Day 3": [
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            },
            {
              'exercise': 'Inverted Rows (using a table)',
              'sets': 4,
              'reps': '10-12'
            }
          ],
          "Day 4": [
            {'exercise': 'Leg Raises', 'sets': 3, 'reps': '15-20'},
            {
              'exercise': 'Dance Workout or Zumba',
              'sets': 1,
              'reps': '30-45 minutes'
            }
          ],
          "Day 5": [
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'},
            {
              'exercise': 'Tricep Dips (using parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 3,
              'reps': '15-20 per side'
            }
          ]
        },
        "6": {
          "Day 1": [
            {
              'exercise': 'Running or Cycling',
              'sets': 1,
              'reps': '30-45 minutes'
            },
            {'exercise': 'Bodyweight Squats', 'sets': 4, 'reps': '12-15'}
          ],
          "Day 2": [
            {
              'exercise': 'Push-Ups (regular or incline)',
              'sets': 4,
              'reps': '10-12'
            },
            {
              'exercise': 'Plank with Shoulder Taps',
              'sets': 3,
              'reps': '12-15 taps'
            }
          ],
          "Day 3": [
            {'exercise': 'Pilates or Yoga', 'sets': 1, 'reps': '30-45 minutes'},
            {
              'exercise': 'Walking Lunges with Dumbbells',
              'sets': 4,
              'reps': '12-15 each leg'
            }
          ],
          "Day 4": [
            {
              'exercise': 'Inverted Rows (using a table)',
              'sets': 4,
              'reps': '10-12'
            },
            {'exercise': 'Leg Raises', 'sets': 3, 'reps': '15-20'}
          ],
          "Day 5": [
            {
              'exercise': 'Dance Workout or Zumba',
              'sets': 1,
              'reps': '30-45 minutes'
            },
            {'exercise': 'Jump Squats', 'sets': 4, 'reps': '15-20'}
          ],
          "Day 6": [
            {
              'exercise': 'Tricep Dips (using parallel bars)',
              'sets': 4,
              'reps': '12-15'
            },
            {
              'exercise': 'Russian Twists (with weight)',
              'sets': 3,
              'reps': '15-20 per side'
            }
          ]
        }
      },
      "Advanced": {
        "3": {
          "Day 1": [
            {
              'exercise': 'High-Intensity Interval Training (HIIT)',
              'sets': 1,
              'reps': '30-45 minutes'
            },
            {'exercise': 'Plyometric Exercises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Hanging Leg Raises', 'sets': 3, 'reps': '12-15'}
          ],
          "Day 2": [
            {
              'exercise': 'Advanced Yoga or Pilates',
              'sets': 1,
              'reps': '45-60 minutes'
            },
            {'exercise': 'Box Jumps', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Handstand Push-Ups (or pike push-ups)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Windshield Wipers',
              'sets': 3,
              'reps': '12-15 per side'
            }
          ],
          "Day 3": [
            {
              'exercise': 'Advanced Cardio Circuit',
              'sets': 1,
              'reps': '45-60 minutes'
            },
            {
              'exercise': 'Deadlifts (with barbell or dumbbells)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Bulgarian Split Squats (with weights)',
              'sets': 4,
              'reps': '10-12 each leg'
            },
            {'exercise': 'Hanging Leg Raises', 'sets': 3, 'reps': '12-15'}
          ]
        },
        "4": {
          "Day 1": [
            {
              'exercise': 'High-Intensity Interval Training (HIIT)',
              'sets': 1,
              'reps': '30-45 minutes'
            },
            {'exercise': 'Plyometric Exercises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Hanging Leg Raises', 'sets': 3, 'reps': '12-15'}
          ],
          "Day 2": [
            {
              'exercise': 'Advanced Yoga or Pilates',
              'sets': 1,
              'reps': '45-60 minutes'
            },
            {'exercise': 'Box Jumps', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Handstand Push-Ups (or pike push-ups)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Windshield Wipers',
              'sets': 3,
              'reps': '12-15 per side'
            }
          ],
          "Day 3": [
            {
              'exercise': 'Advanced Cardio Circuit',
              'sets': 1,
              'reps': '45-60 minutes'
            },
            {
              'exercise': 'Deadlifts (with barbell or dumbbells)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Bulgarian Split Squats (with weights)',
              'sets': 4,
              'reps': '10-12 each leg'
            },
            {'exercise': 'Hanging Leg Raises', 'sets': 3, 'reps': '12-15'}
          ],
          "Day 4": [
            {'exercise': 'Box Jumps', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Handstand Push-Ups (or pike push-ups)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Windshield Wipers',
              'sets': 3,
              'reps': '12-15 per side'
            },
            {'exercise': 'Plyometric Exercises', 'sets': 4, 'reps': '12-15'}
          ]
        },
        "5": {
          "Day 1": [
            {
              'exercise': 'High-Intensity Interval Training (HIIT)',
              'sets': 1,
              'reps': '30-45 minutes'
            },
            {'exercise': 'Plyometric Exercises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Hanging Leg Raises', 'sets': 3, 'reps': '12-15'}
          ],
          "Day 2": [
            {
              'exercise': 'Advanced Yoga or Pilates',
              'sets': 1,
              'reps': '45-60 minutes'
            },
            {'exercise': 'Box Jumps', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Handstand Push-Ups (or pike push-ups)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Windshield Wipers',
              'sets': 3,
              'reps': '12-15 per side'
            }
          ],
          "Day 3": [
            {
              'exercise': 'Advanced Cardio Circuit',
              'sets': 1,
              'reps': '45-60 minutes'
            },
            {
              'exercise': 'Deadlifts (with barbell or dumbbells)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Bulgarian Split Squats (with weights)',
              'sets': 4,
              'reps': '10-12 each leg'
            },
            {'exercise': 'Hanging Leg Raises', 'sets': 3, 'reps': '12-15'}
          ],
          "Day 4": [
            {'exercise': 'Box Jumps', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Handstand Push-Ups (or pike push-ups)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Windshield Wipers',
              'sets': 3,
              'reps': '12-15 per side'
            }
          ],
          "Day 5": [
            {'exercise': 'Plyometric Exercises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Hanging Leg Raises', 'sets': 3, 'reps': '12-15'}
          ]
        },
        "6": {
          "Day 1": [
            {
              'exercise': 'High-Intensity Interval Training (HIIT)',
              'sets': 1,
              'reps': '30-45 minutes'
            },
            {'exercise': 'Plyometric Exercises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 4, 'reps': '8-10'},
            {'exercise': 'Hanging Leg Raises', 'sets': 3, 'reps': '12-15'}
          ],
          "Day 2": [
            {
              'exercise': 'Advanced Yoga or Pilates',
              'sets': 1,
              'reps': '45-60 minutes'
            },
            {'exercise': 'Box Jumps', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Handstand Push-Ups (or pike push-ups)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Windshield Wipers',
              'sets': 3,
              'reps': '12-15 per side'
            }
          ],
          "Day 3": [
            {
              'exercise': 'Advanced Cardio Circuit',
              'sets': 1,
              'reps': '45-60 minutes'
            },
            {
              'exercise': 'Deadlifts (with barbell or dumbbells)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Bulgarian Split Squats (with weights)',
              'sets': 4,
              'reps': '10-12 each leg'
            },
            {'exercise': 'Hanging Leg Raises', 'sets': 3, 'reps': '12-15'}
          ],
          "Day 4": [
            {'exercise': 'Box Jumps', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Handstand Push-Ups (or pike push-ups)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Windshield Wipers',
              'sets': 3,
              'reps': '12-15 per side'
            }
          ],
          "Day 5": [
            {'exercise': 'Plyometric Exercises', 'sets': 4, 'reps': '12-15'},
            {'exercise': 'Pull-Ups (weighted)', 'sets': 4, 'reps': '8-10'}
          ],
          "Day 6": [
            {'exercise': 'Hanging Leg Raises', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Box Jumps', 'sets': 4, 'reps': '12-15'},
            {
              'exercise': 'Handstand Push-Ups (or pike push-ups)',
              'sets': 4,
              'reps': '8-10'
            },
            {
              'exercise': 'Windshield Wipers',
              'sets': 3,
              'reps': '12-15 per side'
            }
          ]
        }
      }
    },
    "weightLossFemaleHome": {
      "Beginner": {
        "3": {
          "Day 1": [
            {'exercise': 'Brisk Walking', 'sets': 1, 'reps': '20-30 minutes'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Push-Ups (knee or regular)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Plank', 'sets': 3, 'reps': '20-30 seconds'},
            {'exercise': 'Jumping Jacks', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 2": [
            {
              'exercise': 'Yoga or Stretching',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Walking Lunges', 'sets': 3, 'reps': '10-12 each leg'},
            {
              'exercise': 'Dumbbell Rows (or Bent-Over Rows)',
              'sets': 3,
              'reps': '10-12'
            },
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '12-15 per side'
            },
            {'exercise': 'High Knees', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 3": [
            {
              'exercise': 'Dance Workout or Aerobics',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Tricep Dips (using a chair)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Mountain Climbers', 'sets': 1, 'reps': '1 minute'}
          ]
        },
        "4": {
          "Day 1": [
            {'exercise': 'Brisk Walking', 'sets': 1, 'reps': '20-30 minutes'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Push-Ups (knee or regular)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Plank', 'sets': 3, 'reps': '20-30 seconds'},
            {'exercise': 'Jumping Jacks', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 2": [
            {
              'exercise': 'Yoga or Stretching',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Walking Lunges', 'sets': 3, 'reps': '10-12 each leg'},
            {
              'exercise': 'Dumbbell Rows (or Bent-Over Rows)',
              'sets': 3,
              'reps': '10-12'
            },
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '12-15 per side'
            },
            {'exercise': 'High Knees', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 3": [
            {
              'exercise': 'Dance Workout or Aerobics',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Tricep Dips (using a chair)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Mountain Climbers', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 4": [
            {'exercise': 'Brisk Walking', 'sets': 1, 'reps': '20-30 minutes'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Push-Ups (knee or regular)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Plank', 'sets': 3, 'reps': '20-30 seconds'},
            {'exercise': 'Jumping Jacks', 'sets': 1, 'reps': '1 minute'}
          ]
        },
        "5": {
          "Day 1": [
            {'exercise': 'Brisk Walking', 'sets': 1, 'reps': '20-30 minutes'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Push-Ups (knee or regular)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Plank', 'sets': 3, 'reps': '20-30 seconds'},
            {'exercise': 'Jumping Jacks', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 2": [
            {
              'exercise': 'Yoga or Stretching',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Walking Lunges', 'sets': 3, 'reps': '10-12 each leg'},
            {
              'exercise': 'Dumbbell Rows (or Bent-Over Rows)',
              'sets': 3,
              'reps': '10-12'
            },
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '12-15 per side'
            },
            {'exercise': 'High Knees', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 3": [
            {
              'exercise': 'Dance Workout or Aerobics',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Tricep Dips (using a chair)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Mountain Climbers', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 4": [
            {'exercise': 'Brisk Walking', 'sets': 1, 'reps': '20-30 minutes'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Push-Ups (knee or regular)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Plank', 'sets': 3, 'reps': '20-30 seconds'},
            {'exercise': 'Jumping Jacks', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 5": [
            {
              'exercise': 'Yoga or Stretching',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Walking Lunges', 'sets': 3, 'reps': '10-12 each leg'},
            {
              'exercise': 'Dumbbell Rows (or Bent-Over Rows)',
              'sets': 3,
              'reps': '10-12'
            },
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '12-15 per side'
            },
            {'exercise': 'High Knees', 'sets': 1, 'reps': '1 minute'}
          ]
        },
        "6": {
          "Day 1": [
            {'exercise': 'Brisk Walking', 'sets': 1, 'reps': '20-30 minutes'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Push-Ups (knee or regular)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Plank', 'sets': 3, 'reps': '20-30 seconds'},
            {'exercise': 'Jumping Jacks', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 2": [
            {
              'exercise': 'Yoga or Stretching',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Walking Lunges', 'sets': 3, 'reps': '10-12 each leg'},
            {
              'exercise': 'Dumbbell Rows (or Bent-Over Rows)',
              'sets': 3,
              'reps': '10-12'
            },
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '12-15 per side'
            },
            {'exercise': 'High Knees', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 3": [
            {
              'exercise': 'Dance Workout or Aerobics',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Tricep Dips (using a chair)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Mountain Climbers', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 4": [
            {'exercise': 'Brisk Walking', 'sets': 1, 'reps': '20-30 minutes'},
            {'exercise': 'Bodyweight Squats', 'sets': 3, 'reps': '10-12'},
            {
              'exercise': 'Push-Ups (knee or regular)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Plank', 'sets': 3, 'reps': '20-30 seconds'},
            {'exercise': 'Jumping Jacks', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 5": [
            {
              'exercise': 'Yoga or Stretching',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Walking Lunges', 'sets': 3, 'reps': '10-12 each leg'},
            {
              'exercise': 'Dumbbell Rows (or Bent-Over Rows)',
              'sets': 3,
              'reps': '10-12'
            },
            {
              'exercise': 'Bicycle Crunches',
              'sets': 3,
              'reps': '12-15 per side'
            },
            {'exercise': 'High Knees', 'sets': 1, 'reps': '1 minute'}
          ],
          "Day 6": [
            {
              'exercise': 'Dance Workout or Aerobics',
              'sets': 1,
              'reps': '20-30 minutes'
            },
            {'exercise': 'Glute Bridges', 'sets': 3, 'reps': '12-15'},
            {
              'exercise': 'Tricep Dips (using a chair)',
              'sets': 3,
              'reps': '8-10'
            },
            {'exercise': 'Superman Exercise', 'sets': 3, 'reps': '12-15'},
            {'exercise': 'Mountain Climbers', 'sets': 1, 'reps': '1 minute'}
          ]
        }
      },
      "Intermediate": {
        "3": {
          "Day 1": [
            {"exercise": "Running or Jogging", "duration": "30-45 minutes"},
            {"exercise": "Bodyweight Squats", "sets": 4, "reps": "12-15"},
            {
              "exercise": "Push-Ups (regular or incline)",
              "sets": 4,
              "reps": "10-12"
            },
            {
              "exercise": "Plank with Shoulder Taps",
              "sets": 3,
              "reps": "12-15 taps"
            },
            {"exercise": "Jump Rope", "duration": "2-3 minutes"}
          ],
          "Day 2": [
            {"exercise": "Yoga or Pilates", "duration": "30-45 minutes"},
            {
              "exercise": "Walking Lunges with Dumbbells",
              "sets": 4,
              "reps": "12-15 each leg"
            },
            {
              "exercise": "Inverted Rows (using a table)",
              "sets": 4,
              "reps": "10-12"
            },
            {"exercise": "Leg Raises", "sets": 3, "reps": "15-20"},
            {"exercise": "Jumping Jacks", "duration": "2-3 minutes"}
          ],
          "Day 3": [
            {"exercise": "Circuit Training", "duration": "30-45 minutes"},
            {"exercise": "Jump Squats", "sets": 4, "reps": "15-20"},
            {
              "exercise": "Tricep Dips (using parallel bars)",
              "sets": 4,
              "reps": "12-15"
            },
            {
              "exercise": "Russian Twists (with weight)",
              "sets": 3,
              "reps": "15-20 per side"
            },
            {"exercise": "Mountain Climbers", "duration": "2-3 minutes"}
          ]
        },
        "4": {
          "Day 1": [
            {"exercise": "Running or Jogging", "duration": "30-45 minutes"},
            {"exercise": "Bodyweight Squats", "sets": 4, "reps": "12-15"},
            {
              "exercise": "Push-Ups (regular or incline)",
              "sets": 4,
              "reps": "10-12"
            },
            {
              "exercise": "Plank with Shoulder Taps",
              "sets": 3,
              "reps": "12-15 taps"
            },
            {"exercise": "Jump Rope", "duration": "2-3 minutes"}
          ],
          "Day 2": [
            {"exercise": "Yoga or Pilates", "duration": "30-45 minutes"},
            {
              "exercise": "Walking Lunges with Dumbbells",
              "sets": 4,
              "reps": "12-15 each leg"
            },
            {
              "exercise": "Inverted Rows (using a table)",
              "sets": 4,
              "reps": "10-12"
            },
            {"exercise": "Leg Raises", "sets": 3, "reps": "15-20"},
            {"exercise": "Jumping Jacks", "duration": "2-3 minutes"}
          ],
          "Day 3": [
            {"exercise": "Circuit Training", "duration": "30-45 minutes"},
            {"exercise": "Jump Squats", "sets": 4, "reps": "15-20"},
            {
              "exercise": "Tricep Dips (using parallel bars)",
              "sets": 4,
              "reps": "12-15"
            },
            {
              "exercise": "Russian Twists (with weight)",
              "sets": 3,
              "reps": "15-20 per side"
            },
            {"exercise": "Mountain Climbers", "duration": "2-3 minutes"}
          ],
          "Day 4": [
            {
              "exercise": "Active Recovery (e.g., Walking)",
              "duration": "30-45 minutes"
            },
            {
              "exercise": "Light Stretching or Yoga",
              "duration": "15-20 minutes"
            }
          ]
        },
        "5": {
          "Day 1": [
            {"exercise": "Running or Jogging", "duration": "30-45 minutes"},
            {"exercise": "Bodyweight Squats", "sets": 4, "reps": "12-15"},
            {
              "exercise": "Push-Ups (regular or incline)",
              "sets": 4,
              "reps": "10-12"
            },
            {
              "exercise": "Plank with Shoulder Taps",
              "sets": 3,
              "reps": "12-15 taps"
            },
            {"exercise": "Jump Rope", "duration": "2-3 minutes"}
          ],
          "Day 2": [
            {"exercise": "Yoga or Pilates", "duration": "30-45 minutes"},
            {
              "exercise": "Walking Lunges with Dumbbells",
              "sets": 4,
              "reps": "12-15 each leg"
            },
            {
              "exercise": "Inverted Rows (using a table)",
              "sets": 4,
              "reps": "10-12"
            },
            {"exercise": "Leg Raises", "sets": 3, "reps": "15-20"},
            {"exercise": "Jumping Jacks", "duration": "2-3 minutes"}
          ],
          "Day 3": [
            {"exercise": "Circuit Training", "duration": "30-45 minutes"},
            {"exercise": "Jump Squats", "sets": 4, "reps": "15-20"},
            {
              "exercise": "Tricep Dips (using parallel bars)",
              "sets": 4,
              "reps": "12-15"
            },
            {
              "exercise": "Russian Twists (with weight)",
              "sets": 3,
              "reps": "15-20 per side"
            },
            {"exercise": "Mountain Climbers", "duration": "2-3 minutes"}
          ],
          "Day 4": [
            {
              "exercise": "Active Recovery (e.g., Walking)",
              "duration": "30-45 minutes"
            },
            {
              "exercise": "Light Stretching or Yoga",
              "duration": "15-20 minutes"
            }
          ],
          "Day 5": [
            {
              "exercise": "Active Recovery (e.g., Walking)",
              "duration": "30-45 minutes"
            },
            {
              "exercise": "Light Stretching or Yoga",
              "duration": "15-20 minutes"
            }
          ]
        },
        "6": {
          "Day 1": [
            {"exercise": "Running or Jogging", "duration": "30-45 minutes"},
            {"exercise": "Bodyweight Squats", "sets": 4, "reps": "12-15"},
            {
              "exercise": "Push-Ups (regular or incline)",
              "sets": 4,
              "reps": "10-12"
            },
            {
              "exercise": "Plank with Shoulder Taps",
              "sets": 3,
              "reps": "12-15 taps"
            },
            {"exercise": "Jump Rope", "duration": "2-3 minutes"}
          ],
          "Day 2": [
            {"exercise": "Yoga or Pilates", "duration": "30-45 minutes"},
            {
              "exercise": "Walking Lunges with Dumbbells",
              "sets": 4,
              "reps": "12-15 each leg"
            },
            {
              "exercise": "Inverted Rows (using a table)",
              "sets": 4,
              "reps": "10-12"
            },
            {"exercise": "Leg Raises", "sets": 3, "reps": "15-20"},
            {"exercise": "Jumping Jacks", "duration": "2-3 minutes"}
          ],
          "Day 3": [
            {"exercise": "Circuit Training", "duration": "30-45 minutes"},
            {"exercise": "Jump Squats", "sets": 4, "reps": "15-20"},
            {
              "exercise": "Tricep Dips (using parallel bars)",
              "sets": 4,
              "reps": "12-15"
            },
            {
              "exercise": "Russian Twists (with weight)",
              "sets": 3,
              "reps": "15-20 per side"
            },
            {"exercise": "Mountain Climbers", "duration": "2-3 minutes"}
          ],
          "Day 4": [
            {
              "exercise": "Active Recovery (e.g., Walking)",
              "duration": "30-45 minutes"
            },
            {
              "exercise": "Light Stretching or Yoga",
              "duration": "15-20 minutes"
            }
          ],
          "Day 5": [
            {
              "exercise": "Active Recovery (e.g., Walking)",
              "duration": "30-45 minutes"
            },
            {
              "exercise": "Light Stretching or Yoga",
              "duration": "15-20 minutes"
            }
          ],
          "Day 6": [
            {
              "exercise": "Active Recovery (e.g., Walking)",
              "duration": "30-45 minutes"
            },
            {
              "exercise": "Light Stretching or Yoga",
              "duration": "15-20 minutes"
            }
          ]
        }
      },
      "Advanced": {
        "3": {
          "Day 1": [
            {
              "exercise": "High-Intensity Interval Training (HIIT)",
              "duration": "30-45 minutes"
            },
            {"exercise": "Plyometric Exercises", "sets": 4, "reps": "12-15"},
            {"exercise": "Pull-Ups (weighted)", "sets": 4, "reps": "8-10"},
            {"exercise": "Hanging Leg Raises", "sets": 3, "reps": "12-15"},
            {"exercise": "Burpees", "sets": 1, "reps": "2-3 minutes"}
          ],
          "Day 2": [
            {
              "exercise": "Advanced Yoga or Pilates",
              "sets": "-",
              "reps": "45-60 minutes"
            },
            {"exercise": "Box Jumps", "sets": 4, "reps": "12-15"},
            {
              "exercise": "Handstand Push-Ups (or pike push-ups)",
              "sets": 4,
              "reps": "8-10"
            },
            {
              "exercise": "Windshield Wipers",
              "sets": 3,
              "reps": "12-15 per side"
            },
            {"exercise": "Jump Rope", "sets": 1, "reps": "2-3 minutes"}
          ],
          "Day 3": [
            {
              "exercise": "Advanced Cardio Circuit",
              "sets": "-",
              "reps": "45-60 minutes"
            },
            {
              "exercise": "Deadlifts (with barbell or dumbbells)",
              "sets": 4,
              "reps": "8-10"
            },
            {
              "exercise": "Bulgarian Split Squats (with weights)",
              "sets": 4,
              "reps": "10-12 each leg"
            },
            {"exercise": "Hanging Leg Raises", "sets": 3, "reps": "12-15"},
            {"exercise": "Burpees", "sets": 1, "reps": "2-3 minutes"}
          ]
        },
        "4": {
          "Day 1": [
            {
              "exercise": "High-Intensity Interval Training (HIIT)",
              "duration": "30-45 minutes"
            },
            {"exercise": "Plyometric Exercises", "sets": 4, "reps": "12-15"},
            {"exercise": "Pull-Ups (weighted)", "sets": 4, "reps": "8-10"},
            {"exercise": "Hanging Leg Raises", "sets": 3, "reps": "12-15"},
            {"exercise": "Burpees", "sets": 1, "reps": "2-3 minutes"}
          ],
          "Day 2": [
            {
              "exercise": "Advanced Yoga or Pilates",
              "sets": "-",
              "reps": "45-60 minutes"
            },
            {"exercise": "Box Jumps", "sets": 4, "reps": "12-15"},
            {
              "exercise": "Handstand Push-Ups (or pike push-ups)",
              "sets": 4,
              "reps": "8-10"
            },
            {
              "exercise": "Windshield Wipers",
              "sets": 3,
              "reps": "12-15 per side"
            },
            {"exercise": "Jump Rope", "sets": 1, "reps": "2-3 minutes"}
          ],
          "Day 3": [
            {
              "exercise": "Advanced Cardio Circuit",
              "sets": "-",
              "reps": "45-60 minutes"
            },
            {
              "exercise": "Deadlifts (with barbell or dumbbells)",
              "sets": 4,
              "reps": "8-10"
            },
            {
              "exercise": "Bulgarian Split Squats (with weights)",
              "sets": 4,
              "reps": "10-12 each leg"
            },
            {"exercise": "Hanging Leg Raises", "sets": 3, "reps": "12-15"},
            {"exercise": "Burpees", "sets": 1, "reps": "2-3 minutes"}
          ],
          "Day 4": [
            {
              "exercise": "Active Recovery (e.g., Swimming)",
              "duration": "30-45 minutes"
            },
            {
              "exercise": "Light Yoga or Stretching",
              "duration": "15-20 minutes"
            }
          ]
        },
        "5": {
          "Day 1": [
            {
              "exercise": "High-Intensity Interval Training (HIIT)",
              "duration": "30-45 minutes"
            },
            {"exercise": "Plyometric Exercises", "sets": 4, "reps": "12-15"},
            {"exercise": "Pull-Ups (weighted)", "sets": 4, "reps": "8-10"},
            {"exercise": "Hanging Leg Raises", "sets": 3, "reps": "12-15"},
            {"exercise": "Burpees", "sets": 1, "reps": "2-3 minutes"}
          ],
          "Day 2": [
            {
              "exercise": "Advanced Yoga or Pilates",
              "sets": "-",
              "reps": "45-60 minutes"
            },
            {"exercise": "Box Jumps", "sets": 4, "reps": "12-15"},
            {
              "exercise": "Handstand Push-Ups (or pike push-ups)",
              "sets": 4,
              "reps": "8-10"
            },
            {
              "exercise": "Windshield Wipers",
              "sets": 3,
              "reps": "12-15 per side"
            },
            {"exercise": "Jump Rope", "sets": 1, "reps": "2-3 minutes"}
          ],
          "Day 3": [
            {
              "exercise": "Advanced Cardio Circuit",
              "sets": "-",
              "reps": "45-60 minutes"
            },
            {
              "exercise": "Deadlifts (with barbell or dumbbells)",
              "sets": 4,
              "reps": "8-10"
            },
            {
              "exercise": "Bulgarian Split Squats (with weights)",
              "sets": 4,
              "reps": "10-12 each leg"
            },
            {"exercise": "Hanging Leg Raises", "sets": 3, "reps": "12-15"},
            {"exercise": "Burpees", "sets": 1, "reps": "2-3 minutes"}
          ],
          "Day 4": [
            {
              "exercise": "Active Recovery (e.g., Swimming)",
              "duration": "30-45 minutes"
            },
            {
              "exercise": "Light Yoga or Stretching",
              "duration": "15-20 minutes"
            }
          ],
          "Day 5": [
            {
              "exercise": "Active Recovery (e.g., Swimming)",
              "duration": "30-45 minutes"
            },
            {
              "exercise": "Light Yoga or Stretching",
              "duration": "15-20 minutes"
            }
          ]
        },
        "6": {
          "Day 1": [
            {
              "exercise": "High-Intensity Interval Training (HIIT)",
              "duration": "30-45 minutes"
            },
            {"exercise": "Plyometric Exercises", "sets": 4, "reps": "12-15"},
            {"exercise": "Pull-Ups (weighted)", "sets": 4, "reps": "8-10"},
            {"exercise": "Hanging Leg Raises", "sets": 3, "reps": "12-15"},
            {"exercise": "Burpees", "sets": 1, "reps": "2-3 minutes"}
          ],
          "Day 2": [
            {
              "exercise": "Advanced Yoga or Pilates",
              "sets": "-",
              "reps": "45-60 minutes"
            },
            {"exercise": "Box Jumps", "sets": 4, "reps": "12-15"},
            {
              "exercise": "Handstand Push-Ups (or pike push-ups)",
              "sets": 4,
              "reps": "8-10"
            },
            {
              "exercise": "Windshield Wipers",
              "sets": 3,
              "reps": "12-15 per side"
            },
            {"exercise": "Jump Rope", "sets": 1, "reps": "2-3 minutes"}
          ],
          "Day 3": [
            {
              "exercise": "Advanced Cardio Circuit",
              "sets": "-",
              "reps": "45-60 minutes"
            },
            {
              "exercise": "Deadlifts (with barbell or dumbbells)",
              "sets": 4,
              "reps": "8-10"
            },
            {
              "exercise": "Bulgarian Split Squats (with weights)",
              "sets": 4,
              "reps": "10-12 each leg"
            },
            {"exercise": "Hanging Leg Raises", "sets": 3, "reps": "12-15"},
            {"exercise": "Burpees", "sets": 1, "reps": "2-3 minutes"}
          ],
          "Day 4": [
            {
              "exercise": "Active Recovery (e.g., Swimming)",
              "sets": "-",
              "reps": "30-45 minutes"
            },
            {
              "exercise": "Light Yoga or Stretching",
              "sets": "-",
              "reps": "15-20 minutes"
            }
          ],
          "Day 5": [
            {
              "exercise": "Active Recovery (e.g., Swimming)",
              "sets": "-",
              "reps": "30-45 minutes"
            },
            {
              "exercise": "Light Yoga or Stretching",
              "sets": "-",
              "reps": "15-20 minutes"
            }
          ],
          "Day 6": [
            {
              "exercise": "Active Recovery (e.g., Swimming)",
              "sets": "-",
              "reps": "30-45 minutes"
            },
            {
              "exercise": "Light Yoga or Stretching",
              "sets": "-",
              "reps": "15-20 minutes"
            }
          ]
        }
      }
    }
  };

//•	Warm-Up: Always start with a 5-10 minute warm-up (light cardio and dynamic stretches).
// •	Cool Down: End each session with a 5-10 minute cool down (light cardio and static stretches).
// •	Progression: Gradually increase weights and intensity as fitness improves.
// •	Rest Days: Ensure adequate rest and recovery, especially on non-training days. For 6-day plans, ensure one complete rest day.
//Notes:
// •	Warm-Up: Always start with a 5-10 minute warm-up (light cardio and dynamic stretches).
// •	Cool Down: End each session with a 5-10 minute cool down (light cardio and static stretches).
// •	Progression: Gradually increase weights and intensity as fitness improves.
// •	Rest Days: Ensure adequate rest and recovery, especially on non-training days. For 6-day plans, ensure one complete rest day.
//Notes:
// •	Warm-Up: Always start with a 5-10 minute warm-up (light cardio and dynamic stretches).
// •	Cool Down: End each session with a 5-10 minute cool down (light cardio and static stretches).
// •	Repetitions and Sets: Aim for 3-4 sets of 8-12 repetitions for hypertrophy (muscle growth).
// •	Progression: Gradually increase weights and intensity as strength improves.
// •	Rest Days: Ensure adequate rest and recovery, especially on non-training days. For 6-day plans, ensure one complete rest day.
//Notes:
// •	Warm-Up: Always start with a 5-10 minute warm-up (light cardio and dynamic stretches).
// •	Cool Down: End each session with a 5-10 minute cool down (light cardio and static stretches).
// •	Repetitions and Sets: Aim for 3-4 sets of 8-12 repetitions for hypertrophy (muscle growth).
// •	Progression: Gradually increase weights and intensity as strength improves.
// •	Rest Days: Ensure adequate rest and recovery, especially on non-training days. For 6-day plans, ensure one complete rest day.
  ///Notes:
// •	Warm-Up: Always start with a 5-10 minute warm-up (light cardio and dynamic stretches).
// •	Cool Down: End each session with a 5-10 minute cool down (light cardio and static stretches).
// •	Repetitions and Sets: For strength training, aim for 3 sets of 10-15 repetitions.
// •	Progression: Gradually increase weights and intensity as fitness improves.
// •	Rest Days: Ensure adequate rest and recovery, especially on non-training days. For 6-day plans, ensure one complete rest day.
//Notes:
// •	Warm-Up: Always start with a 5-10 minute warm-up (light cardio and dynamic stretches).
// •	Cool Down: End each session with a 5-10 minute cool down (light cardio and static stretches).
// •	Repetitions and Sets: For strength training, aim for 3 sets of 10-15 repetitions.
// •	Progression: Gradually increase weights and intensity as fitness improves.
// •	Rest Days: Ensure adequate rest and recovery, especially on non-training days. For 6-day plans, ensure one complete rest day.
}

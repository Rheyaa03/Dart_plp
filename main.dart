void main() {
  // Define variables of different types
  int myInt = 10;
  double myDouble = 10.5;
  String myString = "Hello Dart";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  print(myInt);
  print(myDouble);
  print(myString);
  print(myBool);
  print(myList);

  // Call functions here
  convertAndDisplay("42");
  checkNumber(5);
  checkVotingEligibility(20);
  printDayOfWeek(3);

  // For loop: 1 to 10
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // While loop: 10 to 1
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  // Do-while loop: 1 to 5
  int k = 1;
  do {
    print(k);
    k++;
  } while (k <= 5);

  // Complex example call
  complexExample();
}

// Convert String to int
int stringToInt(String s) {
  return int.parse(s);
}

// Convert String to double
double stringToDouble(String s) {
  return double.parse(s);
}

// Convert int to String
String intToString(int i) {
  return i.toString();
}

// Convert int to double
double intToDouble(int i) {
  return i.toDouble();
}

void convertAndDisplay(String numberStr) {
  int intValue = int.parse(numberStr);
  double doubleValue = double.parse(numberStr);

  print('String to int: $intValue');
  print('String to double: $doubleValue');
}

void checkNumber(int number) {
  if (number > 0) {
    print('$number is positive');
  } else if (number < 0) {
    print('$number is negative');
  } else {
    print('$number is zero');
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print('You are eligible to vote');
  } else {
    print('You are not eligible to vote');
  }
}

void printDayOfWeek(int day) {
  switch(day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }
}

void complexExample() {
  List<int> numbers = [3, 12, 105, 7, 50];

  for (var number in numbers) {
    print('Number: $number');

    // Check even or odd
    if (number % 2 == 0) {
      print('Even');
    } else {
      print('Odd');
    }

    // Categorize number using if-else instead of switch for ranges
    if (number >= 1 && number <= 10) {
      print('Small');
    } else if (number >= 11 && number <= 100) {
      print('Medium');
    } else {
      print('Large');
    }

    print('---');
  }
}

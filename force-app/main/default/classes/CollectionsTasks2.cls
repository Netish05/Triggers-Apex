/* LIST TASK : Daily To-Do List Manager
  Scenario: You're managing your daily tasks and priorities.

  Your Tasks:

   Create a list with these morning tasks: "Check emails", "Drink coffee", "Review calendar"
   Add "URGENT: Call dentist" at the very beginning (highest priority)
   Insert "Take vitamins" between "Drink coffee" and "Review calendar"
   Check if "Exercise" is on your to-do list
   Find the position of "Drink coffee" in your list
   Complete the first task (remove it from the list)
   Add "Prepare dinner" at the end of your list
   Show how many tasks you still have to complete
    🎯 Learning Focus: Priority ordering, task management, sequential processing
 */
public class CollectionsTasks2 {
    public static void todo(){
        // Create a list with these morning tasks: "Check emails", "Drink coffee", "Review calendar"
        List<String> Todo = new List<String>{
            'Check emails',//0
            'Drink coffee',//1
            'Review calendar'//2
        };
         System.debug('Step 1 -  morning tasks: ' + Todo);
        //Add "URGENT: Call dentist" at the very beginning (highest priority)
        Todo.add(0, 'URGENT: Call dentist" at the very beginning (highest priority)');
         System.debug('Step 2 -  "URGENT: Call dentist" at the very beginning (highest priority): ' + Todo);
        
        //Insert "Take vitamins" between "Drink coffee" and "Review calendar"
        Todo.add(3, 'Take vitamins');
        System.debug('Step 3- TAKE Vitamins:' + Todo );
        
        //Check if "Exercise" is on your to-do list
        Boolean hasExercise = Todo.contains('Exercise');
        
        //Find the position of "Drink coffee" in your list
        Integer intermissionIndex = Todo.indexOf('Drink coffee');
        
        //Complete the first task (remove it from the list)
        String completedTask = Todo.remove(0);
        
        //Add "Prepare dinner" at the end of your list
          Todo.add('Prepare dinner');
        
        //Show how many tasks you still have to complete
        Integer totalItems =Todo.size();
        System.debug('Step final - Total items in final list: ' + todo);
        
        System.debug('Final Movie List: ' + Todo);
    }
    

    /*SET TASK: Book Club Reading List
    Scenario: Your book club is creating a master list of unique books to read.

    Your Tasks:

    Start with these book suggestions: "1984", "Pride and Prejudice", "The Hobbit"
    Try to add "1984" again (someone suggested it twice)
    Add these new suggestions: "Dune", "Jane Eyre", "To Kill a Mockingbird"
    Check if "Harry Potter" is in your reading list
    Remove "The Hobbit" (it's too long for this month)
    Try adding "Pride and Prejudice" once more (another member suggested it)
    Add "The Great Gatsby" to the collection
     Count how many unique books are in your final reading list
     Learning Focus: Collaborative filtering, avoiding duplicates, dynamic collections*/
    
    public static void manageReadingList() {
        // 1. Start with these book suggestions: "1984", "Pride and Prejudice", "The Hobbit"
        Set<String> bookSet = new Set<String>{
            '1984',
            'Pride and Prejudice',
            'The Hobbit'
        };
        System.debug('Step 1 - Initial book list: ' + bookSet);

        // 2. Try to add "1984" again (someone suggested it twice)
        bookSet.add('1984'); // No effect, Set prevents duplicates
        System.debug('Step 2 - After trying to add "1984" again: ' + bookSet);

        // 3. Add these new suggestions: "Dune", "Jane Eyre", "To Kill a Mockingbird"
        bookSet.add('Dune');
        bookSet.add('Jane Eyre');
        bookSet.add('To Kill a Mockingbird');
        System.debug('Step 3 - After adding 3 new books: ' + bookSet);

        // 4. Check if "Harry Potter" is in your reading list
        Boolean hasHarryPotter = bookSet.contains('Harry Potter');
        System.debug('Step 4 - Is "Harry Potter" in the list? ' + hasHarryPotter);

        // 5. Remove "The Hobbit" (too long for this month)
        Boolean removedHobbit = bookSet.remove('The Hobbit');
        System.debug('Step 5 - Was "The Hobbit" removed? ' + removedHobbit);
        System.debug('Step 5 - List after removing "The Hobbit": ' + bookSet);

        // 6. Try adding "Pride and Prejudice" once more
        bookSet.add('Pride and Prejudice'); // Still no effect
        System.debug('Step 6 - After trying to add "Pride and Prejudice" again: ' + bookSet);

        // 7. Add "The Great Gatsby" to the collection
        bookSet.add('The Great Gatsby');
        System.debug('Step 7 - After adding "The Great Gatsby": ' + bookSet);

        // 8. Count how many unique books are in your final reading list
        Integer totalBooks = bookSet.size();
        System.debug('Step 8 - Total unique books in list: ' + totalBooks);

        // Final List Output
        System.debug('📘 Final Book Club Reading List: ' + bookSet);
    }
    
  /*
   🎯 SET TASK: Workout Equipment Tracker
    Scenario: You're tracking unique equipment available at your home gym.

    Your Tasks:

     Create a set of available equipment: "Dumbbells", "Treadmill", "Yoga Mat"
    Add new equipment: "Resistance Bands", "Kettlebell", "Pull-up Bar"
     Try to add "Dumbbells" again (you're checking inventory)
    Check if you have a "Rowing Machine"
     You sold your "Treadmill" - remove it from the set
     Add "Exercise Bike" to your equipment collection
     Try adding "Yoga Mat" again (double-checking your inventory)
       Count how many unique pieces of equipment you own
    Learning Focus: Inventory management, unique item tracking, equipment availability
    */
    public static void trackEquipment() {
        // 1. Create a set of available equipment
        Set<String> equipmentSet = new Set<String>{
            'Dumbbells',
            'Treadmill',
            'Yoga Mat'
        };
        System.debug('Step 1 - Initial equipment: ' + equipmentSet);

        // 2. Add new equipment
        equipmentSet.add('Resistance Bands');
        equipmentSet.add('Kettlebell');
        equipmentSet.add('Pull-up Bar');
        System.debug('Step 2 - After adding new equipment: ' + equipmentSet);

        // 3. Try to add "Dumbbells" again (already exists)
        equipmentSet.add('Dumbbells'); // No duplicates added
        System.debug('Step 3 - After trying to add Dumbbells again: ' + equipmentSet);

        // 4. Check if you have a "Rowing Machine"
        Boolean hasRowingMachine = equipmentSet.contains('Rowing Machine');
        System.debug('Step 4 - Do you have a Rowing Machine? ' + hasRowingMachine);

        // 5. You sold your "Treadmill" - remove it
        Boolean removedTreadmill = equipmentSet.remove('Treadmill');
        System.debug('Step 5 - Treadmill removed? ' + removedTreadmill);
        System.debug('Step 5 - After removal: ' + equipmentSet);

        // 6. Add "Exercise Bike" to your equipment collection
        equipmentSet.add('Exercise Bike');
        System.debug('Step 6 - After adding Exercise Bike: ' + equipmentSet);

        // 7. Try adding "Yoga Mat" again
        equipmentSet.add('Yoga Mat'); // Already exists
        System.debug('Step 7 - After trying to add Yoga Mat again: ' + equipmentSet);

        // 8. Count how many unique pieces of equipment you own
        Integer totalEquipment = equipmentSet.size();
        System.debug('Step 8 - Total unique equipment owned: ' + totalEquipment);

        // Final Output
        System.debug('🏋️ Final Equipment Set: ' + equipmentSet);
    }
 /*
    🗺️ MAP TASK: Student Locker Assignments
    Scenario: You're a school administrator assigning lockers to students.

     Your Tasks:

    Create a map of student names to locker numbers
    Assign these lockers: "Emma" → "101", "Liam" → "205", "Sophia" → "312"
    "Emma" requests a different locker - change her assignment to "150"
    Add a new student: "Noah" → "208"
     Check what locker number "Sophia" was assigned
     Check if student "Oliver" has been assigned a locker
     Get a list of all students who have lockers assigned
     A new student "Ava" gets locker "403" - add her to the system
     Count how many students have locker assignments
     Learning Focus: Resource allocation, student management, assignment tracking
 */    
    public static void assignLockers() {
        // 1. Create a map of student names to locker numbers
        Map<String, String> lockerMap = new Map<String, String>();
        System.debug('Step 1 - Initial locker assignments: ' + lockerMap);

        // 2. Assign these lockers: "Emma" → "101", "Liam" → "205", "Sophia" → "312"
        lockerMap.put('Emma', '101');
        lockerMap.put('Liam', '205');
        lockerMap.put('Sophia', '312');
        System.debug('Step 2 - After initial assignments: ' + lockerMap);

        // 3. "Emma" requests a different locker - change her assignment to "150"
        lockerMap.put('Emma', '150');
        System.debug('Step 3 - After updating Emma\'s locker: ' + lockerMap);

        // 4. Add a new student: "Noah" → "208"
        lockerMap.put('Noah', '208');
        System.debug('Step 4 - After adding Noah: ' + lockerMap);

        // 5. Check what locker number "Sophia" was assigned
        String sophiaLocker = lockerMap.get('Sophia');
        System.debug('Step 5 - Sophia\'s locker: ' + sophiaLocker);

        // 6. Check if student "Oliver" has been assigned a locker
        Boolean hasOliver = lockerMap.containsKey('Oliver');
        System.debug('Step 6 - Is Oliver assigned a locker? ' + hasOliver);

        // 7. Get a list of all students who have lockers assigned
        Set<String> studentNames = lockerMap.keySet();
        System.debug('Step 7 - Students with assigned lockers: ' + studentNames);

        // 8. A new student "Ava" gets locker "403" - add her to the system
        lockerMap.put('Ava', '403');
        System.debug('Step 8 - After adding Ava: ' + lockerMap);

        // 9. Count how many students have locker assignments
        Integer totalStudents = lockerMap.size();
        System.debug('Step 9 - Total students with lockers: ' + totalStudents);

        // Final Output
        System.debug('📚 Final Locker Assignments: ' + lockerMap);
    }
    /*
       🗺️ MAP TASK: Library Book Location System
      Scenario: You're managing a library's book location database.

      Your Tasks:

    Create a map linking book titles to their shelf locations
     Add these books: "Moby Dick" → "A-12", "1984" → "B-08", "Hamlet" → "C-15"
    "1984" was moved to a new shelf - update its location to "B-10"
     Add a new book: "The Catcher in the Rye" → "A-18"
     Find where "Hamlet" is located
    Check if "To Kill a Mockingbird" is in the system
    Get a list of all book titles in the library database
    Add "Pride and Prejudice" → "C-22" to the collection
    Count how many books are tracked in your system
    Learning Focus: Location tracking, database management, quick retrieval */

    public static void manageLibraryDatabase() {
        // 1. Create a map linking book titles to their shelf locations
        Map<String, String> bookLocations = new Map<String, String>();
        System.debug('Step 1 - Initial book map: ' + bookLocations);

        // 2. Add these books
        bookLocations.put('Moby Dick', 'A-12');
        bookLocations.put('1984', 'B-08');
        bookLocations.put('Hamlet', 'C-15');
        System.debug('Step 2 - After adding initial books: ' + bookLocations);

        // 3. "1984" was moved to a new shelf - update its location to "B-10"
        bookLocations.put('1984', 'B-10');
        System.debug('Step 3 - Updated location for 1984: ' + bookLocations.get('1984'));

        // 4. Add a new book: "The Catcher in the Rye" → "A-18"
        bookLocations.put('The Catcher in the Rye', 'A-18');
        System.debug('Step 4 - Added The Catcher in the Rye: ' + bookLocations);

        // 5. Find where "Hamlet" is located
        String hamletLocation = bookLocations.get('Hamlet');
        System.debug('Step 5 - Hamlet is located at: ' + hamletLocation);

        // 6. Check if "To Kill a Mockingbird" is in the system
        Boolean hasMockingbird = bookLocations.containsKey('To Kill a Mockingbird');
        System.debug('Step 6 - Is To Kill a Mockingbird in the system? ' + hasMockingbird);

        // 7. Get a list of all book titles in the library database
        Set<String> allTitles = bookLocations.keySet();
        System.debug('Step 7 - Book titles in library: ' + allTitles);

        // 8. Add "Pride and Prejudice" → "C-22" to the collection
        bookLocations.put('Pride and Prejudice', 'C-22');
        System.debug('Step 8 - After adding Pride and Prejudice: ' + bookLocations);

        // 9. Count how many books are tracked in your system
        Integer bookCount = bookLocations.size();
        System.debug('Step 9 - Total number of books tracked: ' + bookCount);

        // Final Output
        System.debug('📚 Final Book Location Map: ' + bookLocations);
    }

}
/*question for list practice
LIST TASK: Movie Night Planner Scenario: You're organizing a movie marathon night with friends. 
Your Tasks: Create a list of 5 movies you want to watch in order 
Add "Intermission Break" after the 2nd movie 
Your friend suggests adding "The Avengers" at the very beginning 
Check if "Titanic" is in your movie list 
Find out what position "Intermission Break" is at Remove the last movie from the list 
Print how many total items are in your final list using salesforce apex*/
public class CollectionsTasks {
    public static void planMovieNight() {
        // 1. Create a list of 5 movies in order
        List<String> movieList = new List<String>{
            'Inception',//0
            'The Dark Knight',//1
            'The Matrix',//2
            'Gladiator',//3
            'Forrest Gump'//4
        };
        System.debug('Step 1 - Initial movie list: ' + movieList);

        // 2. Add "Intermission Break" after the 2nd movie (index 2)
        movieList.add(3, 'Intermission Break');
        System.debug('Step 2 - After adding Intermission Break: ' + movieList);

        // 3. Friend suggests adding "The Avengers" at the very beginning
        movieList.add(0, 'The Avengers');
        System.debug('Step 3 - After adding The Avengers at beginning: ' + movieList);

        // 4. Check if "Titanic" is in your movie list
        Boolean hasTitanic = movieList.contains('Titanic');
        System.debug('Step 4 - Is "Titanic" in the list? ' + hasTitanic);

        // 5. Find out what position "Intermission Break" is at
        Integer intermissionIndex = movieList.indexOf('Intermission Break');
        System.debug('Step 5 - "Intermission Break" is at position: ' + intermissionIndex);

        // 6. Remove the last movie from the list
        String removedMovie = movieList.remove(movieList.size() - 1);
        System.debug('Step 6 - Removed last movie: ' + removedMovie);
        System.debug('Step 6 - List after removing last movie: ' + movieList);

        // 7. Print how many total items are in your final list
        Integer totalItems = movieList.size();
        System.debug('Step 7 - Total items in final list: ' + totalItems);

        System.debug('Final Movie List: ' + movieList);
    }
    /*question for set practice 
     SET TASK : Birthday Party Guest List Scenario: You're planning a birthday party and managing RSVPs. 
     Your Tasks: Create a set of confirmed guests starting with: "Alice", "Bob", "Charlie" 
     Try to add "Alice" again (she called twice to confirm) 
     Add three more unique guests: "Diana", "Emma", "Frank" 
     Check if "Bob" is coming to the party Unfortunately, 
     "Charlie" can't make it - remove him Your cousin "Alice" calls again to confirm (try adding her once more)
      Count how many unique guests will attend the party*/

        public static void manageGuestList() {
        // 1. Create a set of confirmed guests starting with: "Alice", "Bob", "Charlie"
        Set<String> guestSet = new Set<String>{'Alice', 'Bob', 'Charlie'};
        System.debug('Step 1 - Initial confirmed guests: ' + guestSet);

        // 2. Try to add "Alice" again (she called twice to confirm)
        guestSet.add('Alice'); // No effect, sets ignore duplicates
        System.debug('Step 2 - After adding Alice again: ' + guestSet);

        // 3. Add three more unique guests: "Diana", "Emma", "Frank"
        guestSet.add('Diana');
        guestSet.add('Emma');
        guestSet.add('Frank');
        System.debug('Step 3 - After adding 3 more guests: ' + guestSet);

        // 4. Check if "Bob" is coming to the party
        Boolean isBobComing = guestSet.contains('Bob');
        System.debug('Step 4 - Is Bob coming? ' + isBobComing);

        // 5. "Charlie" can't make it - remove him
        Boolean wasCharlieRemoved = guestSet.remove('Charlie');
        System.debug('Step 5 - Charlie removed? ' + wasCharlieRemoved);
        System.debug('Step 5 - Guest list after removing Charlie: ' + guestSet);

        // 6. "Alice" calls again to confirm (try adding her once more)
        guestSet.add('Alice'); // Still no effect, already present
        System.debug('Step 6 - After Alice confirms again: ' + guestSet);

        // 7. Count how many unique guests will attend the party
        Integer totalGuests = guestSet.size();
        System.debug('Step 7 - Total unique guests attending: ' + totalGuests);

        // Optional: Final guest list
        System.debug('Final Guest List: ' + guestSet);
    }
       /*🗺️ MAP TASK: Pizza Delivery Orders
      Scenario: You work at a pizza place and need to track delivery orders.

      Your Tasks:

     Create a map linking customer names to their pizza orders
     Add these orders: "John" → "Pepperoni", "Sarah" → "Margherita", "Mike" → "Supreme"
     "John" calls to change his order to "Hawaiian" - update his order
      Add a new customer: "Lisa" → "Veggie Deluxe"
      Check what pizza "Sarah" ordered
      Check if you have an order for customer "David"
      Get a list of all customer names who placed orders
      Count how many total orders you have
      Learning Focus: Key-value relationships, fast lookups, updating values*/
     public static void manageOrders() {
        // 1. Create a map linking customer names to their pizza orders
        Map<String, String> pizzaOrders = new Map<String, String>();
        System.debug('Step 1 - Initial empty pizza orders: ' + pizzaOrders);

        // 2. Add these orders: "John" → "Pepperoni", "Sarah" → "Margherita", "Mike" → "Supreme"
        pizzaOrders.put('John', 'Pepperoni');
        pizzaOrders.put('Sarah', 'Margherita');
        pizzaOrders.put('Mike', 'Supreme');
        System.debug('Step 2 - After adding initial orders: ' + pizzaOrders);

        // 3. "John" calls to change his order to "Hawaiian" - update his order
        pizzaOrders.put('John', 'Hawaiian');
        System.debug('Step 3 - After updating John\'s order: ' + pizzaOrders);

        // 4. Add a new customer: "Lisa" → "Veggie Deluxe"
        pizzaOrders.put('Lisa', 'Veggie Deluxe');
        System.debug('Step 4 - After adding Lisa\'s order: ' + pizzaOrders);

        // 5. Check what pizza "Sarah" ordered
        String sarahOrder = pizzaOrders.get('Sarah');
        System.debug('Step 5 - Sarah ordered: ' + sarahOrder);

        // 6. Check if you have an order for customer "David"
        Boolean hasDavid = pizzaOrders.containsKey('David');
        System.debug('Step 6 - Do we have an order for David? ' + hasDavid);

        // 7. Get a list of all customer names who placed orders
        Set<String> customerNames = pizzaOrders.keySet();
        System.debug('Step 7 - Customer names with orders: ' + customerNames);

        // 8. Count how many total orders you have
        Integer totalOrders = pizzaOrders.size();
        System.debug('Step 8 - Total number of orders: ' + totalOrders);

        // Optional: Print full map of final orders
        System.debug('Final Pizza Orders Map: ' + pizzaOrders);
    }
    

}
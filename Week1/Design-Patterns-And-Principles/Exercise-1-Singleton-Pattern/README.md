# Exercise 1 - Implementing the Singleton Pattern

## Objective

The objective of this exercise is to implement the Singleton Design Pattern in Java. The Singleton Pattern ensures that only one instance of a class is created throughout the application lifecycle and provides a global point of access to that instance.

---

## Scenario

A logging utility is required in the application. To maintain consistent logging behavior and avoid creating multiple logger objects, the Logger class is implemented using the Singleton Pattern.

---

## Files Included

### Logger.java

Contains the implementation of the Singleton Pattern.

Features:

* Private static instance of Logger
* Private constructor
* Public static getInstance() method
* Logging method to display messages

### SingletonTest.java

Used to test the Singleton implementation.

Features:

* Obtains Logger instances using getInstance()
* Verifies that only one Logger object is created
* Demonstrates logging functionality

---

## Singleton Design Pattern Rules Followed

1. Constructor is declared as private.
2. A private static instance variable is used.
3. A public static getInstance() method provides access to the single instance.

---

## Expected Output

Logger object created.
LOG: Application Started
LOG: User Logged In
Only one Logger instance exists.

---

## Conclusion

The Singleton Pattern was successfully implemented using the Logger class. The test confirms that multiple calls to getInstance() return the same object, ensuring that only one Logger instance exists throughout the application.

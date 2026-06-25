# Exercise 7 - Financial Forecasting

## Objective

The objective of this exercise is to understand recursion by implementing a financial forecasting program that predicts the future value of an investment using a recursive algorithm.

---

## Scenario

A financial forecasting tool predicts the future value of an investment based on its current value, annual growth rate, and the number of years.

---

## Files Included

* FinancialForecast.java

---

## What is Recursion?

Recursion is a programming technique in which a method calls itself repeatedly until a base condition is reached.

---

## Algorithm

1. If the number of years is 0, return the current value.
2. Otherwise, increase the value by the growth rate.
3. Call the same method for the remaining years.
4. Return the final predicted value.

---

## Time Complexity

* Best Case: O(1) (when years = 0)
* Worst Case: O(n)
* Average Case: O(n)

where **n** is the number of years.

---

## Optimization

The recursive solution can be optimized using:

* Memoization
* Dynamic Programming
* Mathematical formula (Compound Interest)

These approaches avoid repeated recursive calls and improve efficiency.

---

## Conclusion

The recursive algorithm successfully predicts the future value of an investment. Recursion simplifies the implementation by reducing the problem into smaller subproblems.

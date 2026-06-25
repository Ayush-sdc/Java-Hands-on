# Exercise 2 - E-commerce Platform Search Function

## Objective

The objective of this exercise is to understand searching algorithms and compare the performance of Linear Search and Binary Search.

---

## Scenario

An e-commerce platform stores product information. Users search for products using their Product ID. Two search algorithms are implemented to compare their efficiency.

---

## Files Included

- Product.java
- SearchFunction.java

---

## Algorithms Used

### Linear Search
- Searches each element one by one.
- Works on unsorted arrays.

Time Complexity:
- Best Case: O(1)
- Average Case: O(n)
- Worst Case: O(n)

---

### Binary Search
- Searches by repeatedly dividing the array into two halves.
- Requires the array to be sorted.

Time Complexity:
- Best Case: O(1)
- Average Case: O(log n)
- Worst Case: O(log n)

---

## Comparison

| Linear Search | Binary Search |
|---------------|---------------|
| Works on unsorted data | Requires sorted data |
| O(n) | O(log n) |
| Simple to implement | Faster for large datasets |

---

## Conclusion

Binary Search is more suitable for large e-commerce platforms because it provides faster search performance once the data is sorted.
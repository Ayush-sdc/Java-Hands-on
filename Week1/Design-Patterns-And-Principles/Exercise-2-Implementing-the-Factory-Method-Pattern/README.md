# Exercise 2 - Factory Method Pattern

## Objective

The objective of this exercise is to implement the Factory Method Design Pattern in Java. This pattern provides a way to create objects without specifying the exact class of the object that will be created.

---

## Scenario

A document management system needs to create different types of documents such as Word, PDF, and Excel. Instead of creating objects directly using the `new` keyword, factory classes are used to create the required document objects.

---

## Files Included

* Document.java
* WordDocument.java
* PdfDocument.java
* ExcelDocument.java
* DocumentFactory.java
* WordDocumentFactory.java
* PdfDocumentFactory.java
* ExcelDocumentFactory.java
* FactoryTest.java

---

## Factory Method Pattern

The Factory Method Pattern delegates object creation to subclasses. Each factory class is responsible for creating a specific type of document.

---

## Expected Output

Opening Microsoft Word Document...

Opening PDF Document...

Opening Excel Spreadsheet...

---

## Conclusion

The Factory Method Pattern simplifies object creation and improves code flexibility. New document types can be added by creating new document and factory classes without modifying existing code.

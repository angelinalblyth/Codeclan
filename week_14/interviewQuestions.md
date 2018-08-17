### 1. What are the four pillars of OOP?

#### Abstraction
Is the process of exposing essential features of an entity
while hiding other irrelevant detail.
#### Encapsulation
Is the process of wrapping data (properties) and operations on that data (functions) in a class. This leads us to be able to protect data from the outside world.
#### Inheritance
When a class adapts behaviours from a “parent class” or “super class”. The child class inherits from the parent class and may have additional properties and methods.
#### Polymorphism
Many forms. E.G if a Dog inherits from Mammal it is both a Dog AND a Mammal


### 2. What is the difference between a class and an object?

An object models a real world (physical or abstract) thing by having a state in which its properties have values that are defined and methods that define its behaviour.
An object is an instance of a class and every object has a class.
The class is a kind of ‘blueprint’ for the object. It is used to used to describe how an object should be made.
Objects have a lifespan (they are created and destroyed) and classes do not.


### 3. What is a RESTful web service?

REST stands for Representational State Transfer, an architectural style that has largely been adopted as a best practice for building web and mobile applications. RESTful services are designed to be lightweight, easy to maintain, and scaleable. They are typically based on the HTTP protocol, make explicit use of HTTP methods (GET, POST, PUT, DELETE), are stateless, use intuitive URIs, and transfer XML/JSON data between the server and the client.



### 4.How do you ensure that your website design or web application is accessible and user-friendly?

I test my web applications on various browsers and devices to check whether the experience is usable on all devices. I also use popular screen reading software and other assistive solutions to see whether it's accessible for all potential users


### 5. What’s your favourite programming language? Why?



### 6. In JavaScript what is the difference between == and ===?

The == operator compares two values, without taking into account their types. === compares the values, but also makes their types into account. So 3==’3’ evaluates to True, but 3===’3’ evaluates to False.

### 7. Explain MVC

The Model-View-Controller (MVC) is an architectural pattern that separates an application into three main logical components: the model, the view, and the controller. Each of these components are built to handle specific development aspects of an application. The Model component corresponds to all the data-related logic that the user works with, the View component is used for all the UI logic of the application, and Controllers act as an interface between Model and View components to process all the business logic and incoming requests, manipulate data using the Model component and interact with the Views to render the final output.

### 8. What do you understand from “In React, everything is a component.”

Components are the building blocks of a React application’s UI. These components split up the entire UI into small independent and reusable pieces. Then it renders each of these components independent of each other without affecting the rest of the UI.

### 9. When would you use a Class Component over a Functional Component?
If your component has state or a lifecycle method(s), use a Class component. Otherwise, use a Functional component.
10. What does SQL Stand For?
Structured Query Language


### 11. In SQL what is the difference between a primary key and a foreign key?

A Primary key is column whose values uniquely identify every row in a table. Primary key values can never be reused. A foreign key is a field on one table that references the primary or unique key of another table.


### 12. What is the difference between Overloading and Overriding?

Overloading occurs when two or more methods in one class have the same method name but different parameters.

Overriding means having two methods with the same method name and parameters (i.e., method signature). One of the methods is in the parent class and the other is in the child class. Overriding allows a child class to provide a specific implementation of a method that is already provided its parent class.

### 13. Speak to me about SOLID

SOLID is a mnemonic acronym for five design principles intended to make software designs more understandable, flexible and maintainable.

Single responsibility principle - a class should have only a single responsibility (i.e. changes to only one part of the software's specification should be able to affect the specification of the class).
Open/closed principle - software entities should be open for extension, but closed for modification.
Liskov substitution principle - objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program.
Interface segregation principle - many client-specific interfaces are better than one general-purpose interface.
Dependency inversion principle - High-level modules should not depend on low-level modules. Both should depend on abstractions. Abstractions should not depend on details. Details should depend on abstractions.



### 14. What’s Hibernate?
Hibernate is a popular framework of Java which allows an efficient Object Relational mapping using configuration files in XML format. After java objects mapping to database tables, database is used and handled using Java objects without writing complex database queries.

### 15. What is ORM?
ORM (Object Relational Mapping) is the fundamental concept of Hibernate framework which maps database tables with Java Objects and then provides various API’s to perform different types of operations on the data tables

### 16. What’s the difference between session.save() and session.saveOrUpdate() methods in hibernate?
Session.save() method saves a record only if it’s unique with respect to its primary key and will fail to insert if primary key already exists in the table.
saveOrUpdate() method inserts a new record if primary key is unique and will update an existing record if primary key exists in the table already

### 17. What are CSS media queries and what are they used for?
CSS media queries are the filters that make responsive web design (RWD) possible. With the introduction of laptops, tablets, and smartphones with screens of varying sizes and aspect ratios, RWD is crucial for modern day app development. CSS media queries adjust content style based on device characteristics like width, height, orientation, resolution, and display type.

### 18. How do you define a pseudo class in CSS? What are they used for?
You can define a pseudo class by listing the selector followed by a colon and finally the pseudo class element. Pseudo classes can be used to give elements special states—the most common example being a:hover, which is used to change the color of a link when a mouse hovers over it. Other uses include using distinct styling for visited and unvisited links and styling an element differently when focused.

### 19. What is TDD and what are some of the benefits of it?
Test-driven development or TDD is a software development methodology that is based on the recurrence of short development cycles. How does it work? First, QA engineer creates a test that should cover all changes they need. Then, developer or QA engineer writes a programming code that implements the behavior of system they want to get in the issue. And this code should make possible to undergo a written test. Then refactoring of the written code with a constant verification of test efficiency is performed.
Writing the tests first requires you to really consider what do you want from the code
Fast feedback
Creates SOLID code
Maintainable, flexible and easily extensible

### 20. Explain the differences between var, const and let:
var: function scope, can be hoisted
let: block scope
const: block scope, can’t be reassigned later in program (although arrays, objects can be mutated)
UX Suggestions from Wojtek
Generally ask about processes and how did she think of finding the right answer. Ask her about what is the problem that she’s trying to solve.
Less tools, more logical thinking
Also, how would she behave in front of difficult stakeholders
How would she resolve a conflict that type of thing
Generally in UX we want to get a feeling for what the person is like
Competence is secondary as it all can be learned

## Options for soft skills questions:

- Tell me about a situation where you have been part of a group working toward a specific goal. What was your role in the group?

- Can you give an example of a time you influenced a colleague to adopt your way of thinking?

- Can you describe a time where you dealt with an unsatisfied or upset customer in the past?

- What skills and personal qualities have you contributed to the teams you have been part of?

- How do you update yourself?

# Final project for ITF Manual Testing Course

  The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application. 

Application under test: https://opensource-demo.orangehrmlive.com/ , based on the Complete Administrative User Guide specifications (https://www.orangehrm.com/assets/Files/Complete-Administrative-User-Guide.pdf?url=/Files/Complete-Administrative-User-Guide.pdf).

API Documentation: https://orangehrm.github.io/orangehrm-api-doc/

**The final project will be split into 3 sections: [Testing section](https://github.com/CristianaGogoanta/Manual_Testing_Portofolio/tree/main/Final%20Project#1-testing-section), [API Testing](https://github.com/CristianaGogoanta/Manual_Testing_Portofolio/blob/main/Final%20Project/README.md#3-api-section) and [SQL section](https://github.com/CristianaGogoanta/Manual_Testing_Portofolio/tree/main/Final%20Project#2-sql-section).**

Tools used: Jira, Zephyr Squad, Postman and MySQL Workbench.

# Functional specifications

   The application chosen by me for testing is https://opensource-demo.orangehrmlive.com/ , "Admin" section, "User management" and "Job" module.
   
   The test project was created with the help of the Jira tool and is divided into two epics, one for the "User Management" module, having as a requirement, the verification of the functionality to administer users as an admin, and the second epic for the "Job" module and requests testing as an admin to all the elements that make up the web page (GUI testing).
   
   ![EPIC+STORY](https://user-images.githubusercontent.com/37835952/191321453-ded78dee-e023-45d5-af5e-1137c9ac7c05.jpg)



# 1 Testing section

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for the Admin module from the OrangeHRM application. 

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan

#### 1.1.1 Roles assigned to the project and persons allocated

- Project manager - Andreea Mihalache
- Product owner - George Olteanu
- Software developer - Gabriela Tomescu
- QA Engineer - Cristiana Gogoanță

#### 1.1.2 Entry criteria defined

* The environment is up and running
* Role and permissions are allocated
* User created

#### 1.1.3 Evaluating entry criteria

The entry criterias defined in the Test Planning phase have been achieved and the test process can continue. 


#### 1.1.4 Test scope

* __Tests in scope:__ Review and Functional Testing using Black-box testing, Experience-based testing as Test Design Tehniques. GUI testing.
* __Tests not in scope:__ Performance Testing, Stress testing, Volume Testing, Compatibility testing with multiple browsers, Mobile testing and Functional Testing using White-box Testing Tehniques.

#### 1.1.5 Risks detected

* Project risks: 
* Product risks: * Unstable application (there are times when it doesn't work at all), which can lead to inability of the product to meet requirements. 
                 * Poor functioning ( sometimes login is not allowed ) this can lead to inability of the product to meet the customer's expectations

#### 1.1.6 Exit criteria defined

* All test cases set in scope executed
* During this testing, all 15 test cases planned for execution were tested and a total number of 3 bugs were discovered, whose priorities are: 1 – highest, 1 – high and 1 – medium.
* The reported defects were fixed and retested.
* Product risks have been reduced by upgrading the application.
* Retesting and regression testing will be done for the new version of the application.
* Testing deadline 10.08.2022

## 1.2 Test Monitoring and Control

It will be done by generating periodic reports that reflect the current status of the test.

## 1.3 Test Analysis

The testing process will be executed based on the above requirements for the Dependents module. The following test conditions were found:
* Adding a user in the "PIM" module; 
* Adding a user with the admin function; 
* Adding a user with the function of ESS-Supervisor/Employee;
* Deleting a user;
* Saving newly added users from one login to another;
* Changing the status of a user;
* Changing a user's role;
* Checking the correct operation of "Add", "Save", "Delete", "Edit", "Cancel" buttons;
* Checking all text fields;
* checking all check boxes.

## 1.4 Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases 
are:

**Test cases:**
![teste](https://user-images.githubusercontent.com/37835952/191848075-b934b13e-9217-46d5-a8ff-18eccb479f9f.jpg)


The test cases with steps can be viewed here: [Zephyr Test Steps + Executions + Results (Jira).pdf](https://github.com/CristianaGogoanta/Manual_Testing_Portofolio/blob/main/Final%20Project/Zephyr%20Test%20Steps%20%2B%20Executions%20%2B%20Results%20(Jira).pdf)

## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

* Testing environment is up and running: https://opensource-demo.orangehrmlive.com/
* Access to the testing environment is given: Username : Admin | Password : admin123
* Cycle summary was created
* Test cases were added to the cycle summary

## 1.6 Test Execution

* Test cases are executed on 2 test Cycle summary created : 

 1. Testing the functionality of the Admin section of the OrangeHRM site Version 2 
 
 ![teste functionality](https://user-images.githubusercontent.com/37835952/191852059-be17262f-4b12-4991-bb56-a61f72731fb8.png)
 ![teste functionality 1](https://user-images.githubusercontent.com/37835952/191852185-c149ed72-45f4-449a-b7bf-e4f0d872a1bc.jpg)
![teste functionality 2](https://user-images.githubusercontent.com/37835952/191852315-b378e7e7-4ae3-42fc-a1dd-d721dc93ab56.jpg)

 2. GUI Testing module "Job"
 
![teste GUI](https://user-images.githubusercontent.com/37835952/191852391-27b3a794-d96a-418b-90e4-d1ee0c065d5e.jpg)

All test cases with steps can be viewed here: [Zephyr Test Steps + Executions + Results (Jira).pdf](https://github.com/CristianaGogoanta/Manual_Testing_Portofolio/blob/main/Final%20Project/Zephyr%20Test%20Steps%20%2B%20Executions%20%2B%20Results%20(Jira).pdf)

* Bugs have been created based on the failed tests. The complete bug reports can be found here: [BUGS.pdf](https://github.com/CristianaGogoanta/Manual_Testing_Portofolio/blob/main/Final%20Project/BUGS.pdf)

![bug  ticket](https://user-images.githubusercontent.com/37835952/191853198-9d0bd905-8477-470a-9303-e186a654def8.jpg)

   Bug report example :
   ![bug part 1](https://user-images.githubusercontent.com/37835952/191853679-29c03bda-83fc-4f39-a248-0cec5e337410.png)
   ![bug part 2](https://user-images.githubusercontent.com/37835952/191853713-043f27cd-b57e-4aff-b186-74297b8a0f5f.png)


## 1.7 Test Completion

* Exit criteria was evaluated and passed
* The traceability matrix was generated and can be found here: [Traceability Report (Direct Only) (Jira).pdf](https://github.com/CristianaGogoanta/Manual_Testing_Portofolio/blob/main/Final%20Project/Traceability%20Report%20(Direct%20Only)%20(Jira).pdf) and [Traceability matrix.xlsx](https://github.com/CristianaGogoanta/Manual_Testing_Portofolio/blob/main/Final%20Project/Traceability%20matrix.xlsx)
* Test execution chart was generated, the final report shows:

<img width="617" alt="Raport Final" src="https://user-images.githubusercontent.com/37835952/191857477-5705f7e8-26db-4471-a926-0fd0fadf966f.png">

During this testing, all 15 test cases planned for execution were tested. From the 15 tests, a total number of 3 bugs were discovered, whose priorities are: 1 – highest, 1 – high and 1 – medium.

The reported defects were fixed and retested.

Product risks have been reduced by upgrading the application.

Retesting and regression testing will be done for the new version of the application.


# 2 API testing

API testing was done for the Admin, Employee, Leave and Time modules. the tests were written in Postman and contain the HTTP methods GET, POST, PUT and DELETE.
If you want to run the [Collection](https://github.com/CristianaGogoanta/Manual_Testing_Portofolio/blob/main/Final%20Project/OrangeHRM%20API%20Collection.postman_collection%20Cristiana%20Gogoanta) and the [Environment](https://github.com/CristianaGogoanta/Manual_Testing_Portofolio/blob/main/Final%20Project/Environment%20OrangeHRM.postman_environment%20Cristiana%20Gogoanta), you need first to register your OAuth Client, in the Orange HRM application,Admin module, Configurationsection, Register OAuth Client subsection.

# 3 SQL section

I created the [OrangeHRM database](https://github.com/CristianaGogoanta/Manual_Testing_Portofolio/blob/main/Final%20Project/OrangeHRM.sql) using the information found in the Admin and PIM Module

![Baza de date Orangehrm](https://user-images.githubusercontent.com/37835952/192978730-0634ee04-84b7-43d6-9dd2-a61e58ab1217.jpg)

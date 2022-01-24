# Pewlett-Hackard-Analysis

### Overview of the analysis: 

Pewlett-Hackard is a large company that needs to forcast the number of employees that will be retiring in order to understand staffing needs in the near future.  All of the employee data is in CSV files.  We are tasked with helping the HR Analyst create a SQL database with all of the different CSV's containing employee data.  Once the database is created, we must do an analysis to determine how many employeess are up for retirement.

### Results: 

Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

The analysis started by analysing the CSV tables provided to determine the employee data available.  Next we created an ERD to determine links between CSV files to determine how they could be joined to extract relevant retirement data.  CSV files were imported into SQL database and joined in various ways to create the Retirement_Titles table.  This table shows the 133,776 employees that are able to retire from Perlett-Hackard.  

Retiring Titles

<img width="677" alt="Screen Shot 2022-01-24 at 5 17 50 AM" src="https://user-images.githubusercontent.com/37478490/150773706-707f82e7-d530-4f84-bfb4-da37e82cdaad.png">

An idea was proposed to allow retiring employees the oppotunity to mentor newer employees.  This gives renewed purpose to retiring employees while helping to transfer valuable company expertise to newer and less experienced employees.  The Retiring Titles count table was created to help forcast what are the current job titles are held by the retiring employees that are available to serve as mentors.

Retiring Titles Count

<img width="355" alt="Screen Shot 2022-01-23 at 11 15 09 PM" src="https://user-images.githubusercontent.com/37478490/150771319-33d091f9-f876-480e-92c5-f7de68802026.png">

The Mentorship Eligibility Table below is a list of all retiring current employees that can help to recruit, train and ensure the success of Pewlett Hackard during a transition period where more than 20% of its workforce is retirement eligible.

Mentorship Eligibility Table

<img width="730" alt="Screen Shot 2022-01-24 at 4 59 20 AM" src="https://user-images.githubusercontent.com/37478490/150771170-6567f6b6-e924-4d55-8b13-8dc9b151db93.png">


### Summary: 
There are 133,776 out of 300,024 total employees that are eligible for retirement.  This type of mass exodus of the workform requires careful planning to navigate successfully though.  

Accooding to the Requiring Titles count table, not every deparment has eligible mentors available to help recruit and train the replacement workforce.  Managment could use this analysis to help plan for roles that don't have eligible mentors available.  Can mentors in different but adjacent roles provide mentorship.  Have certain roles evolved to the point where they do not need replacment?  These are all the planning tools provided to Pewlett-Hackard management to plan the logistics of successfully navigating the "Silver Tsunami"


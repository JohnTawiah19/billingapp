# README

### An application that geerates an invoice from a timesheet given

This application is a basic CRUD application that takes the details of an employee and generates a invoice for a
project being worked on. The application is built on the ruby on rails framework. A later version would contain a limited number of companies which can be increased and reduced by the finance team.

### To run this application install rails framework

- run bundle to install the necessary gems
 - run the rails server "rails s"

### Design assumptions

Initial plan was to create a relational database with the timesheet and the project as a relation. An employee fill a form that populates the database
The data is then fetched and used to generate an invoice. And I would love to get feedback on how to improve the application better.
Since the frontend was not necessary, I didn't focus too much on it and a later version with a better frontend would have a limited number of companies which 
employee would select from in order to reduce errors from typing in the company name. This would prevent the application from generating invoices for companies
which do not exist. The names and number of companies would be increased and reduced by the finance team and the employee would select from the available list.


### This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:
ra

- Ruby version (rails version 6.0.3.3,  ruby version 2.6.5p114)

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

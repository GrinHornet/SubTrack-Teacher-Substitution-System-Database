# SubTrack-Teacher-Substitution-System-Database
This documentation provides a comprehensive overview of the database schema used in the Laravel application. It includes a summary of SQL scripts, table definitions, relationships, and intended purposes of each table. This schema supports a school or scheduling system involving teachers, schedules, substitutions, classes, and absences.

Database Name: laravel
Generated: Nov 09, 2025
MySQL Version: 8.0.40
System Framework: Laravel 10+ (inferred from migrations & standard tables)

# Database Schema Summary
The schema is optimized for:
•	Accurate tracking of teacher availability
•	Automated assignment of substitute teachers
•	Logging absences and substitution outcomes
•	Retrieving teacher schedules in real time
•	Maintaining user authentication and permissions

The main tables are categorized into two groups:
#A. Core Functional Tables
Table	Purpose
user	Stores login credentials and user roles.
teachers	Maps users to teacher profiles and attributes.
classes	Stores class information handled by teachers.
schedules	Defines class day/time schedules.
absences	Logs teacher absences with status.
substitutions	Stores generated substitution assignments.
subjects	Stores academic subject information.

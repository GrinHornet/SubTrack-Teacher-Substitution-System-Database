# SubTrack-Teacher-Substitution-System-Database
This documentation provides a comprehensive overview of the database schema used in the Laravel application. It includes a summary of SQL scripts, table definitions, relationships, and intended purposes of each table. This schema supports a school or scheduling system involving teachers, schedules, substitutions, classes, and absences.

* Database Name: laravel
* Generated: Nov 09, 2025
* MySQL Version: 8.0.40
* System Framework: Laravel 10+ (inferred from migrations & standard tables)

# Database Schema Summary
The schema is optimized for:
* Accurate tracking of teacher availability
* Automated assignment of substitute teachers
* Logging absences and substitution outcomes
* Retrieving teacher schedules in real time
* Maintaining user authentication and permissions

The main tables are categorized into two groups:

## A. Core Functional Tables
<img width="1220" height="415" alt="image" src="https://github.com/user-attachments/assets/bc5bac10-d118-483c-87de-3ce757dbecd2" />

## B. System/Framework Tables
<img width="1217" height="409" alt="image" src="https://github.com/user-attachments/assets/22d7dcff-2356-4ce9-90dd-082826b27e6b" />

# TABLE-BY-TABLE DOCUMENTATION
### users
* Stores authentication information.
<img width="1130" height="457" alt="image" src="https://github.com/user-attachments/assets/1aa57924-b980-4813-b9d9-c0944ab33fda" />

### teachers
* Stores teacher records.
<img width="881" height="364" alt="image" src="https://github.com/user-attachments/assets/ddb1d4f7-1673-4d77-8903-8076bd7d1d76" />

### classes
* Stores class group names and descriptions (NOT subject classes).
<img width="978" height="246" alt="image" src="https://github.com/user-attachments/assets/54fadf9c-3020-4cc0-a5b2-d29041a53f76" />
Indexes
*	UNIQUE (name)

### schedules
* Stores every teacher’s daily schedule and subject/class assignment.
<img width="1139" height="510" alt="image" src="https://github.com/user-attachments/assets/b5d0224d-7ee3-46eb-a901-cb51b8ffe9f2" />
Constraints
* FK teacher_id → teachers.id (ON DELETE CASCADE)

### absences
* Tracks teacher absences.
<img width="981" height="278" alt="image" src="https://github.com/user-attachments/assets/faa1d6d7-fca9-4ed9-8e30-fe662889445e" />
Constraints
*	FK: absences_teacher_id_foreign → teachers.id (ON DELETE CASCADE)

### substitutions
* Records all substitution assignments.
<img width="1275" height="534" alt="image" src="https://github.com/user-attachments/assets/52603515-abc1-4571-999b-b61a82bc2c3c" />
FK Constraints
*	class_id → classes
*	teacher_id → teachers (original)
*	substitute_id → teachers (substitute)
All ON DELETE CASCADE

### subjects
* Stores academic subject information.
<img width="673" height="295" alt="image" src="https://github.com/user-attachments/assets/e397934f-6061-4716-9ded-0b3b28242ea6" />

### cache
* Stores cached values used by Laravel.
<img width="625" height="187" alt="image" src="https://github.com/user-attachments/assets/cb645d16-8300-4ec5-820c-adac8d2ee4b9" />

### cache_locks
* For preventing concurrent access to cache entries.
<img width="685" height="185" alt="image" src="https://github.com/user-attachments/assets/606d0f1a-4a97-4d05-a046-cdd4204aeea7" />

### class_models
* Internal table for dynamic class model entries.
<img width="868" height="260" alt="image" src="https://github.com/user-attachments/assets/5805edd8-ed02-4356-a119-9b15c4747450" />

### failed_jobs
* Stores failed Laravel queue jobs.
<img width="766" height="333" alt="image" src="https://github.com/user-attachments/assets/97470243-d74a-45d1-ad96-acdf92649fe4" />

### jobs
* Stores queued jobs waiting for execution.
<img width="766" height="335" alt="image" src="https://github.com/user-attachments/assets/cef9ca7d-2241-4e77-b571-4d437a5d5371" />

### job_batches
* Tracks batches of queued jobs.

### migrations
* Tracks Laravel migration scripts.
<img width="549" height="171" alt="image" src="https://github.com/user-attachments/assets/cc95fbb3-cf63-4d6d-afae-e95a1f5263d5" />

### password_reset_tokens
* Stores tokens for account recovery.
<img width="575" height="175" alt="image" src="https://github.com/user-attachments/assets/3d1bce96-f16b-40f2-8b99-36aab9582a13" />

### sessions
* Stores active Laravel sessions.

# DATABASE RELATIONSHIPS (ERD Description)
### Main relationships:
*	teachers (1) → (M) schedules
*	teachers (1) → (M) absences
*	teachers (1) → (M) substitutions (as substitute teachers)
*	absences (1) → (1) substitutions
*	classes (1) → (M) schedules + substitutions
*	subjects (1) → (M) schedules + substitutions

### User Authentication Layer
*	users stores accounts
*	sessions stores active sessions

### Automation Layer
*	jobs, job_batches, failed_jobs support background task execution
# ERD (Entity Relationship Diagram)
<img width="921" height="744" alt="image" src="https://github.com/user-attachments/assets/927853dc-d886-48ca-9e13-284c4a668935" />


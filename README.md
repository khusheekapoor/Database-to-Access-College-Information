# Database-to-Access-College-Information

In today’s digital era, information is available aplenty but, finding content
relevant to one’s area of study remains challenging. Information regarding
choice or opinion-based topics are often conflicting, especially in the higher
education sector. While looking for institutions to pursue higher education,
there are not many consolidated databases that contain all the necessary
information required to make an informed decision.

This project aims to create a database with all important details required by
under-graduates to make well-rounded selections of their future degree
programmes. The students can log in and look for colleges that have fields of
study in their area of interest. They can also compare the various programmes
and analyze the differences. The college administrator can also log in to
provide institute credentials and other details about courses and fellowships
offered. Important database system concepts like cursors, triggers, procedures,
and functions were used.

There’s the ease of accessing information from one source. The students can
efficiently search for colleges and their requirements for acceptance into their
programmes. The service fulfills various needs of users who wish to pursue
graduate or research studies abroad, also providing details of financial aid
offered.

The main objective of optimizing the querying process has been achieved. A
consolidated database that’s easy to access and utilize, is helpful in the long
run to solve current real-world problems. If needed, the service can also be
modified to access a larger populace and scaled up. The software tools used
in this project are Oracle for the database design and implementation, etc.

## Proposed System

The system that is proposed in this project provides a comprehensive guide on higher
educational opportunities. This will act as a one-stop destination for students wanting to pursue
higher studies. A student can create their own login and upload their test scores as per the needs
of the organization. They can then search for different degree programmes, streams, and
courses available to them in different institutions. The institutions are also relatively ranked on
the basis of various university rankings offered by different bodies. This makes comparison
easier. The system also gives a list of minimum requirements that must be fulfilled to get
accepted in the selected programme. For students who require financial assistance, the project
also specifies scholarships given by different organizations in different countries. If the student
wishes to learn more about a particular university, they can contact their offices using the
contact details provided in system. Such a system optimizes the research process and
efficiently presents a complete view of different institutions. Thus, the student can now
effectively make choices about their choice of university for higher education without much
hassle.

## Objectives

The main objectives of the work are:
- To optimize search for higher educational institutions
- To provide a comprehensive guide for application process
- To compare and analyze the programmes offered by various institutions
- To account for preferences of user while presenting institutions
- To check qualification requirements for a user-institution match

## Functional Requirements

### Student/ Institute Login/ Registration Module

This module allows students to register (and later log on) to the service. The student can register
via phone number or email and set a personal username, password. The registration is verified
by sending OTP to given phone or email. In case users forget password, an OTP is sent to
registered phone number or email that allows them to reset their password. After registration
the student can fille their profile with relevant details like name, address, phone, email, and test
scores that they have received. This is stored in database and used for personalized institute
recommendations. A unique student ID is generated that allows database administrator to
provide service efficiently. This is also used by students to re-login on a different date and view
their already saved preferences. This module also allows the different institutes to register with
service. A user from institutes side creates an institute login by registering college details in
terms of streams offered, courses, minimum student requirements, degree programmes,
maximum intake, address and contact details. A unique college ID is generated for each
institution and a unique stream ID is generated for each stream. This helps ease of service.
They also provide institute rankings as per different sources.

#### [New Student Registration](/Functional&#32;Requirement&#32;Implementation/student_registration.sql)

|| The student must be able to create student ID and password by supplying appropriate details. |
|---|---|
| Input | New Username, Password, Phone or Email |
| Processing | The system must check availability of entered user name. Password must follow criteria- minimum 8 characters, at least onecapital, one number and one special character. Check for validity of phone number by prompting to enter OTP. |
| Output | Profile created message in case of successful registration. In case of problems with registration, message highlighting the issue is shown, so that it can be rectified. |

#### [New Institute Registration](/Functional&#32;Requirement&#32;Implementation/college_registration.sql)

|| The institute must be able to create institute ID and password by supplying appropriate details. |
|---|---|
| Input | New college name, address, stream name, email, rankings |
| Processing | The system must check availability of entered user name. Check for validity of email by sending OTP. |
| Output | Institute registered with service message is displayed. In case of problems with registration, message highlighting the issue is shown, so that it can be rectified. |

#### [Student Login](/Functional&#32;Requirement&#32;Implementation/student_login.sql)

|| The existing student must be able to login upon entering proper user name and password. |
|---|---|
| Input | Username, Password |
| Processing | Check the Username and password against information stored in data storage. |
| Output | If user entered correct user name & password <br/> &nbsp; Login successful and open main application menu <br/> Else <br/> &nbsp; Display Login not successful, retry logging in. |

#### [College Login](/Functional&#32;Requirement&#32;Implementation/college_login.sql)

|| The existing institute must be able to login upon entering proper user name and password. |
|---|---|
| Input | Username, Password |
| Processing | Check the Username and password against information stored in data storage. |
| Output | If user entered correct user name & password <br/> &nbsp; Login successful and open main application menu <br/> Else <br/> &nbsp; Display Login not successful, retry logging in. |

#### [Student Forgot and Reset Password](/Functional&#32;Requirement&#32;Implementation/student_forgot_reset_password.sql)

|| If existing student is not able to login, forgot password can be used to reset password. |
|---|---|
| Input | Prompt user to enter username, Phone or Email |
| Processing | If username and corresponding phone/ email exist in the data storage <br/> &nbsp;Send OTP to Phone/Email, Prompt the user to enter OTP <br/> &nbsp; If OTP matching <br/> &nbsp; &nbsp; Prompt user to change password according to criteria. <br/> &nbsp; Else <br/> &nbsp; &nbsp; OTP not matching. <br/> Else <br/> &nbsp; User name and corresponding Phone/Email not existing in the storage |
| Output | Password successfully changed / User name, phone/email doesn’t match. |

#### [College Forgot and Reset Password](/Functional&#32;Requirement&#32;Implementation/college_forgot_reset_password.sql)

|| If existing student is not able to login, forgot password can be used to reset password. |
|---|---|
| Input | Prompt user to enter username, Phone or Email |
| Processing | If username and corresponding phone/ email exist in the data storage <br/> &nbsp;Send OTP to Phone/Email, Prompt the user to enter OTP <br/> &nbsp; If OTP matching <br/> &nbsp; &nbsp; Prompt user to change password according to criteria. <br/> &nbsp; Else <br/> &nbsp; &nbsp; OTP not matching. <br/> Else <br/> &nbsp; User name and corresponding Phone/Email not existing in the storage |
| Output | Password successfully changed / User name, phone/email doesn’t match. |

### [Institute and Scholarship Finder Module](/Functional&#32;Requirement&#32;Implementation/college_aid_finder.sql)

This module allows the user to find institutes of their preference. The user enters the country
and rank range of the college and the stream of their preference. The application then provides
the institutes and degree which match the preferences of the user and for which they are eligible
based on the requirements. The application also provides scholarships which are applicable in
the institute which the user may apply for.

|| The student must be able to find colleges and scholarships of their preference for which they are eligible. |
|---|---|
| Input | College Country, Rank Range, Stream of Preferences |
| Processing | The system checks for institutes that match the user’s preferences and for which they are eligible based on the requirements and the scholarships which are applicable in the institute. |
| Output | The matched institutes and scholarships are displayed. If no such institute exists, an appropriate message is displayed. |


## ER Diagram

<img src="https://user-images.githubusercontent.com/74901388/176727025-84865634-f43a-4c9e-a9be-602d441e11c2.png" width="700" height="900" alt="ER Diagram">


## Schema Diagram

<img src="https://user-images.githubusercontent.com/74901388/176727410-7f99dee8-247a-40c1-8708-e98b9e10a3c7.png" width="700" height="500" alt="Schema Diagram">

| Table | Attributes |
|---|---|
| College | <ins>College_ID</ins>, Password, Email, College_Name, Block, Street, City, State, Country, Zip_Code |
| Student | <ins>Student_ID</ins>, Password, First_Name, Last_Name, Phone, Email, College_ID, College_Name, Degree_Type, Enrolment_Date, Graduation_Date, Credits <br/> College_ID references College|
| Stream | <ins>Stream_ID</ins>, Stream_Name |
| Degree | <ins>Degree_ID, College_ID, Stream_ID</ins>, Degree_Type, Degree_Name, Seats, Fee <br/> College_ID references College, Stream_ID references Stream |
| Ranking | <ins>College_ID</ins>, QS, Times, ARWU, CWTS, NIRF <br/> College_ID references College |
| Requirements | <ins>College_ID, Stream_ID, Degree_ID</ins>, Years, CGPA, IELTS, TOEFL, GRE, GATE, GMAT, CAT <br/> College_ID references College, Stream_ID references Stream, Degree_ID references Degree |
| Scores | <ins>Student_ID</ins>, Years, CGPA, IELTS, TOEFL, GRE, GATE, GMAT, CAT <br/> Student_ID references Student |
| Aid | <ins>College_ID, Scholarship_Name</ins>, Organization, Country <br/> College_ID references College |

## Data Dictionary/ Relational Model Implementation

#### [College](/Tables/college.sql)

| Column | Data Type | Size | Constraint | Constraint Name |
|--|--|--|--|--|
| College_ID | Varchar2 | 10 | Primary Key, Starts with 'C' | pk_college |
| Password | Varchar2 | 20 | | |
| Email | Varchar2 | 30 | Valid only if it contains @ and . | valid_email_college |
| College_Name | Varchar2 | 30 | | |
| Street | Varchar2 | 20 | | |
| City | Varchar2 | 20 | | |
| State | Varchar2 | 20 | | |
| Country | Varchar2 | 20 | Not Null | valid_country_college |
| Zip_Code | Number | 6 | | |

#### [Student](/Tables/student.sql) 

| Column | Data Type | Size | Constraint | Constraint Name |
|--|--|--|--|--|
| Student_ID | Varchar2 | 10 | Primary Key, Starts with 'S' | pk_student |
| Password | Varchar2 | 20 | | |
| First_Name | Varchar2 | 20 | | | 
| Last_Name | Varchar2 | 20 | | |
| Phone | Number | 10 | Unique, Not Null | unq_phone_student | 
| Email | Varchar2 | 30 | Valid only if it contains @ and . | valid_email_student |
| Degree_Type | Varchar2 | 20 | | |
| College_ID | Varchar2 | 10 | References College | fk_student |
| College_Name | Varchar2 | 30 | | |
| Enrolment_Date | Date | | Not Null | |
| Graduation_Date | Date | | Not Null, Graduation_Date>Enrolment_Date | valid_graduation |
| Credits | Number | 4 | More than 0 | valid_credits | 

#### [Stream](/Tables/stream.sql)

| Column | Data Type | Size | Constraint | Constraint Name |
|--|--|--|--|--|
| Stream_ID | Varchar2 | 10 | Primary Key, Starts with 'ST' | pk_stream |
| Stream_Name | Varchar2 | 30 | Unique | unq_stream |

#### [Degree](/Tables/degree.sql)

| Column | Data Type | Size | Constraint | Constraint Name |
|--|--|--|--|--|
| Degree_ID | Varchar2 | 10 | Primary Key, Starts with 'D' | pk_degree |
| College_ID | Varchar2 | 10 | References College, On Delete Cascade | fk_college_offers |
| Stream_ID | Varchar2 | 10 | References Stream, On Delete Cascade | fk_stream_offers |
| Degree_Type | Varchar2 | 10 | | |
| Degree_Name | Varchar2 | 10 | | |
| Seats | Number | 4 | More than 0 | valid_seats |
| Fee | Number | (6,2) | More than 0 | valid_fee |

#### [Requirements](/Tables/requirements.sql) 

| Column | Data Type | Size | Constraint | Constraint Name |
|--|--|--|--|--|
| College_ID | Varchar2 | 10 | Primary Key, References College, On Delete Cascade | fk_college_req, pk_req |
| Stream_ID | Varchar2 | 10 | Primary Key, References Stream, On Delete Cascade | fk_stream_req, pk_req |
| Degree_ID | Varchar2 | 10 | Primary Key, References Degree, On Delete Cascade | fk_degree_req, pk_req |
| Years | Number | 4 | More than 0 | valid_years_req |
| CGPA | Number | (3,2) | Not Null, More than 0 | valid_cgpa_req |
| IELTS | Number | (2,1) | Between 0 and 9 | valid_ielts_req |
| TOEFL | Number | 3 | Between 0 and 120 | valid_toefl_req |
| GRE | Number | 3 | Between 0 and 340 | valid_gre_req |
| GATE | Number | 4 | Between 0 and 1000 | valid_gate_req |
| GMAT | Number | 3 | Between 0 and 800 | valid_gmat_req | 
| CAT | Number | 3 | Between 0 and 300 | valid_cat_req |

#### [Scores](/Tables/scores.sql) 


| Column | Data Type | Size | Constraint | Constraint Name |
|--|--|--|--|--|
| Student_ID | Varchar2 | 10 | Primary Key, References College, On Delete Cascade | fk_score, pk_score |
| Years | Number | 4 | More than 0 | valid_years_score |
| CGPA | Number | (3,2) | Not Null, More than 0 | valid_cgpa_score |
| IELTS | Number | (2,1) | Between 0 and 9 | valid_ielts_score |
| TOEFL | Number | 3 | Between 0 and 120 | valid_toefl_score |
| GRE | Number | 3 | Between 0 and 340 | valid_gre_score |
| GATE | Number | 4 | Between 0 and 1000 | valid_gate_score |
| GMAT | Number | 3 | Between 0 and 800 | valid_gmat_score | 
| CAT | Number | 3 | Between 0 and 300 | valid_cat_score |

#### [Aid](/Tables/aid.sql)

| Column | Data Type | Size | Constraint | Constraint Name |
|--|--|--|--|--|
| College_ID | Varchar2 | 10 | Primary Key, References College, On Delete Cascade | fk_aid, pk_aid |
| Scholarship_Name | Varchar2 | 30 | Primary Key | pk_aid |
| Organization | Varchar2 | 20 | | |
| Country | Varchar2 | 10 | Not Null | |

#### [Ranking](/Tables/ranking.sql)

| Column | Data Type | Size | Constraint | Constraint Name |
|--|--|--|--|--|
| College_ID | Varchar2 | 10 | Primary Key, References College, On Delete Cascade | fk_ranking, pk_ranking |
| QS | Number | 4 | More than 0 | valid_qs_rank | 
| Times | Number | 4 | More than 0 | valid_times_rank |
| ARWU | Number | 4 | More than 0 | valid_arwu_rank |
| CWTS | Number | 4 | More than 0 | valid_cwts_rank |
| NIRF | Number | 4 | More than 0 | valid_nirf_rank |

## Triggers

[1.](/Triggers/valid_new_student.sql): To be fired when duplicate phone or email is entered when registering a new student.

[2.](/Triggers/valid_new_college.sql): To be fired when duplicate email is entered when registering a new college.

[3.](/Triggers/valid_stream_degree.sql): To be fired when an invalid College ID or Stream ID is entered when adding a new degree.

[4.](/Triggers/valid_college_aid.sql): To be fired when an invalid College ID is entered when adding a new aid.

[5.](/Triggers/valid_college_rank.sql): To be fired when an invalid College ID is entered when adding the rankings.

[6.](/Triggers/valid_scores.sql): To be fired when an invalid Student ID is entered when adding/ updating the student's scores or when the scores added/ updated are out of valid range.

[7.](/Triggers/valid_requirements.sql): To be fired when an invalid College ID or Stream ID is entered when adding/ updating the college's requirements or when the requirements added/ updated are out of valid range.

## Stored Procedures

[1.](/Utility&#32;Procedures/add_degree.sql): Procedure to add a new degree (linked to a College ID and a Stream ID) into the database and allot it a unique Degree ID.

[2.](/Utility&#32;Procedures/add_aid.sql): Procedure to add a new aid (linked to a College ID) into the database.

[3.](/Utility&#32;Procedures/add_ranking.sql): Procedure to add rankings of a College awarded by different organizations viz. QS, Times, ARWU, CWTS, and NIRF.

[4.](/Utility&#32;Procedures/update_ranking.sql): Procedure to update rankings of a College awarded by different organizations viz. QS, Times, ARWU, CWTS, and NIRF as they may vary periodically.

[5.](/Utility&#32;Procedures/add_scores.sql): Procedure to add the scores achieved by a Student in different tests viz. IELTS, TOEFL, GRE, GATE, GMAT, CAT, and CGPA which will be required to check eligibility against a College's requirements. The Procedure also derives the Year (number of years of undergraduate degree) attribute from the Enrolment and Graduation Dates stored in the Student table.

[6.](/Utility&#32;Procedures/update_scores.sql): Procedure to update the scores achieved by a Student in different tests viz. IELTS, TOEFL, GRE, GATE, GMAT, CAT, and CGPA as they may vary periodically, which will be required to check eligibility against a College's requirements. The Procedure also derives the Year (number of years of undergraduate degree) attribute from the Enrolment and Graduation Dates stored in the Student table.

[7.](/Utility&#32;Procedures/add_requirements.sql): Procedure to add the minimum scores required by a Student in different tests viz. IELTS, TOEFL, GRE, GATE, GMAT, CAT, and CGPA which will be required to check eligibility against a College's requirements.

[8.](/Utility&#32;Procedures/update_requirements.sql): Procedure to update the minimum scores required by a Student in different tests viz. IELTS, TOEFL, GRE, GATE, GMAT, CAT, and CGPA which will be required to check eligibility against a College's requirements, as they may vary periodically.


## Conclusion

The Database to Access College Information has been constructed. This system has
optimized the search for colleges based on student needs. This consolidated database
management system improves access to university information and eliminates many blind
spots in the decision-making process. The search for eligibility and admission criteria has
also been simplified, which aids in narrowing the search. The system also provides access to
contact information for various institutes in which a student is interested. Financial assistance
knowledge is also beneficial to students. The proposed system was successfully implemented
as all of its objectives were met.

## Future Work

DACI has many far -reaching implications. It can be expanded to include research and other
related studies in addition to solving a real-world problem faced by undergrad students from
all over the world. Fellowships from various institutions can also be included. A simple, userfriendly GUI will aid users in navigating the database in the future. This is critical for system
expansion. When this is deployed on a large scale, the database can be expanded to include
non-STEM fields of study such as performance arts, design, and so on. Additional modules
like email verification, etc., can also be included. The database can be expanded to include,
projects undertaken by universities and the pre-requisites for research internships, in a field of
student's interest. This will broaden the target demographic. As a result, the future
possibilities for DACI are limitless.


Write a query to return all the rows from user_new table and role tables where there 
is matching user_new.role_id value in both the usernew and role tables. Display role.name and user_new.name in ascending order.

select user_new.id,user_new.emailid,user_new.name,user_new.password,user_new.phonenumber,user_new.profile_id,user_new.role_id,user_new.username
,role.id,role.name from user_new inner join role on user_new.role_id=role.id
order by role.name asc,user_new.name asc;


Write a query to return all rows from the user_new table and only those rows from 
the role table where the joined fields are equal. Display role.name and user_new in ascending order.
select user_new.id,user_new.emailid,user_new.name,user_new.password,user_new.phonenumber,user_new.profile_id,user_new.role_id,user_new.username
,role.id,role.name from user_new left join role on user_new.role_id=role.id
order by role.name asc,user_new.name asc;

Write a query to return all names from the user_new table where there is matching 
user_new.role_id value in both the user_new and role tables.

select user_new.name FROM user_new,role where user_new.role_id=role.id;

Write a query to return all user_new.phonenumber, user_new.emailid, profile.batch,
department.name, profile.designation, experience.company_name from user_new table where there is matching
SELECT user_new.phonenumber

profile id in both user_new and profile table,
profile.degree_id and degree.id from profile and degree table,
degree.department_id and department.id in degree and department
profile.id and experience.profile_id in experience and profile table
where user_name.name = "ProGrad" and experience.currentValue=3

select user_new.phonenumber, user_new.emailid, profile.batch,
department.name, profile.designation, experience.company_name from user_new inner join profile on profile.id=user_new.id
inner join degree on profile.degree_id =degree.id inner join department on degree.department_id = department.id
inner join experience on profile.id = experience.profile_id where user_new.name  = 'ProGrad' and experience.currentValue=3;




Write a query to return all user_new.name, skill.name from user_new table where there are matching ids 
in the tables in the order with constraints given below
role
profile
profile_skills
where role.name="Alumini"
Display by user_new.name and skill.name

select user_new.name, role.name from user_new inner join role on user_new.role_id=role.id 
inner join profile on role.id=profile.id  inner join profile_skills on profile.id=profile_skills.skill_id  where role.name='Alumini';


Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
role
profile
experience
where role.name = "Alumini"
Display in the order user_name.name followed by experience.company_name

select user_new.name,role.name,experience.company_name from user_new inner join role on user_new.role_id=role.id inner join profile
on role.id=profile.id inner join experience on profile.id=experience.id where role.name = 'alumini'
ORDER BY user_new.name, experience.company_name asc;


Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
role
profile
experience
where role.name = "Alumini"
Display in the order user_name.name followed by experience.company_name
select user_new.name,role.name,experience.company_name from user_new inner join role on user_new.role_id=role.id inner join profile
on role.id=profile.id inner join experience on profile.id=experience.id where role.name = 'alumini'
ORDER BY user_new.name, experience.company_name asc;

88888
Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
role
profile
experience
where role.name='Alumni' and experience.currentValue=1
Display in the order of user_new.name;
select user_new.name, experience.company_name from user_new inner join role on user_new.role_id=role.id inner join profile 
on user_new.profile_id=profile_id inner join experience on profile.id=experience.profile_id where role.name='Alumni'
and experience.currentValue=1 order by user_new.name asc;

Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
role
profile
experience
where role.name='Alumni' and experience.currentValue=1 and profile.batch='2008'
Display in the order of user_new.name;

select user_new.name, experience.company_name from user_new inner join role on user_new.role_id=role.id inner join profile 
on user_new.profile_id=profile_id inner join experience on profile.id=experience.profile_id where role.name='Alumni'
and experience.currentValue=1 and profile.batch='2008' order by user_new.name asc;

Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
role
profile
where role.name='Alumni' and user_new.profile_id is not null
Display in the order of user_new.name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id  where role.name='Alumni' and user_new.profile_id is not null order by user_new.name asc;

111111

Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
role
profile
where role.name='Alumni' and profile.batch='2008'

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id  where role.name='Alumni' and profile.batch='2008' order by user_new.name asc;

Display in the order of user_new.name;
Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
role
profile
degree
where role.name='Alumni' and degree.name='BSC_CT'
Display in the order of user_new.name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id inner join degree on profile.degree_id=degree.id where role.name='Alumni' and degree.name='BSC_CT'
order by user_new.name asc;



Write a query to return alluser_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
role
profile
degree
department
where role.name='Alumni' and department.name='CSE'
Display in the order of user_new.name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id inner join degree on profile.degree_id=degree.id inner join department on degree.id=department.id
where role.name='Alumni' and department.name='CSE'
order by user_new.name asc;


Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables
role
profile
higher_degree
department
where role.name='Alumni' and higher_degree.degree_name is not null
Display in the order of user_new.name,higher_degree.university_name

select user_new.name, higher_degree.university_name from user_new  inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id inner join higher_degree on profile_id=higher_degree.profile_id inner join  department on
higher_degree.id=department_id where role.name='Alumni' and higher_degree.degree_name is not null
order by user_new.name,higher_degree.university_name asc;


Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables
role
profile
higher_degree
department
where role.name='Alumni' and higher_degree.degree_name is not null
Display in the order of user_new.name,higher_degree.university_name

select user_new.name, higher_degree.university_name from user_new  inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id inner join  higher_degree on profile_id=higher_degree.id inner join 
department on higher_degree.id=department_id where role.name='Alumni' and higher_degree.degree_name is not null
 order by user_new.name,higher_degree.university_name asc ;
 15////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
role
profile
degree
department
higher_degree
where role.name='Alumni' and higher_degree.university_name='Texas University'
Display in the order of user_new.name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new  inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id inner join on degree profile_id=degree.id inner join department on degree.id=department.id inner join
higher_degree on profile_id=higher_degree.id
where role.name='Alumni' and higher_degree.university_name='Texas University'
order by user_new.name asc;


Write a query to return all user_new.name, profile.batch from user_new where there are matching ids in the tables
role
profile
where role.name='Alumni' and profile.gender='female'
Display in the order of user_new.name;

select user_new.name, profile.batch from user_new user_new  inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id  where role.name='Alumni' and profile.gender='female'
order by user_new.name asc;

Write a query to return all user_new.name, profile.batch, degree.name from user_new where there are matching ids in the tables
role
profile
degree
where role.name='Alumni' and profile.gender='female'
Display in the order of user_new.name;

select user_new.name, profile.batch, degree.name from  user_new  inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id inner join degree on profile.degree_id=degree.id 
where role.name='Alumni' and profile.gender='female'
 order by user_new.name asc;

Write a query to return all user_new.name, profile.batch, degree.name, department.name from user_new where there are matching ids in the tables
role
profile
degree
department
where role.name='Alumni' and profile.gender='female'
Display in the order of user_new.name;

select user_new.name, profile.batch, degree.name, department.name  from  user_new  inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id inner join degree on profile.degree_id=degree.id inner join department on degree.department_id=department.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name asc;


Write a query to return all degree.name, department.name from degree where there are matching ids in the tables
department
Display in the order of degree.name;

select degree.name, department.name from degree left join department on degree.department_id=department.id
order by degree.name asc;

Write a query to return all user_new.name, profile.designation from user_new where there are matching ids in the tables
role
profile
where role.name='Alumni' and profile.gender='male'

select user_new.name, profile.designation  from  user_new  inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id 
where role.name='Alumni' and profile.gender='male'
order by user_new.name asc;


Display in the order of user_new.name;
Write a query to return all user_new.name, profile.designation from user_new where there are matching ids in the tables
role
profile
experience
where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
Display in the order of user_new.name asc;

select user_new.name, profile.designation from user_new inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id 
inner join experience on experience.profile_id=profile.id
where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
order by user_new.name asc;

Write a query to return all user_new.name, querytable.content from user_new where there are matching ids in the tables
querytable
Display in the order of user_new.name asc;


Write a query to return all user_new.name, querytable.content from user_new where there are matching ids in the tables
querytable
where parent_id is not null
Display in the order of user_new.name;

select user_new.name, querytable.content from user_new inner join querytable on querytable.user_id=user_new.id
where parent_id is not null
order by user_new.name asc;


Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables
post
Display in the order of user_new.name;
select user_new.name, post.content from user_new inner join PROFILE_ID on post.id= user_new.id
order by user_new.name asc;


Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables
post
where post_type.name='Technology'
Display in the order of user_new.name,post.dateof;
select user_new.name, post.content from user_new inner join PROFILE_ID on post.id= user_new.id
where post_type.name='Technology'
order by user_new.name,post.dateof asc;

Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables
post
where post.dateof='2013'
Display in the order of user_new.name, post.dateof, post.content;

select user_new.name, post.content from user_new inner join PROFILE_ID on post.id= user_new.id
where post.dateof='2013'
 order by user_new.name, post.dateof, post.content asc;

Write a query to return all user_new.name, department.name from user_new where there are matching ids in the tables
role
profile
degree
department
profile_skills
skill
where skill.name='Programming'
Display in the order of user_new.name;

select user_new.name, department.name from user_new inner join role on user_new.role_id=role.id
inner join profile on user_new.profile_id=profile_id 
inner join degree  on profile.degree_id=degree.id inner join department on degree.department_id=department.id
inner join profile_skills on profile_skills.profile_id=profile.id 
inner join skill on profile_skills.skill_id=skill.id 
where skill.name='Programming'
 order by user_new.name asc;











Write a query to return all user_new.name, event.name from user_new where there are matching ids in the tables
event
where role.name='Alumni'
Display in the order of user_new.name,event.dateof
Display event in descending order.

select  user_new.name, event.name from user_new inner join event
on user_new.id=event.id 
order by user_new.name,event.dateof desc;



Write a query to return all user_new.name, event.name from user_new where there are a matching ids in the tables
event
role
where role.name='Alumni'
Display in the order of user_new.name,event.dateof

select  user_new.name, event.name from user_new inner join event
on user_new.id=event.id 
order by user_new.name,event.dateof asc;

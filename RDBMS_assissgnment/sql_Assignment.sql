create database Assessment;

USE TestAssessment;
//Database changed

create table users_info(_id int auto_increment primary key,user_name varchar(20) not null,password varchar(20) not null,user_type boolean not null);

select * from users_info;

create table question_bank(q_id integer primary key auto_increment, question varchar(150));

desc question_bank;

create table option_table(_id integer auto_increment primary key,options varchar(100) not null,is_answer integer,q_id integer not null,opt_id integer not null );

desc option_table;

create table test_table(_id integer auto_increment primary key,t_id integer not null,q_id integer references question_bank(q_id));

desc answer_sets;

 create table answer_sets( _id integer auto_increment primary key, user_id integer not null references users_info(_id), test_id integer not null references test_table(_id), answer int(1), duration int(3) );


//Insertion of values into users_info table

insert into users_info (user_name, password, type) values ("admin", "adminpass", true);

insert into users_info (user_name, password, user_type) values ("user1", "password1", false);

insert into users_info (user_name, password, user_type) values ("user2", "password2", false);

insert into users_info (user_name, password, user_type) values ("user3", "password3", false);

insert into users_info (user_name, password, user_type) values ("user4", "password4", false);

//Insertion of values into question_bank table

insert into question_bank(q_id,question) values(1,"The moon is a");

insert into question_bank(q_id,question) values(2,"Who receives Dronacharya Award?");

insert into question_bank(q_id,question) values(3,"Who was the first Indian to be-elected to the British Parliament?");

insert into question_bank(q_id,question) values(4,"In which year India Joined the United Nations?");

insert into question_bank(q_id,question) values(5,"A hole is made in a brass plate and it is heated.");

insert into question_bank(q_id,question) values(6,"Which language was patronised by the the rules of Delhi Sultanate?");

insert into question_bank(q_id,question) values(7,"Who discovered magnetic field of electric current? ");

insert into question_bank(q_id,question) values(8,"Which country leads in the production of rubber?  ");

insert into question_bank(q_id,question) values(9,"The Panchayat Raj is a  ");

insert into question_bank(q_id,question) values(10,"Which is the most irrigated State in India? ");


//Insertion of values into options table

insert into option_table(options,is_answer,q_id,opt_id) values ("Comet",0,1,1);
insert into option_table(options,is_answer,q_id,opt_id) values (" Satellite",1,1,2);


insert into option_table(options,is_answer,q_id,opt_id) values (" Sports Coaches",1,2,1);
insert into option_table(options,is_answer,q_id,opt_id) values ("Scientists",0,2,2);

insert into option_table(options,is_answer,q_id,opt_id) values ("Dadabhai Naoroji",1,3,1);
insert into option_table(options,is_answer,q_id,opt_id) values ("Mothilal Nehru",0,3,2);

insert into option_table(options,is_answer,q_id,opt_id) values ("1954",0,4,1);
insert into option_table(options,is_answer,q_id,opt_id) values (" 1955",1,4,2);

insert into option_table(options,is_answer,q_id,opt_id) values ("first increase and then decrease",1,5,1);
insert into option_table(options,is_answer,q_id,opt_id) values (" remain unchanged",0,5,2);

insert into option_table(options,is_answer,q_id,opt_id) values ("Persian",1,6,1);
insert into option_table(options,is_answer,q_id,opt_id) values ("Turkish",0,6,2);

insert into option_table(options,is_answer,q_id,opt_id) values (" Faraday",1,7,1);
insert into option_table(options,is_answer,q_id,opt_id) values ("  Edison",0,7,2);

insert into option_table(options,is_answer,q_id,opt_id) values ("  Malaysia",1,8,1);
insert into option_table(options,is_answer,q_id,opt_id) values ("Myanmar",0,8,2);

insert into option_table(options,is_answer,q_id,opt_id) values (" Three–tier System",1,9,1);
insert into option_table(options,is_answer,q_id,opt_id) values ("Two–tier System",0,9,2);

insert into option_table(options,is_answer,q_id,opt_id) values ("Bihar",1,10,,1);
insert into option_table(options,is_answer,q_id,opt_id) values ("Punjab",0,10,2);

//Insertion of values into test_table table

insert into test_table(t_id,q_id) values(1,1);
insert into test_table(t_id,q_id) values(1,2);
insert into test_table(t_id,q_id) values(1,3);
insert into test_table(t_id,q_id) values(1,4);
insert into test_table(t_id,q_id) values(1,5);
insert into test_table(t_id,q_id) values(2,6);
insert into test_table(t_id,q_id) values(2,7);
insert into test_table(t_id,q_id) values(2,8);
insert into test_table(t_id,q_id) values(2,9);
insert into test_table(t_id,q_id) values(2,10);
insert into test_table(t_id,q_id) values(3,2);
insert into test_table(t_id,q_id) values(3,4);
insert into test_table(t_id,q_id) values(3,5);
insert into test_table(t_id,q_id) values(3,6);
insert into test_table(t_id,q_id) values(3,10);
insert into test_table(t_id,q_id) values(4,1);
insert into test_table(t_id,q_id) values(4,3);
insert into test_table(t_id,q_id) values(4,5);
insert into test_table(t_id,q_id) values(4,6);
insert into test_table(t_id,q_id) values(4,7);
insert into test_table(t_id,q_id) values(5,10);
insert into test_table(t_id,q_id) values(5,9);
insert into test_table(t_id,q_id) values(5,8);
insert into test_table(t_id,q_id) values(5,3);
insert into test_table(t_id,q_id) values(5,2);
insert into test_table(t_id,q_id) values(1,5);
insert into test_table(t_id,q_id) values(2,6);
insert into test_table(t_id,q_id) values(3,3);
insert into test_table(t_id,q_id) values(4,7);
insert into test_table(t_id,q_id) values(5,8);

//Insertion of values into answer_sets table

insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(2,1,1,10);
insert into answer_sets(user_id,test_id,answer,duration)values(3,1,2,15);
insert into answer_sets(user_id,test_id,answer,duration)values(4,1,1,18);
insert into answer_sets(user_id,test_id,answer,duration)values(2,2,2,17);
insert into answer_sets(user_id,test_id,answer,duration)values(3,2,1,19);
insert into answer_sets(user_id,test_id,answer,duration)values(4,2,1,20);
insert into answer_sets(user_id,test_id,answer,duration)values(2,3,2,16);
insert into answer_sets(user_id,test_id,answer,duration)values(3,3,1,19);
insert into answer_sets(user_id,test_id,answer,duration)values(4,3,1,20);
insert into answer_sets(user_id,test_id,answer,duration)values(2,4,2,15);
insert into answer_sets(user_id,test_id,answer,duration)values(3,4,1,20);
insert into answer_sets(user_id,test_id,answer,duration)values(4,4,1,20);
insert into answer_sets(user_id,test_id,answer,duration)values(2,5,2,19);
insert into answer_sets(user_id,test_id,answer,duration)values(3,5,1,20);
insert into answer_sets(user_id,test_id,answer,duration)values(4,5,1,20);

select t_id, count(q_id)"total question" from test_table group by t_id;

select user_id, sum(duration)"Time Taken" from answer_sets group by user_id;

select user_id, count(test_id)"Total Test Taken" from answer_sets group by user_id;

alter table answer_sets add column ques_id integer references test_table(q_id);



insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(2,1,1,10,1);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(2,1,1,20,2);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(2,1,1,15,3);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(2,1,1,16,4);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(2,1,2,11,5);

insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(2,2,1,16,1);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(2,2,2,20,2);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(2,2,1,15,3);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(2,2,2,16,4);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(2,2,1,18,5);

 create table answer_sets( _id integer auto_increment primary key, user_id integer not null references users_info(_id), test_id integer not null references test_table(_id),ques_id integer references test_table(q_id), answer int(1), duration int(3) );

insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(3,2,2,18,1);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(3,2,2,17,2);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(3,2,1,15,3);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(3,2,2,16,4);
insert into answer_sets(user_id,test_id,answer,duration,ques_id)values(3,2,1,18,5);

//to find marks of any user in a given test---

select a.user_id ,a.test_id,count(*) marks from option_table o,answer_sets a where (a.ques_id=o.q_id and a.answer=o.opt_id) and o.is_answer=1 group by a.user_id, a.test_id;

create view assessment as (select a.user_id "USER ID" ,a.test_id "TEST NO",count(*)"TOTAL MARKS OBTAINED" from option_table o,answer_sets a where (a.ques_id=o.q_id and a.answer=o.opt_id) and o.is_answer=1 group by a.user_id, a.test_id);




DELIMITER $$
CREATE PROCEDURE pivot1(in i int,in qid int)
set @sql=null;
BEGIN     
		select (distinct concat(max(if(q.q_id=qid,if(a.answer,1,2),null) as question+" "+i) into @sql from answer_sets a,users_info u where u._id=a.user_id group by a.user_id,a.test_id; 
END$$
DELIMITER ;


select a.user_id,a.test_id,u.user_name, max(if(q.q_id=1,if(a.answer,1,2),null))as "question1" from answer_sets a,question_bank q,users_info u where a.user_id=u._id group by a.user_id,a.test_id;

---query into sql variable;;;;;
select max(if(q.q_id=1,if(a.answer,1,2),null))as "question1" into @sql  from answer_sets a,question_bank q,users_info u where a.user_id=u._id; 

------pivot insertion---
select a.user_id,a.test_id,u.user_name, @sql from answer_sets a,users_info u where a.user_id=u._id group by a.user_id,a.test_id;

delimiter //


select a.user_id,a.test_id,u.user_name, @sq from answer_sets a,users_info u where a.user_id=u._id group by a.user_id,a.test_id;


///
pivot using view....


create view tempDetails as select u.user_name,q.q_id "questionId", u._id "userID",t.t_id, q.question, o.options from users_info as u, option_table as o, answer_sets as a, test_table as t,question_bank as q where o.opt_id=a.user_id and t.t_id=a.test_id and q.q_id=t.q_id and u._id =2 and u._id=a.user_id and q.q_id=t.q_id;


SET @sql = NULL;

select group_concat(distinct concat('max(if(td.questionId = ''',questionId,''',options,NULL)) as', quote(questionId))) into @sql from tempDetails td;


 set @sql = concat('select userID,user_name,',@sql,' from tempDetails td');

prepare stmt from @sql;
 execute stmt;



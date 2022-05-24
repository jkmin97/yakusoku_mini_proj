

drop sequence place_seq;
drop table yakuuser;
drop sequence yakusoku_seq;

create sequence yakusoku_seq start with 1 increment by 1;
create sequence place_seq start with 1 increment by 1;

create table yakuuser (
no number(5) primary key,
id varchar2(50) not null,
pw varchar2(20) not null,
phone varchar2(13) not null,
nickname varchar2(40) not null unique,
photo blob,
gender varchar2(10) not null,
age number(2) not null,
job varchar2(40) not null,
home varchar2(200) not null,
religion varchar2(50),
body varchar2(100) not null,
divorce varchar2(30),
other varchar2(2000));

insert into YAKUUSER(no, id, pw, phone, nickname, gender, age, job, home, religion, body, divorce, other) values (yakusoku_seq.nextval, 'id', '0000', '010-1111-1111', 'nickname', 'man', 99, 'job',  'test test test', '종교', '바디', 'divorce', 'other');

drop table place;

create table place (
place_no number(4) primary key,
place_name varchar2(100) not null,
place_address varchar2(200) not null,
place_star number(1) not null,
place_other varchar2(2000),
place_site varchar2(200),
place_reservation varchar2(200)
);


create table yakupackage (
package_no number(1) primary key,
package_name varchar2(100) not null,
package_comment varchar2(300) not null,
package_price varchar2(100) not null
);

create table yakualert (
alert_no number(5) primary key,
alert_author varchar2(100) not null,
alert_title varchar2(100) not null,
alert_content varchar2(3000) not null,
alert_writeday date default(sysdate),
alert_readcnt number(10) default(0),
alert_rep_root number(10) default(0),
alert_rep_step number(10) default(0),
alert_rep_indent number(10) default(0)
);

create table dating (
dating_no number(3) primary key,
dating_concept varchar2(100) not null,
dating_area varchar2(100) not null,
dating_place varchar2(500) not null,
dating_information varchar2(1000) not null,
dating_link varchar2(1000),
dating_review varchar2(1000) not null,
dating_rating number(1) not null
);

create sequence alert_seq start with 1 increment by 1;

drop table board;

create table board (
	no number(10) primary key,
	author varchar2(100) not null,
	title varchar(500) not null,
	content varchar(4000) not null,
	writeday date default(sysdate),
	readcnt number(10) default(0),
	rep_root number(10) default(0),
	rep_step number(10) default(0),
	rep_indent number(10) default(0));
	
create sequence board_seq start with 1 increment by 1;

select * from yakuuser;

commit
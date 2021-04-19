drop table company;
create table company(
    c_username nvarchar2(20),
    c_name nvarchar2(50) not null,
    c_password nvarchar2(70) not null,
    c_no nvarchar2(12) not null unique,
    c_imgextention nvarchar2(6) DEFAULT null,
    c_state number(1,0) default 0 not null,
    constraints pk_c_username primary key(c_username)
);

create synonym c for company;

drop table userlist;
create table userlist(
    u_username nvarchar2(20),
    u_password nvarchar2(70) not null,
    u_disabledno number(6,0) not null unique,
    u_name nvarchar2(50) not null,
    u_userphonenum nvarchar2(13) not null,
    u_type number(1,0) default 0 not null,
    u_address nvarchar2(255),
    u_guardname nvarchar2(50) not null,
    u_guardphonenum nvarchar2(13) not null,
    u_guardrelation nvarchar2(10) not null,
    constraints pk_u_username primary key (u_username)
);
create synonym u for userlist;

drop table town;
create table town(
    t_name nvarchar2(50),
    t_startx number(4,0) default 0 not null,
    t_starty number(4,0) default 0 not null,
    t_lastx number(4,0) default 0 not null,
    t_lasty number(4,0) default 0 not null,
    t_no number(2,0) unique,
    constraints pk_t_name primary key (t_name)
);
create synonym t for town;

drop table stop_apply;
create table stop_apply(
    sa_x number(4,0),
    sa_y number(4,0),
    sa_name nvarchar2(50) not null unique,
    t_name nvarchar2(50) not null,
    c_username nvarchar2(20) not null,
    sa_reason nvarchar2(200) default 0 not null,
    sa_status number(2,0) not null,
    constraints pk_sa_xy primary key (sa_x,sa_y),
    constraints fk_sa_t_name foreign key (t_name) references town(t_name),
    constraints fk_sa_c_username foreign key (t_name) references town(t_name)
);
create synonym sa for stop_apply;

drop table stop;
create table stop(
    s_no  NUMBER(5,0),
    t_name nvarchar2(50) not null,
    s_name nvarchar2(50) not null,
    s_x number(4,0) not null,
    s_y number(4,0) not null,
    s_detail nvarchar2(100),
    constraints pk_s_no primary key (s_no),
    constraints fk_s_t_name foreign key (t_name) references town(t_name)
);
create synonym s for stop;

drop table bus;
create table bus(
    b_no nvarchar2(5),
    c_username nvarchar2(20) not null,
    constraints pk_b_no primary key (b_no),
    constraints fk_b_c_username foreign key (c_username) references company(c_username)
);
create synonym b for bus;

drop table route_bus;
create table route_bus(
    r_turn number(3,0) default 0,
    b_no nvarchar2(5),
    s_no number(5,0),
    constraints pk_r_turn primary key (r_turn, b_no),
    constraints fk_r_b_no foreign key (b_no) references bus(b_no),
    constraints fk_r_s_no foreign key (s_no) references stop(s_no)
);
create synonym rb for route_bus;

drop table apply_bus_history;
create table apply_bus_history(
    ap_no number(6,0),
    b_no nvarchar2(5),
    c_username nvarchar2(20) not null,
    ah_date date default sysdate,
    ah_state number(2,0) not null,
    constraints pk_ap_no primary key (ap_no, b_no),
    constraints fk_ap_b_no foreign key (b_no) references bus(b_no),
    constraints fk_ap_c_username foreign key (c_username) references company(c_username)
);
create synonym ap for apply_bus_history;

drop table apply_bus_history_detail;
create table apply_bus_history_detail(
    ap_no number(6,0),
    b_no nvarchar2(5),
    hd_turn number(3,0) default 0,
    s_no number(5,0) default null,
    constraints pk_hd_no primary key (ap_no, b_no, hd_turn),
    constraints fk_hd_ap_no foreign key (ap_no, b_no) references apply_bus_history(ap_no, b_no),
    constraints fk_hd_s_no foreign key (s_no) references stop(s_no)
);
create synonym apde for apply_bus_history_detail;

drop table driver;
create table driver(
    d_no number(6,0),
    c_username nvarchar2(20) not null,
    d_name nvarchar2(50) not null,
    d_imgextention nvarchar2(6) default null,
    d_phonenum nvarchar2(13) default null,
    d_enterdate date default sysdate,
    constraints pk_d_no primary key (d_no),
    constraints fk_d_c_username foreign key (c_username) references company(c_username)
);
create synonym d for driver;

drop table all_bus;
create table all_bus(
    ab_no number(5,0),
    b_no nvarchar2(5) not null, 
    d_no number(6,0) default null,
    r_turn number(3,0),
    ab_wheel_cnt number(2,0) default 0,
    ab_blind_cnt number(2,0) default 0,
    ab_type number(1,0) default 0,
    constraints pk_ab_no primary key (ab_no, b_no),
    constraints fk_ab_b_no foreign key (b_no, r_turn) references route_bus(b_no, r_turn),
    constraints fk_ab_d_no foreign key (d_no) references driver(d_no)
);

select * from driver;

select * from user_book;
select * from allbus;
desc allbus;

SELECT uc.constraint_name, uc.table_name, ucc.column_name, uc.constraint_type, uc.r_constraint_name
FROM user_constraints uc, user_cons_columns ucc
WHERE uc.constraint_name = ucc.constraint_name;

------4. 15 ------
ALTER TABLE user_book DROP CONSTRAINT FK_UB_B_NO;

ALTER TABLE user_book MODIFY B_NO NUMBER(5,0);

ALTER TABLE user_book RENAME COLUMN B_NO TO AB_NO;
ALTER TABLE user_book RENAME COLUMN B_NO TO AB_NO;
ALTER TABLE APPLY_BUS_HISTORY RENAME COLUMN  AH_DATE TO AP_DATE;
ALTER TABLE APPLY_BUS_HISTORY RENAME COLUMN  AH_State TO AP_State;


ALTER TABLE user_book
ADD CONSTRAINT FK_UB_AB_NO
FOREIGN KEY(B_NO)
REFERENCES allbus(AB_NO);

ALTER TABLE ANSWER ADD C_NAME NVARCHAR2(50);

ALTER TABLE ANSWER
ADD CONSTRAINT FK_ASWNER_C_NAME
FOREIGN KEY(C_NAME)
REFERENCES COMPANY(C_NAME);

DESC COMPANY;
SELECT * FROM ANSWER;

ALTER TABLE company ADD UNIQUE (c_name);

ALTER TABLE STOP_APPLY DROP PRIMARY KEY; 
ALTER TABLE STOP_APPLY ADD SA_NO NUMBER(5,0);
DESC STOP_APPLY;

ALTER TABLE STOP_APPLY ADD CONSTRAINT PK_STOPAPPLY_SA_NO PRIMARY KEY (SA_NO);
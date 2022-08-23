create database butler;
drop database butler;

use butler;

create table user_tb(
   user_logintype		int default 0,					#0= 일반가입자 / 1=카카오톡가입자
   USER_NUM_PK         int primary key auto_increment,
   user_status         int default 1,               	#0=삭제된 회원, 1=사용중 회원
   user_identity       int default 0,               	#0= 일반회원 / 1=사업자
   user_nickname       varchar(12) unique not null ,
   user_pw             varchar(30) not null,
   user_name           varchar(100) not null,
   user_zipcode        varchar(12) not null,			#우편번호
   user_addr           varchar(200) not null,
   user_addrdetail     varchar(200),			#상세주소
   user_addretc		   varchar(200),
   user_email          varchar(200) unique not null,
   user_phone          varchar(15) not null
);


drop table business_tb;



create table business_tb(
    BUSINESS_PLACE_NUM_PK    int primary key auto_increment not null,
    business_name         varchar(200) not null,
    business_zipcode     varchar(12) not null,   
    business_addr         varchar(200) not null,
    business_addrdetail     varchar(200),
    business_addretc       varchar(200),
    business_phone         varchar(15)   not null,
    business_email         varchar(200),
    business_category      int not null,
    business_hashtag       varchar(200),
    business_main_intro       varchar(200),         #호텔 메인 소개말
    business_workplace_detail   text(10000),         #호텔 상세 소개글
    business_workplace_rule      text(10000),
    business_workplace_score   int   default 0,         #호텔 별점
    USER_NUM_FK            int,
    constraint bs_tb_USER_NUM_FK   foreign key (USER_NUM_FK) references  user_tb (USER_NUM_PK)
);


 create table book_tb (
   BOOK_NUM_PK               int primary key auto_increment,
   BUSINESS_PLACE_NUM_FK      int,
   constraint b_tb_BUSINESS_PLACE_NUM_FK foreign key(BUSINESS_PLACE_NUM_FK) references business_tb (USER_NUM_FK),
   USER_NUM_FK             int,
   constraint b_tb_USER_NUM_FK   foreign key(USER_NUM_FK) references  user_tb (USER_NUM_PK),
    book_status               int default 1,     	#1= 예약중 / 2= 취소 / 3= 사용완료
    book_regdate            datetime default now(),
    book_checkin_date         datetime not null,
    book_checkout_date         datetime not null,
    book_charge               varchar(300),
    book_request            varchar(1000),
    book_service            int
);

create table pets_tb(
   PETS_NUM_PK               int primary key auto_increment,
    USER_NUM_FK             int,
   constraint p_tb_USER_NUM_FK foreign key(USER_NUM_FK) references  user_tb (USER_NUM_PK),
    pets_type               int not null,
    pets_weight               int,
    BOOK_NUM_FK             int,
    constraint p_tb_BOOK_NUM_FK foreign key(BOOK_NUM_FK) references book_tb (BOOK_NUM_PK)
);



create table review_tb(
   REVIEW_NUM_PK            int primary key auto_increment,
    BUSINESS_PLACE_NUM_FK      int,
   constraint r_tb_BUSINESS_PLACE_NUM_FK foreign key(BUSINESS_PLACE_NUM_FK) references business_tb (USER_NUM_FK),
    review_contents            varchar(5000),
    review_nickname            varchar(12),
    review_regdate            datetime   default now()
);

create table reply_tb(
   REPLY_NUM_PK            int   primary key auto_increment,
    REVIEW_NUM_FK            int,
   constraint rp_tb_REVIEW_NUM_FK foreign key(REVIEW_NUM_FK) references review_tb (REVIEW_NUM_PK),
   reply_contents            varchar(3000) not null,
    reply_regdate            datetime default now(),
    BUSINESS_PLACE_NUM_FK      int,
   constraint rp_tb_BUSINESS_PLACE_NUM_FK foreign key(BUSINESS_PLACE_NUM_FK) references business_tb (BUSINESS_PLACE_NUM_PK)
);


create table file_business_tb(
   BUSINESS_PLACE_NUM_FK      int,
   constraint fb_tb_BUSINESS_PLACE_NUM_FK foreign key(BUSINESS_PLACE_NUM_FK) references business_tb (BUSINESS_PLACE_NUM_PK),
   file_workplace_systemname   varchar(2000),
   file_workplace_orgname   varchar(2000)
);

create table file_review_tb(
   REVIEW_NUM_FK            int,
    constraint fr_tb_REVIEW_NUM_FK foreign key(REVIEW_NUM_FK) references  review_tb (REVIEW_NUM_PK),
    file_review_systemname      varchar(2000),
    file_review_orgname         varchar(2000)
);

create table notice_tb(
   NOTICE_NUM_PK            int primary key auto_increment,
    notice_title            varchar(3000) not null,
    notice_contents            varchar(10000) not null,
    notice_regdate            datetime default now()
);

create table basket_tb(
   USER_NUM_FK            int,
    constraint bk_tb_USER_NUM_FK   foreign key(USER_NUM_FK) references  user_tb (USER_NUM_PK),   
   BUSINESS_PLACE_NUM_FK      int,
    constraint bk_tb_BUSINESS_PLACE_NUM_FK foreign key(BUSINESS_PLACE_NUM_FK) references business_tb (BUSINESS_PLACE_NUM_PK)
);
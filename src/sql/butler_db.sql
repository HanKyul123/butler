create database butler;
drop database butler;

use butler;

create table user_tb(
	USER_NUM_PK			int primary key auto_increment,
    user_status			int default 1,					#0=삭제된 회원, 1=사용중 회원
	user_identity 		int default 0,					#0= 일반회원 / 1=사업자
	user_nickname 		varchar(12) unique not null,
	user_pw 			varchar(30) not null,
	user_name 			varchar(100) not null,
	user_addr 			varchar(200) not null,
    user_email			varchar(200) not null,
	user_phone 			varchar(15) not null
);

create table business_tb(
	USER_NUM_FK				int,
    constraint USER_NUM_FK	foreign key(USER_NUM_PK) references  user_tb (USER_NUM_PK),
	business_place_num		int unique auto_increment not null,
    business_name			varchar(200) not null,
    business_addr			varchar(200) not null,
    business_phone			varchar(15)	not null,
    business_email			varchar(200),
    business_category		int not null
);

create table business_workplace_tb(
	BUSINESS_PLACE_NUM_FK		int,
    constraint BUSINESS_PLACE_NUM_FK foreign key(business_place_num) references business_tb (business_place_num),
    BUSINESS_CATEGORY_FK 		int,
    constraint BUSINESS_CATEGORY_FK	foreign key(business_category) references business_tb (business_category),
    business_workplace_detail	varchar(10000),
    business_workplace_rule		varchar(10000),
    business_workplace_score	int	default 0
);

create table book_tb (
	BOOK_NUM_PK					int primary key auto_increment,
    BUSINESS_PLACE_NUM_FK		int,
	constraint BUSINESS_PLACE_NUM_FK foreign key(business_place_num) references business_tb (business_place_num),
	USER_NUM_FK 				int,
	constraint USER_NUM_FK	foreign key(USER_NUM_PK) references  user_tb (USER_NUM_PK),
    book_status					int,
    book_regdate				datetime default now(),
    book_checkin_date			datetime not null,
    book_checkout_date			datetime not null,
    book_charge					int,
    book_request				varchar(1000),
    book_service				int
);

create table pets_tb(
	PETS_NUM_PK					int primary key auto_increment,
    USER_NUM_FK 				int,
	constraint USER_NUM_FK foreign key(USER_NUM_PK) references  user_tb (USER_NUM_PK),
    pets_type					int not null,
    pets_weight					int,
    BOOK_NUM_FK 				int,
    constraint BOOK_NUM_FK foreign key(book_num) references book_tb (BOOK_NUM_FK)
);


create table review_tb(
	REVIEW_NUM_PK				int primary key auto_increment,
    BUSINESS_PLACE_NUM_FK		int,
	constraint BUSINESS_PLACE_NUM_FK foreign key(business_place_num) references business_tb (business_place_num),
    review_contents				varchar(5000),
    USER_NICKNAME_FK			varchar(12),
    constraint USER_NICKNAME_FK	foreign key(user_nickname) references  user_tb (user_nickname),
	review_regdate				datetime	default now()
);

create table reply_tb(
	REPLY_NUM_PK				int	primary key auto_increment,
    REVIEW_NUM_FK				int,
	constraint REVIEW_NUM_FK foreign key(REVIEW_NUM_PK) references review_tb (REVIEW_NUM_PK),
	reply_contents				varchar(3000) not null,
    reply_regdate				datetime default now(),
    BUSINESS_PLACE_NUM_FK		int,
	constraint BUSINESS_PLACE_NUM_FK foreign key(business_place_num) references business_tb (business_place_num)
);


create table file_business_tb(
	BUSINESS_PLACE_NUM_FK		int,
	constraint BUSINESS_PLACE_NUM_FK foreign key(business_place_num) references business_tb (business_place_num),
	file_workplace_systemname	varchar(2000),
	file_workplace_orgname	varchar(2000)
);

create table file_review_tb(
	REVIEW_NUM_FK				int,
    constraint REVIEW_NUM_FK foreign key(REVIEW_NUM_PK) references  review_tb (REVIEW_NUM_PK),
    file_review_systemname		varchar(2000),
    file_review_orgname			varchar(2000)
);

create table notice_tb(
	NOTICE_NUM_PK				int primary key auto_increment,
    notice_title				varchar(3000) not null,
    notice_contents				varchar(10000) not null,
    notice_regdate				datetime default now()
);

create table basket_tb(
	USER_NUM_FK				int,
    constraint USER_NUM_FK	foreign key(USER_NUM_PK) references  user_tb (USER_NUM_PK),	
	BUSINESS_PLACE_NUM_FK		int,
    constraint BUSINESS_PLACE_NUM_FK foreign key(business_place_num) references business_tb (business_place_num)
);

















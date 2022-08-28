#유저
-- 일반 가입자에 일반사용자(pk=1)
insert user_tb
      (user_logintype,user_status,user_identity,user_nickname,
       user_pw,user_name,user_zipcode,user_addr,user_addrdetail,
       user_addretc,user_email,user_phone) 
       values
       (0,1,0,'널뛰기',
       'abcd1234','김사자','13310','경기 성남시 수정구 수정북로11번길 7-1','201호',
       '(태평동)','abcd12345@naver.com','010-9876-5432');
      
     -- 일반 가입자에 사업자 
insert user_tb(user_logintype,user_status,user_identity,user_nickname,
       user_pw,user_name,user_zipcode,user_addr,user_addrdetail,
       user_addretc,user_email,user_phone,user_business_num) values
       (0,1,1,'고라니','abcd1234','호롱이','15870','경기 군포시 번영로 380','407동 1002호','(산본동, 한라주공4단지)',
       'abcd123456@naver.com','010-1234-1234','15755-488793');  

insert user_tb(user_logintype,user_status,user_identity,user_nickname,
       user_pw,user_name,user_zipcode,user_addr,user_addrdetail,
       user_addretc,user_email,user_phone,user_business_num) values
       (0,1,1,'코끼리','abcd1234','코끼리','15870','경기 안양시 만안구 경수대로 1141','101호','(안양동, 그린하이빌)',
       'tkffuwnj@naver.com','010-4567-7531','15755-487193');

insert user_tb(user_logintype,user_status,user_identity,user_nickname,
       user_pw,user_name,user_zipcode,user_addr,user_addrdetail,
       user_addretc,user_email,user_phone,user_business_num) values
       (0,1,1,'캥거루','abcd1234','캥거루','16293','경기 수원시 장안구 수일로 205','201동 202호','(조원동, 광교산임광그대가)',
       'abc23456@nate.com','010-1784-1234','14755-488793');
       
insert user_tb(user_logintype,user_status,user_identity,user_nickname,
       user_pw,user_name,user_zipcode,user_addr,user_addrdetail,
       user_addretc,user_email,user_phone,user_business_num) values
       (0,1,1,'고래','abcd1234','고래','07031','서울 동작구 관악로30길 27','302동 702호','(사당동, 관악푸르지오)',
       'cd123456@naver.com','010-5634-1784','25755-488773');
       
insert user_tb(user_logintype,user_status,user_identity,user_nickname,
       user_pw,user_name,user_zipcode,user_addr,user_addrdetail,
       user_addretc,user_email,user_phone,user_business_num) values
       (0,1,1,'에이젼트','abcd1234','에이전트','16979','경기 용인시 기흥구 갈곡로 5','102동 102호',' (구갈동)',
       'absj@naver.com','010-2734-4344','34555-488793');
       
insert user_tb(user_logintype,user_status,user_identity,user_nickname,
       user_pw,user_name,user_zipcode,user_addr,user_addrdetail,
       user_addretc,user_email,user_phone,user_business_num) values
       (0,1,1,'판다','abcd1234','판다','22021','인천 연수구 랜드마크로 113','203동 1203호',' (송도동, e편한세상 송도)',
       'tlftn23456@naver.com','010-7534-9134','35455-488573');
       
       
      
       

#사업장

insert business_tb(business_name,business_zipcode, business_addr,business_addrdetail,business_addretc,
                   business_phone,business_email,business_category,business_hashtag,business_main_intro,
            business_workplace_detail,business_workplace_rule,business_workplace_score,USER_NUM_FK,
                business_pick_animal_type, business_min_charge) values
                ('버블독','10011','경기도 김포시 하성면 태산로19번길 22','버블독', '(태산로19번길 22)','010-3789-3789','rhtod@naver.com',1,
                  '#강아지','강아지 배운다 코딩을','저희 가게는 요즘 트렌드를 따라서 강아지에게도 코딩을 가르쳐드리고 있습니다','싸우지 마세요',5,2,
                  0, 30000);  
                  
insert business_tb(business_name,business_zipcode, business_addr,business_addrdetail,business_addretc,
                   business_phone,business_email,business_category,business_hashtag,business_main_intro,
            business_workplace_detail,business_workplace_rule,business_workplace_score,USER_NUM_FK,
                business_pick_animal_type, business_min_charge) values
                ('바우밸리애견호텔','15259','경기 안산시 상록구 안산천서로 223-1','바우밸리애견호텔', ' (월피동)','010-8246-2201','zheld@naver.com',1,
                  '#강아지#고양이','안녕하세요','NullPointException','하지마세요',4,3,
               1, 20000);  

insert business_tb(business_name,business_zipcode, business_addr,business_addrdetail,business_addretc,
                   business_phone,business_email,business_category,business_hashtag,business_main_intro,
            business_workplace_detail,business_workplace_rule,business_workplace_score,USER_NUM_FK,
                business_pick_animal_type, business_min_charge) values
                ('펫그라운드','04338','서울특별시 용산구 용산동2가 27-3','펫그라운드', '(용산동2가 27-3)','010-7419-9990','djfuqek@google.com',1,
                  '#고양이','고양이도 배운다 코딩을','저희 가게는 요즘 트렌드를 따라서 고양이에게도 코딩을 가르쳐드리고 있습니다','싸워라~ 짝!',3,4,
               3, 50000);  
                  
insert business_tb(business_name,business_zipcode, business_addr,business_addrdetail,business_addretc,
                   business_phone,business_email,business_category,business_hashtag,business_main_intro,
				business_workplace_detail,business_workplace_rule,business_workplace_score,USER_NUM_FK,
                business_pick_animal_type, business_min_charge) values
                ('하임동물병원','16834','경기도 용인시 수지구 포은대로 450','하임동물병원', ' (풍덕천동)','010-7898-4300','rhtod@naver.com',2,
                  '#고양이#강아지','영웅은 죽지않아요','Medic','heal',4,5,
                  2,30000);

insert business_tb(business_name,business_zipcode, business_addr,business_addrdetail,business_addretc,
                   business_phone,business_email,business_category,business_hashtag,business_main_intro,
				business_workplace_detail,business_workplace_rule,business_workplace_score,USER_NUM_FK,
                business_pick_animal_type, business_min_charge) values
                ('비타민동물메디컬센터','13941','경기도 안양시 동안구 비산동 관악대로 267','비타민동물메디컬센터', '(비산동)','010-4265-7582','help@nate.com',2,
                  '#강아지#고양이','환자발생','치료해줍니다','병원입니다',3,6,
                  0,50000);
                  
#사업자 체크박스 키워드 확인용

insert business_tb(business_name,business_zipcode, business_addr,business_addrdetail,business_addretc,
                   business_phone,business_email,business_category,business_hashtag,business_main_intro,
				business_workplace_detail,business_workplace_rule,business_workplace_score,USER_NUM_FK) values
                ('새','10011','경기도 김포시 하성면 태산로19번길 22','버블독', '(태산로19번길 22)','010-3269-3789','rhtod@naver.com',1,
                  '#새','강아지 배운다 코딩을','저희 가게는 요즘 트렌드를 따라서 강아지에게도 코딩을 가르쳐드리고 있습니다','싸우지 마세요',5,2);  
                  
insert business_tb(business_name,business_zipcode, business_addr,business_addrdetail,business_addretc,
                   business_phone,business_email,business_category,business_hashtag,business_main_intro,
				business_workplace_detail,business_workplace_rule,business_workplace_score,USER_NUM_FK) values
                ('파충류','15259','경기 안산시 상록구 안산천서로 223-1','바우밸리애견호텔', ' (월피동)','010-8356-2201','zheld@naver.com',1,
                  '#파충류','안녕하세요','NullPointException','하지마세요',4,3);

insert business_tb(business_name,business_zipcode, business_addr,business_addrdetail,business_addretc,
                   business_phone,business_email,business_category,business_hashtag,business_main_intro,
				business_workplace_detail,business_workplace_rule,business_workplace_score,USER_NUM_FK) values
                ('패럿','04338','서울특별시 용산구 용산동2가 27-3','펫그라운드', '(용산동2가 27-3)','010-5619-9990','djfuqek@google.com',1,
                  '#패럿','고양이도 배운다 코딩을','저희 가게는 요즘 트렌드를 따라서 고양이에게도 코딩을 가르쳐드리고 있습니다','싸워라~ 짝!',3,4);
                  
insert business_tb(business_name,business_zipcode, business_addr,business_addrdetail,business_addretc,
                   business_phone,business_email,business_category,business_hashtag,business_main_intro,
				business_workplace_detail,business_workplace_rule,business_workplace_score,USER_NUM_FK) values
                ('햄스터','16834','경기도 용인시 수지구 포은대로 450','하임동물병원', ' (풍덕천동)','010-6798-4300','rhtod@naver.com',2,
                  '#햄스터','영웅은 죽지않아요','Medic','heal',4,5);

insert business_tb(business_name,business_zipcode, business_addr,business_addrdetail,business_addretc,
                   business_phone,business_email,business_category,business_hashtag,business_main_intro,
				business_workplace_detail,business_workplace_rule,business_workplace_score,USER_NUM_FK) values
                ('토끼','13941','경기도 안양시 동안구 비산동 관악대로 267','비타민동물메디컬센터', '(비산동)','010-7965-7582','help@nate.com',2,
                  '#토끼','환자발생','치료해줍니다','병원입니다',3,6);
                  
# 리뷰       
insert review_tb
(BUSINESS_PLACE_NUM_FK, 
review_contents, review_nickname,
review_regdate,
review_file_systemname,
review_file_orgname)
values
(1,
'여기참 좋아요~ 사람도 강아지도~ 고양이도~ 다 똑같이 대해줘요~ 제가 그래서 지금도 개처럼 살아요~','널사랑하지않아',
'2022-08-20 16:30:01',
'animal_Cat.png',
'animal_Cat.png');


#버블독

# 강아지       1~5kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
values(1,0,'1 ~ 5kg',40000);
          #5~10kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,0,'5 ~ 10kg',80000);
         #10~15kg         
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,0,'11 ~ 15kg',120000);
            #15~20kg               
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,0,'15 ~ 20kg',150000);      
         #20kg이상
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,0,'20kg 이상',180000);  
                           
# 고양이       1~5kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,1,'1 ~ 5kg',30000);
          #5~10kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,1,'5 ~ 10kg',60000);
         #10kg         
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,1,'10kg 이상',80000);
                             
# 새           1~3kg   
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,2,'1 ~ 3kg',20000);
                           
# 파충류       1~5kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,3,'1 ~ 5kg',20000);
          #5~10kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,3,'5 ~ 10kg',40000);
         #10~15kg         
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,3,'10 ~ 15kg',60000);
            #15kg 이상               
 insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,3,'15kg 이상',80000);  
                           
# 패럿       1~3kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,4,'1 ~ 3kg',20000);
          #3~6kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,4,'3 ~ 6kg',40000);
                           
# 토끼       1~3kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,6,'1 ~ 3kg',20000);
          #3~6kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,6,'3 ~ 6kg',40000);
         #6~9kg         
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,6,'6 ~ 9kg',60000);
            #10kg 이상               
 insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,6,'10kg 이상',80000); 
                           
# 햄스터       ~1kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,7,'~ 1kg',10000);
                  
#            1~2kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,7,'1 ~ 3kg',15000);
                           
# etc           1~3kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(1,7,'1 ~ 3kg',20000);   
  
#바우밸리애견호텔  
  
# 강아지       1~5kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(2,0,'1 ~ 5kg',50000);
          #5~10kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(2,0,'5 ~ 10kg',80000);
         #10~15kg         
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(2,0,'11 ~ 15kg',120000);
            #15~20kg               
 insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(2,0,'15 ~ 20kg',150000);      
         #20kg이상
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(2,0,'20kg 이상',180000);  
                           
# 고양이       1~5kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(2,1,'1 ~ 5kg',20000);
          #5~10kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(2,1,'5 ~ 10kg',60000);
         #10kg         
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(2,1,'10kg 이상',80000);
                           
#하임동물병원

# 강아지       1~5kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(4,0,'1 ~ 5kg',60000);
          #5~10kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(4,0,'5 ~ 10kg',80000);
         #10~15kg         
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(4,0,'11 ~ 15kg',120000);
            #15~20kg               
 insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(4,0,'15 ~ 20kg',150000);      
         #20kg이상
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(4,0,'20kg 이상',210000);  
                           
# 고양이       1~5kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(4,1,'1 ~ 5kg',50000);
          #5~10kg
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(4,1,'5 ~ 10kg',70000);
         #10kg         
insert business_charge_tb (BUSINESS_PLACE_NUM_FK,
animal_type,animal_weight,one_day_charge)
                           values(4,1,'10kg 이상',80000);
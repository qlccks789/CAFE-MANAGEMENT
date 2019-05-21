-- system 계정에서 cafe 사용자 등록
create user cafe identified by cafe;
grant connect, resource to cafe;
-- 테이블 삭제
drop table tb_review_image purge;

drop table tb_review_comment purge;

drop table tb_cafe_review purge;

drop table tb_cafe_image purge;

drop table tb_cafe purge;

drop table tb_pay purge;

drop table tb_inquire_response purge;

drop table tb_inquire purge;

drop table tb_goods purge;

drop table tb_goods_image purge;

drop table tb_member purge;








-- 시퀀스 삭제
drop sequence s_mem_no;

drop sequence s_review_no;

drop sequence s_review_image_no;

drop sequence s_review_comment_no;

drop sequence s_cafe_no;

drop sequence s_image_no;

DROP sequence s_tb_goods_goods_no;

DROP sequence s_tb_goods_image_image_no;

DROP sequence s_tb_pay_pay_no;

drop sequence s_inq_no;
 
drop sequence s_response_no;


-- 테이블 생성
create table tb_member(
    mem_no number(6) constraint member_mem_no_pk primary key,
    name varchar2(20) constraint member_name_nn not null,
    id varchar2(40) constraint member_id_nn not null,
    pass varchar2(100) constraint member_pass_nn not null,
    nickname varchar2(20) constraint member_nickname_nn not null,
    phone varchar2(11) constraint member_phone_nn not null,
    postcode varchar2(10) constraint member_postcode_nn not null,
    basic_addr varchar2(200) constraint member_basic_addr_nn not null,
    detail_addr varchar2(200) constraint member_detail_addr_nn not null,
    manage_at char(1) default 'n'
);

-- 카페후기 테이블 생성
create table tb_cafe_review (
    review_no number(10) constraint review_review_no_pk primary key,
    name varchar2(50) constraint review_name_nn not null,
    reg_date date default sysdate,
    rating_star number(1) constraint review_rating_star_nn not null,
    content varchar2(4000) constraint review_content_nn not null,
    view_cnt number(10) default 0,
    mem_no number(6) constraint review_mem_no_fk references tb_member(mem_no)
);

-- 카페후기 이미지 테이블생성
create table tb_review_image (
    image_no number(10) constraint review_image_no_pk primary key,
    review_no number(10) constraint review_image_review_no_fk references tb_cafe_review(review_no),
    orgname varchar2(100) constraint review_image_orgname_nn not null,
    sysname varchar2(100) constraint review_image_sysname_nn not null,
    path varchar2(100) constraint review_image_path_nn not null
);

-- 카페후기 댓글 테이블생성
create table tb_review_comment (
    comment_no number(10) constraint review_comment_no_pk primary key,
    review_no number(10) constraint review_comment_review_no_fk references tb_cafe_review(review_no),
    title varchar2(50) constraint review_comment_title_nn not null,
    content varchar2(1000) constraint review_comment_content_nn not null,
    mem_no number(6) constraint review_comment_mem_no_fk references tb_member(mem_no),
    reg_date date default sysdate
);

--까페 테이블생성

create table tb_cafe(
	cafe_no number(6) constraint cafe_no_pk primary key ,
	mem_no number(6) constraint cafe_mem_no_fk references tb_member(mem_no),
	name varchar2(100) constraint cafe_name_nn not null,
	address varchar2(100) constraint cafe_address_nn not null,
	phone varchar2(13) constraint cafe_phone_nn not null,
	email varchar2(40) constraint cafe_email_nn not null ,
	intro varchar2(4000) constraint cafe_intro_nn not null
);

--까페 이미지 테이블 생성

create table tb_cafe_image(
	image_no NUMBER(6) constraint cafe_image_no_pk primary key,
	orgname VARCHAR2(100) constraint cafe_image_orgname_nn not null ,
	sysname VARCHAR2(100) constraint cafe_image_sysname_nn not null ,
	path VARCHAR2(100) constraint cafe_image_path_nn not null ,
	cafe_no NUMBER(6) constraint cafe_image_cafe_no_fk references tb_cafe(cafe_no)
);

-- 상품 테이블 생성
CREATE TABLE tb_goods
(
    goods_no          number(6)         NOT NULL, 
    serial_no         VARCHAR2(20)      NOT NULL, 
    sort          number            NOT NULL,
    name              VARCHAR2(20)      NOT NULL,
    title             VARCHAR2(20)      NOT NULL, 
    price             number(10)        NOT NULL, 
    manufacturer      VARCHAR2(40)      NULL, 
    country           VARCHAR2(40)      NOT NULL, 
    goods_info        VARCHAR2(4000)    NULL, 
    delivery_info     VARCHAR2(4000)    NULL, 
    change_info       VARCHAR2(4000)    NULL, 
    delivery_price    number(5)         NULL, 
    stack             number(6)         NOT NULL, 
    view_cnt          number(6)         NOT NULL, 
    enroll_date       DATE              default sysdate, 
    CONSTRAINT TB_GOODS_PK PRIMARY KEY (goods_no)
);

-- 상품 이미지 테이블 생성
CREATE TABLE tb_goods_image
(
    image_no    number(6)         NOT NULL, 
    sysname     VARCHAR2(100)     NOT NULL, 
    orgname     VARCHAR2(100)     NOT NULL, 
    goods_no    number(6)         NOT NULL, 
    path        VARCHAR2(4000)    NOT NULL,
    pre_image         NUMBER        NOT NULL, 
    CONSTRAINT TB_GOODS_IMAGE_PK PRIMARY KEY (image_no)
);

--결제 테이블 생성
CREATE TABLE tb_pay
(
    pay_no         number(6)     NOT NULL, 
    mem_no         NUMBER(6)     NOT NULL, 
    pay_option         NUMBER        NOT NULL, 
    order_price    number(10)    NOT NULL, 
    pay_price      number(10)    NOT NULL, 
    pay_date       date          default sysdate, 
    goods_no       number(6)     NOT NULL, 
    CONSTRAINT TB_PAY_PK PRIMARY KEY (pay_no)
);

-- 상품 문의 테이블 생성
create table tb_inquire(
inq_no number(6) CONSTRAINT inquire_no_pk primary key,
goods_no number(6) constraint inquire_goods_no_fk references tb_goods(goods_no),
mem_no number(6) constraint inquire_member_no_fk references tb_member(mem_no),
title varchar2(200) CONSTRAINT inquire_title_nn NOT NULL,
content varchar2(4000) constraint inquire_content_nn NOT NULL,
view_cnt number(6) default 0,
reg_date date default sysdate
);
 
--문의 답변 테이블 생성
create table tb_inquire_response(
response_no number(6) constraint response_no_pk primary key,
inq_no number(6) constraint inquire_response_inquire_no_fk references tb_inquire(inq_no),
content varchar2(4000) constraint inquire_response_content_nn NOT NULL,
reg_date date default sysdate
);






-- 시퀀스 생성
create sequence s_mem_no;

create sequence s_review_no;

create sequence s_review_image_no;

create sequence s_review_comment_no;

create sequence s_cafe_no;

create sequence s_image_no;

create sequence s_tb_goods_goods_no;

create sequence s_tb_goods_image_image_no;

create sequence s_tb_pay_pay_no;

create sequence s_inq_no;
 
create sequence s_response_no;



-- 테스트 값 넣기
-- 관리자
insert into tb_member(mem_no, name, id, pass, nickname,
 phone, basic_addr, detail_addr, postcode, manage_at)
values(s_mem_no.nextval, '관리자이름', 'admin','1234','관리자',
'01000000000', '관리자주소','관리자상세주소','00000','y'
);

insert into tb_member(mem_no, name, id, pass, nickname,
 phone, basic_addr, detail_addr, postcode)
values(s_mem_no.nextval, '이름1', 'user1','pass1','닉네임1',
'01011112222', '서울특별시 서대문구 연세로5가길 19 ','1층','12345'
);

insert into tb_member(mem_no, name, id, pass, nickname,
 phone, basic_addr, detail_addr, postcode)
values(s_mem_no.nextval, '이름2', 'user2','pass2','닉네임2',
'01022221111', '서울특별시 마포구 마포대로 109',' 지하1층 111- 2호 3호','54312'
);

-- 카페 후기 테이블에 값 넣기
insert into tb_cafe_review (review_no, name, rating_star, content, mem_no)
values (s_review_no.nextval, '스타벅스신촌점', 4, '쿨라임맛있어요', 2);

insert into tb_cafe_review (review_no, name, rating_star, content, mem_no)
values (s_review_no.nextval, '할리스커피신촌점', 4, '아메리카노꿀맛', 2);

insert into tb_cafe_review (review_no, name, rating_star, content, mem_no)
values (s_review_no.nextval, '커피빈신촌점', 4, '커피빈커피짱', 2);


-- 카페 후기 댓글테이블에 값 넣기
insert into tb_review_comment (comment_no, review_no, title, content, mem_no)
values (s_review_comment_no.nextval, 2, '댓글제목쓰', '댓글내용쓰', 2);

insert into tb_review_comment (comment_no, review_no, title, content, mem_no)
values (s_review_comment_no.nextval, 2, '댓글테스트', '댓글테스트', 2);

insert into tb_review_comment (comment_no, review_no, title, content, mem_no)
values (s_review_comment_no.nextval, 2, '댓글쓰', '댓글쓰', 2);


-- 까페 테이블에 값넣기 

insert into tb_cafe(cafe_no, mem_no,name,address,phone,email,intro) 
values(s_cafe_no.nextval, 1, '스타벅스신촌점1','서울특별시 서대문구 신촌동 222','010-1234-5678','kkk@daum.net','모든것이 맛있는 까페~');


insert into tb_cafe(cafe_no, mem_no,name,address,phone,email,intro) 
values(s_cafe_no.nextval, 1, '스타벅스신촌점2','서울특별시 서대문구 신촌동 111','010-2345-5678','lll@daum.net','더 맛있고 고소한 커피');

insert into tb_cafe(cafe_no,mem_no,name,address,phone,email,intro) 
values(s_cafe_no.nextval, 2, '스타벅스신촌점3','서울특별시 서대문구 신촌동 333 ','010-3456-5678','ddd@daum.net','즐겁고 유쾌한 까페~');

insert into tb_cafe(cafe_no, mem_no, name, address, phone, email, intro) 
values(s_cafe_no.nextval, 2, '스타벅스신촌점4','서울특별시 서대문구 신촌동 444','010-4567-5678','nnn@daum.net','맛있는 커피~!');

--상품 값 넣기
insert into tb_goods (goods_no, serial_no, sort, name, title, price, country, stack, view_cnt, enroll_date) 
values (s_tb_goods_goods_no.nextval, 111, 1,'name', '타이틀1', 300000,'파라과이', 1, 1, sysdate);

insert into tb_goods (goods_no, serial_no, sort, name, title, price, manufacturer, country, goods_info, delivery_info, change_info, delivery_price, stack, view_cnt, enroll_date) 
values (s_tb_goods_goods_no.nextval, 222, 1,'name2', '타이틀2',300000, '필립스', '우루과이', '필립스 커피머신입니다.', '빠른 배송', '교환환불 안되요~', 2500, 1, 1, sysdate);

insert into tb_goods (goods_no, serial_no, sort, name, title, price, country, stack, view_cnt, enroll_date)
values (s_tb_goods_goods_no.nextval, 333, 1,'name3', '타이틀3',300000,'브라질', 1, 1, sysdate);

insert into tb_goods (goods_no, serial_no, sort, name, title, price, country, stack, view_cnt, enroll_date)  
values (s_tb_goods_goods_no.nextval, 444,1, 'name4', '타이틀4',300000,'아르헨티나', 1, 1, sysdate);

insert into tb_goods (goods_no, serial_no, sort, name, title, price, country, stack, view_cnt, enroll_date)  
values (s_tb_goods_goods_no.nextval, 555, 1,'name5', '타이틀5',300000,'칠레', 1, 1, sysdate);

insert into tb_goods (goods_no, serial_no, sort, name, title, price, country, stack, view_cnt, enroll_date) 
values (s_tb_goods_goods_no.nextval, 666, 1,'name6', '타이틀6',300000,'콜롬비아', 1, 1, sysdate);

insert into tb_goods (goods_no, serial_no, sort, name, title, price, country, stack, view_cnt, enroll_date) 
values (s_tb_goods_goods_no.nextval, 777, 1,'name7', '타이틀7',300000,'에콰도르', 1, 1, sysdate);

insert into tb_goods (goods_no, serial_no, sort, name, title, price, country, stack, view_cnt, enroll_date) 
values (s_tb_goods_goods_no.nextval, 888,1, 'name8', '타이틀8',300000,'말레이시아', 1, 1, sysdate);

insert into tb_goods (goods_no, serial_no, sort, name, title, price, country, stack, view_cnt, enroll_date) 
values (s_tb_goods_goods_no.nextval, 999, 1,'name9', '타이틀9',300000,'브루나이', 1, 1, sysdate);

insert into tb_goods (goods_no, serial_no, sort, name, title, price, manufacturer, country, goods_info, delivery_info, change_info, delivery_price, stack, view_cnt, enroll_date) 
values (s_tb_goods_goods_no.nextval, 1000, 2,'name10', '타이틀10',300000, '네스카페', '싱가포르', '네스프레소 캡슐입니다','배송 빠릅니다', '교환환불 절대불가',  2500, 1, 1, sysdate);

insert into tb_goods (goods_no, serial_no, sort, name, title, price, manufacturer, country, goods_info, delivery_info, change_info, delivery_price, stack, view_cnt, enroll_date) 
values (s_tb_goods_goods_no.nextval, 1100, 3,'name11', '타이틀11',300000, '스타벅스', '대만', '텀블러입니다','로켓배송', '교환환불 불가',  2500, 1, 1, sysdate);


--상품 이미지 값 넣기
insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8325_07_01.jpeg', 'orgname', 1, '/goods/2019/04/11', 1);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8325_07_02.jpeg', 'orgname', 1, '/goods/2019/04/11', 2);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8751_04_01.jpeg', 'orgname', 2, '/goods/2019/04/11', 1);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8751_04_02.jpeg', 'orgname', 2, '/goods/2019/04/11', 2);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'SM7685_03_01.jpeg', 'orgname', 3, '/goods/2019/04/11', 1);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'SM7685_03_02.jpeg', 'orgname', 3, '/goods/2019/04/11', 2);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8977_06_01.jpeg', 'orgname', 4, '/goods/2019/04/11', 1);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8977_06_02.jpeg', 'orgname', 4, '/goods/2019/04/11', 2);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8906_06_01.jpeg', 'orgname', 5, '/goods/2019/04/11', 1);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8906_06_02.jpeg', 'orgname', 5, '/goods/2019/04/11', 2);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8821_05_01.jpeg', 'orgname', 6, '/goods/2019/04/11', 1);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8821_05_02.jpeg', 'orgname', 6, '/goods/2019/04/11', 2);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8652_05_01.jpeg', 'orgname', 7, '/goods/2019/04/11', 1);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8652_05_02.jpeg', 'orgname', 7, '/goods/2019/04/11', 2);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'EP5365_13_01.jpeg', 'orgname', 8, '/goods/2019/04/11', 1);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'EP5365_13_02.jpeg', 'orgname', 8, '/goods/2019/04/11', 2);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8847_15_01.jpeg', 'orgname', 9, '/goods/2019/04/11', 1);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'HD8847_15_02.jpeg', 'orgname', 9, '/goods/2019/04/11', 2);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'file_65_01.jpg', 'orgname', 10, '/goods/2019/04/11', 1);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'file_65_02.jpg', 'orgname', 10, '/goods/2019/04/11', 2);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'tum_01.jpg', 'orgname', 11, '/goods/2019/04/11', 1);

insert into tb_goods_image (image_no, sysname, orgname, goods_no, path, pre_image) 
values (s_tb_goods_image_image_no.nextval,'tum_02.jpg', 'orgname', 11, '/goods/2019/04/11', 2);


--결제 값 넣기
insert into tb_pay (pay_no, mem_no, pay_option, order_price, pay_price, goods_no) 
values (s_tb_pay_pay_no.nextval, 1, 1, 300000, 300000, 1);

--상품 문의 테이블에 값넣기
insert into tb_inquire(inq_no, goods_no, mem_no, title, content, view_cnt, reg_date)
values(s_inq_no.nextval, 1, 1, '에스프레소 머신','캡슐이 뚫리지 않아 추출이 불가합니다?',17, to_date('2018-04-12','yyyy-mm-dd')); 
 
insert into tb_inquire(inq_no, goods_no, mem_no, title, content, view_cnt, reg_date)
values(s_inq_no.nextval, 1, 2, '에스프레소 머신','커피 추출시 머신 바닥으로 물이 새요?',50, to_date('2018-11-23','yyyy-mm-dd')); 
 
insert into tb_inquire(inq_no, goods_no, mem_no, title, content, view_cnt, reg_date)
values(s_inq_no.nextval, 1, 1, '에스프레소 캡슐','에스프레소캡슐과 브루커피캡슐의 차이는 무엇인가요?',98, to_date('2018-05-15','yyyy-mm-dd')); 
 
insert into tb_inquire(inq_no, goods_no, mem_no, title, content, view_cnt, reg_date)
values(s_inq_no.nextval, 1, 2, '텀블러','19 Cherry blossom floating coldcup 473ml는 가격이 얼마인가요?',33, to_date('2018-08-20','yyyy-mm-dd')); 
 
insert into tb_inquire(inq_no, goods_no, mem_no, title, content, view_cnt, reg_date)
values(s_inq_no.nextval, 1, 3, '기타','사이렌오더란 무엇인가요?',72, to_date('2018-07-09','yyyy-mm-dd')); 
 
--문의 답변 테이블에 값넣기
insert into tb_inquire_response(response_no, inq_no, content, reg_date)
values(s_response_no.nextval, 1,'캡슐 뒤를 뚫어주는 기기내 부품이 장기간 사용하시거나 많은 캡슐을 
추출했을 때 마모되어 뚫리지 않는 경우가 있습니다.', to_date('2018-04-13','yyyy-mm-dd')); 
 
insert into tb_inquire_response(response_no, inq_no, content, reg_date)
values(s_response_no.nextval, 3,'물통과 머신의 접합상태를 체크해주세요.', to_date('2018-11-25','yyyy-mm-dd')); 
 
insert into tb_inquire_response(response_no, inq_no, content, reg_date)
values(s_response_no.nextval, 3,'(Espresso Capsule) - 고압, 고열로 빨리 추출하는
    커피캡슐입니다. (Brew Capsule)- 저압, 저열로 천천히 추출하는 커피캡슐입니다.', to_date('2018-05-18','yyyy-mm-dd')); 
 
insert into tb_inquire_response(response_no, inq_no, content, reg_date)
values(s_response_no.nextval, 4,'문의하신 상품의 가격은 22000원입니다.', to_date('2018-08-31','yyyy-mm-dd')); 
 
insert into tb_inquire_response(response_no, inq_no, content, reg_date)
values(s_response_no.nextval, 5,'매장에서 줄을 서지 않고 주문하는 쉽고 간편한 O2O (Online to Offline) 서비스로서 앱을 통해 스타벅스 음료, 푸드 및 원두의
   결제 및 주문을 완료하면 매장에서 즉시 메뉴를 받을 수 있는서비스입니다.', to_date('2018-07-15','yyyy-mm-dd')); 

commit;

-- 시퀀스의  increment를 현재값만큼 뺴도록 설정
alter sequence s_inq_no increment by - 80;

-- 시퀀스의 nextval값 조회
select s_inq_no.nextval from dual; 

-- 시퀀스의 increment를 1로 설정
alter sequence s_inq_no increment by 1;



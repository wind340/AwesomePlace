-- 회원

CREATE TABLE member(
   cid VARCHAR(32) PRIMARY KEY,
   cpassword VARCHAR(32),
   cname VARCHAR(32),
   cgender VARCHAR(32),
   cbirth VARCHAR(32),
   cemail VARCHAR(32),
   cphone VARCHAR(32),
   caddress VARCHAR(32),
   cregiday VARCHAR(32)
) DEFAULT CHARSET=utf8;

-- 메뉴

CREATE TABLE menu(
	mtitle VARCHAR(32),
	mname VARCHAR(32),
	mprice VARCHAR(32),
	mdescription VARCHAR(1024),
	mfile VARCHAR(1024)
) DEFAULT CHARSET=UTF8;


-- 게시판

CREATE TABLE board(
bid int(10) PRIMARY KEY AUTO_INCREMENT,
btitle VARCHAR(1024),
bcontent VARCHAR(2048),
bmember VARCHAR(32),
bfilename VARCHAR(1024),
bdate VARCHAR(32)
) DEFAULT CHARSET=utf8;

-- 이벤트 보드

CREATE TABLE event(
eid int(10) PRIMARY KEY AUTO_INCREMENT,
etitle VARCHAR(1024),
esubtitle VARCHAR(1024),
econtent VARCHAR(2048),
efilename VARCHAR(1024),
edate VARCHAR(32)
) DEFAULT CHARSET=utf8;
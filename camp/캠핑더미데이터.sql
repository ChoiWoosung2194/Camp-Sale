----ADMIN----
INSERT INTO ADMIN
(NO, ID, PWD, NICK)
VALUES
(SEQ_ADMIN_NO.NEXTVAL , 'admin01' , 'admin01' , '관리자');

-------USER-------
INSERT INTO MEMBER(NO, ID, PWD, NICK, ADDRESS, DETAIL_ADDRESS, ZIP_CODE, PHONE, NAME, EMAIL)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'USER01', '123456789', 'NICK01', '경기도 용인시 처인구 당하로71번길', '12-5', '12345','01012345678', 'NAME01', 'QWER01@NAVER.COM');

INSERT INTO MEMBER(NO, ID, PWD, NICK, ADDRESS, DETAIL_ADDRESS, ZIP_CODE, PHONE, NAME, EMAIL)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'USER02', '123456789', 'NICK02', '경기도 성남시 분당구 수내로71', '502동 302호', '12345','01012345678', 'NAME02', 'QWER02@NAVER.COM');

INSERT INTO MEMBER(NO, ID, PWD, NICK, ADDRESS, DETAIL_ADDRESS, ZIP_CODE, PHONE, NAME, EMAIL)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'USER03', '123456789', 'NICK03', '서울시 강남구 태해란로12번길', '55-6', '12345','01012345678', 'NAME03', 'QWER03@NAVER.COM');

INSERT INTO MEMBER(NO, ID, PWD, NICK, ADDRESS, DETAIL_ADDRESS, ZIP_CODE, PHONE, NAME, EMAIL)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'USER04', '123456789', 'NICK04', '서울시 용산구 한강대로42 ', '123-6', '12345','01012345678', 'NAME04', 'QWER04@NAVER.COM');

INSERT INTO MEMBER(NO, ID, PWD, NICK, ADDRESS, DETAIL_ADDRESS, ZIP_CODE, PHONE, NAME, EMAIL)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'USER05', '123456789', 'NICK05', '서울시 종로구 세종대로209', '77-6', '12345','01012345678', 'NAME05', 'QWER05@NAVER.COM');

INSERT INTO MEMBER(NO, ID, PWD, NICK, ADDRESS, DETAIL_ADDRESS, ZIP_CODE, PHONE, NAME, EMAIL)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'USER06', '123456789', 'NICK06', '서울시 송파구 가락로232', '608동 503호', '12345','01012345678', 'NAME06', 'QWER06@NAVER.COM');

INSERT INTO MEMBER(NO, ID, PWD, NICK, ADDRESS, DETAIL_ADDRESS, ZIP_CODE, PHONE, NAME, EMAIL)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'USER07', '123456789', 'NICK07', '서울시 광진구 긴고랑로156', '1102동 1003호', '12345','01012345678', 'NAME07', 'QWER07@NAVER.COM');

INSERT INTO MEMBER(NO, ID, PWD, NICK, ADDRESS, DETAIL_ADDRESS, ZIP_CODE, PHONE, NAME, EMAIL)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'USER08', '123456789', 'NICK08', '경기도 용인시 처인구 이동읍 경기동로 676번길', '57', '12345','01012345678', 'NAME08', 'QWER08@NAVER.COM');

INSERT INTO MEMBER(NO, ID, PWD, NICK, ADDRESS, DETAIL_ADDRESS, ZIP_CODE, PHONE, NAME, EMAIL)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'USER09', '123456789', 'NICK09', '경상북도 포항시 북구 새천년대로484번길8', '409동905호', '12345','01012345678', 'NAME09', 'QWER09@NAVER.COM');

INSERT INTO MEMBER(NO, ID, PWD, NICK, ADDRESS, DETAIL_ADDRESS, ZIP_CODE, PHONE, NAME, EMAIL)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'USER10', '123456789', 'NICK10', '경기도 남양주시 경춘로476번길', '10-5', '12345','01012345678', 'NAME10', 'QWER10@NAVER.COM');

------OWNER------
INSERT INTO OWNER(NO, ID, PWD, NICK, NAME, PHONE, EMAIL, ADDRESS,DETAIL_ADDRESS, ZIP_CODE, BUSINESS_NUM)
VALUES(SEQ_OWNER_NO.NEXTVAL, 'OWNER01', '123456789', 'NICK01','NAME01','01012345678','ASDF01@NAVER.COM', '강원 원주시 신림면 황둔리 1240','1','26508','1234567890');

INSERT INTO OWNER(NO, ID, PWD, NICK, NAME, PHONE, EMAIL, ADDRESS,DETAIL_ADDRESS, ZIP_CODE, BUSINESS_NUM)
VALUES(SEQ_OWNER_NO.NEXTVAL, 'OWNER02', '123456789', 'NICK02','NAME02','01012345678','ASDF02@NAVER.COM', '충북 충주시 살미면 월악로 1233','1','27491','1234567890');

INSERT INTO OWNER(NO, ID, PWD, NICK, NAME, PHONE, EMAIL, ADDRESS,DETAIL_ADDRESS, ZIP_CODE, BUSINESS_NUM)
VALUES(SEQ_OWNER_NO.NEXTVAL, 'OWNER03', '123456789', 'NICK03','NAME03','01012345678','ASDF03@NAVER.COM', '충남 부여군 세도면 대흥로 163','1','33225','1234567890');

INSERT INTO OWNER(NO, ID, PWD, NICK, NAME, PHONE, EMAIL, ADDRESS,DETAIL_ADDRESS, ZIP_CODE, BUSINESS_NUM)
VALUES(SEQ_OWNER_NO.NEXTVAL, 'OWNER04', '123456789', 'NICK04','NAME04','01012345678','ASDF04@NAVER.COM', '충북 음성군 원남면 덕생로 167-15','1','27723','1234567890');

INSERT INTO OWNER(NO, ID, PWD, NICK, NAME, PHONE, EMAIL, ADDRESS,DETAIL_ADDRESS, ZIP_CODE, BUSINESS_NUM)
VALUES(SEQ_OWNER_NO.NEXTVAL, 'OWNER05', '123456789', 'NICK05','NAME05','01012345678','ASDF05@NAVER.COM', '강원 홍천군 남면 응아지길 267','1','25105','1234567890');

INSERT INTO OWNER(NO, ID, PWD, NICK, NAME, PHONE, EMAIL, ADDRESS,DETAIL_ADDRESS, ZIP_CODE, BUSINESS_NUM)
VALUES(SEQ_OWNER_NO.NEXTVAL, 'OWNER06', '123456789', 'NICK06','NAME06','01012345678','ASDF06@NAVER.COM', '충남 논산시 벌곡면 수락로443번길 47-2','1','33026','1234567890');

INSERT INTO OWNER(NO, ID, PWD, NICK, NAME, PHONE, EMAIL, ADDRESS,DETAIL_ADDRESS, ZIP_CODE, BUSINESS_NUM)
VALUES(SEQ_OWNER_NO.NEXTVAL, 'OWNER07', '123456789', 'NICK07','NAME07','01012345678','ASDF07@NAVER.COM', '경남 합천군 용주면 합천호반로 613','1','50215','1234567890');

INSERT INTO OWNER(NO, ID, PWD, NICK, NAME, PHONE, EMAIL, ADDRESS,DETAIL_ADDRESS, ZIP_CODE, BUSINESS_NUM)
VALUES(SEQ_OWNER_NO.NEXTVAL, 'OWNER08', '123456789', 'NICK08','NAME08','01012345678','ASDF08@NAVER.COM', '충남 서천군 비인면 갯벌체험로 805','1','33609','1234567890');

INSERT INTO OWNER(NO, ID, PWD, NICK, NAME, PHONE, EMAIL, ADDRESS,DETAIL_ADDRESS, ZIP_CODE, BUSINESS_NUM)
VALUES(SEQ_OWNER_NO.NEXTVAL, 'OWNER09', '123456789', 'NICK09','NAME09','01012345678','ASDF09@NAVER.COM', '경기 양주시 장흥면 권율로 156-116','1','11520','1234567890');

INSERT INTO OWNER(NO, ID, PWD, NICK, NAME, PHONE, EMAIL, ADDRESS,DETAIL_ADDRESS, ZIP_CODE, BUSINESS_NUM)
VALUES(SEQ_OWNER_NO.NEXTVAL, 'OWNER10', '123456789', 'NICK10','NAME10','01012345678','ASDF10@NAVER.COM', '전남 무안군 해제면 참새골길 30','1','58508','1234567890');

-----campsite-----

INSERT INTO CAMPSITE(NO, OWNER_NO, NAME, ADDRESS, TEL, INTRODUCTION, BASIC_INFO, ZONE_LAYOUT_IMG, AREA, CAMPSITE_CATEGORY)
VALUES(SEQ_CAMPSITE_NO.NEXTVAL, 1, '제주펜션선빈', '제주특별자치도 제주시 애월읍 신상로 256-3 에이동','050350590952',
'개별바비큐
● 바비큐 이용 안내
▷ 이용 장소 : 객실 내 테라스
▷ 숯,그릴 요금 : 2인 기준 30,000(숯 추가시 15,000)
▷ 예약 : 이용 전 말씀 부탁드립니다.
▷ 현장 결제이며, 화재에 유의하시기 바랍니다.
IPTV/WiFi
무료영화(OTT)
● 넷플릭스 : 전 객실 이용 가능합니다.　
트윈베드
- 글램핑 룸에 해당 됩니다.　
야외테라스
● 야외 테라스
▷답답한 일상에서 벗어나 야외에서 편안한 휴식을 즐길 수 있습니다.
객실금연
▷전 객실 금연 입니다.
글램핑
- 투룸 형에만 한정
바비큐장
주차가능
● 주차 안내
▷펜션 내에 주차 가능한 공간이 있습니다.',
'안녕하세요~
침대에서는 바다뷰를
데크에서는 글램핑을 즐길 수 있는
편백황토힐링펜션 선빈 펜션입니다 !',
'campjeju1.jpg',
'제주도','오토캠핑' );

INSERT INTO CAMPSITE(NO, OWNER_NO, NAME, ADDRESS, TEL, INTRODUCTION, BASIC_INFO, ZONE_LAYOUT_IMG, AREA, CAMPSITE_CATEGORY)
VALUES(SEQ_CAMPSITE_NO.NEXTVAL, 2, '십리포힐링카라반', '인천광역시 옹진군 영흥면 영흥북로 376','050350594488',
'개별바비큐
단독 개별바베큐: 25,000원
독채펜션
독채객실
객실금연
글램핑
프리미엄펜션
바비큐장
불멍 :25,000원
주차가능
해수욕장인근',
'안녕하세요. 대부도(영흥도) 십리포 힐링 카라반입니다.',
'camp10ripo.jpg',
'경기','오토캠핑' );

INSERT INTO CAMPSITE(NO, OWNER_NO, NAME, ADDRESS, TEL, INTRODUCTION, BASIC_INFO, ZONE_LAYOUT_IMG, AREA, CAMPSITE_CATEGORY)
VALUES(SEQ_CAMPSITE_NO.NEXTVAL, 3, '홍천아레나펜션', '강원도 홍천군 북방면 노일로 344-13','050350572353',
'개별바비큐
개별바비큐 이용 가능! 펜션 객실 앞 테라스와 예약한 글램핑동 바로 앞에서 편리하게 개별로 바비큐를 즐기실 수 있습니다.
개별바비큐장 이용 시간 : 오후 6시 ~ 오후 10시(밤 늦게 이용 시 글램핑 또는 객실 손님에게 피해를 줍니다. 적어도 10시전에 마감, 정리 바랍니다.)
글램핑장 숯불 제공 시간 : 오후 6시~오후 8시
숯,그릴 이용 금액 : 2인 기준
IPTV/WiFi
전 객실 와이파이 사용 가능합니다.
무료영화(OTT)
넷플릭스는 개인 계정으로 사용 가능합니다.
글램핑
수영장
130m 지하 암반수 물 사용! 맑은 공기와 함께 시원한 야외 수영장을 즐겨보세요!
운영 일정 : 24년 6월 오픈 예정 ~ 24년 9월 초
이용 시간 : 오전 10시 ~ 오후 8시
수영장 크기 : 6m * 9m / 수심 1m
이용 복장 : 수영복 / 래쉬가드 착용',
'아레나펜션은 홍천의 청정 자연 속에서 글램핑을 즐길 수 있습니다.
사랑하는 사람과 함께 캠핑을 떠날 계획이라면 아레나펜션을 추천합니다.
공기 좋고 경치 좋은 자연 속에서 여유로움을 만끽하기 좋아요.
테라스에서 마운틴뷰를 감상하며 바비큐 파티도 즐길 수 있고
여름에는 야외 수영장에서 신나게 수영도 가능해요.
밤에는 모닥불을 피워놓으며 불멍도 하고, 별도 보고
아레나는 캠핑의 낭만을 온전히 느낄 수 있는 곳이랍니다.
사랑하는 사람과 아레나에서 특별한 추억을 만들어보세요.',
'camphongchun.jpg',
'강원','오토캠핑' );

INSERT INTO CAMPSITE(NO, OWNER_NO, NAME, ADDRESS, TEL, INTRODUCTION, BASIC_INFO, ZONE_LAYOUT_IMG, AREA, CAMPSITE_CATEGORY)
VALUES(SEQ_CAMPSITE_NO.NEXTVAL, 4, '포천스푼글램핑', '경기도 포천시 군내면 청군로2985번길 202','050350535084',
'스파/월풀
개별바비큐
독채펜션
IPTV/WiFi
주방
객실금연
글램핑
프리미엄펜션
바비큐장
매점/편의점
주차가능',
'눈부신 햇살과 상쾌한 공기를 머금은 자연에서 여러분만의 온전한 시간, 특별한 추억을 담아갈 수 있습니다',
'camppochun.jpg',
'경기','글램핑' );

INSERT INTO CAMPSITE(NO, OWNER_NO, NAME, ADDRESS, TEL, INTRODUCTION, BASIC_INFO, ZONE_LAYOUT_IMG, AREA, CAMPSITE_CATEGORY)
VALUES(SEQ_CAMPSITE_NO.NEXTVAL, 5, '포항이밤카라반', '경상북도 포항시 북구 청하면 해안로2000번길 33-20','050350591998',
'독채객실
오션뷰
파티룸
야외테라스
글램핑
프리미엄펜션
수영장
빔프로젝트
야외 빔스크린
매점/편의점
매점(고기등 식료품일체)
상비약
주차가능
파티가능
펜션즐기기
파이어피트(무료)',
'안녕하세요. 포항 이밤카라반입니다.
생맥주 제공(바베큐 이용시)',
'camppohang.jpg',
'경상','오토캠핑' );

INSERT INTO CAMPSITE(NO, OWNER_NO, NAME, ADDRESS, TEL, INTRODUCTION, BASIC_INFO, ZONE_LAYOUT_IMG, AREA, CAMPSITE_CATEGORY)
VALUES(SEQ_CAMPSITE_NO.NEXTVAL, 6, '아산와이(Y)글램핑', '충청남도 아산시 송악면 강당로115번길 12','050350538054',
'개별바비큐
1. BBQ(그릴,숯)이용 : 25,000원
2. 불멍(화로,장작5kg) : 15,000원(외부 그릴,숯, 화로,장작 사용금지)
*현장결제
독채객실
IPTV/WiFi
야외테라스
객실금연
글램핑
족구장
불멍
불멍(화로,장작5kg) : 15,000원(외부 그릴,숯, 화로,장작 사용금지)
현장결제
상비약
주차가능
키즈
게임
1. 매주 토요일 여러가지 게임을 통하여 성공시 소주,맥주 택1
2. 당일 생일 와인 증정 (주말 제외, 신분증 확인)
3. BBQ, 불멍 두가지 다 이용시 뽑기 통해 선물 증정
파티가능',
'안녕하세요.아산 와이(Y)글램핑입니다.
도심근교 아름다운 자연을 느낄수 있는 와이글램핑으로 여러분을 초대합니다~',
'campahsan.jpg',
'충청','글램핑' );

INSERT INTO CAMPSITE(NO, OWNER_NO, NAME, ADDRESS, TEL, INTRODUCTION, BASIC_INFO, ZONE_LAYOUT_IMG, AREA, CAMPSITE_CATEGORY)
VALUES(SEQ_CAMPSITE_NO.NEXTVAL, 7, '담양퀸즈캐슬', '전라남도 담양군 가사문학면 가사문학로 760-11','050350539012',
'스파/월풀
★취사불가,바베큐장 별도 없음★
★스파 객실이용 시 유의사항
쾌적한 스파를 위하여 스파 내에서는 취사를 할 수 없습니다.
입욕 시 반드시 스파복을 착용바랍니다.
IPTV/WiFi
램핑장내 무선 인터넷 설치가 완료되어 와이파이 이용이 가능합니다.
객실금연
글램핑
바비큐이용시: 필요한 숯과 그릴 요금 20,000원입니다.
각 동마다 개별 화장실 샤워시설이 별도로 설치 되어있습니다.
글램핑 특성상 동절기는 실내온도가 추울수 있습니다. 두터운 옷 준비하시기바랍니다.
숯 그릴 예약시간 : 5시30분~7시00분 마감. (5개동씩, 30분간격 제공)
숯 그릴은 전화 예약하셔야 선착순으로 원하는시간에 사용가능합니다.
매점/편의점
이용시간 오전 10시~오후 8시
※ 카드만 이용 가능합니다.(현금판매불가)
주차가능',
'높고 확 트인 전망을 바라보며 스파를 즐길 수 있습니다.
자연 경관이 수려하고 고즈넉한 곳에서 조용히 쉬며 한가로이 휴가를 즐기세요.
광주호를 바라보고 있어 수려하고 확 트인 전망을 감상하며 캠핑을 즐길 수 있습니다.
산과 호수가 어우러져 아무생각 없이 바라만 보고 있어도 힐링되는 풍경입니다.',
'campdamyang.jpg',
'전라','글램핑' );

INSERT INTO CAMPSITE(NO, OWNER_NO, NAME, ADDRESS, TEL, INTRODUCTION, BASIC_INFO, ZONE_LAYOUT_IMG, AREA, CAMPSITE_CATEGORY)
VALUES(SEQ_CAMPSITE_NO.NEXTVAL, 8, '대부도골드오션글램핑', '경기도 안산시 단원구 대부해안로 271','050350535478',
'IPTV/WiFi
주방
객실금연
글램핑
수영장
바비큐장
매점/편의점
주차가능',
'바다가 보이는 오션뷰 글램핑장입니다
신축글램핑장으로 대부도내 가장 좋은시설을 자부합니다
수영장이 있어 여름에 수영과 캠핑을 함께 즐길 수있습니다',
'campdebudo.jpg',
'경기','글램핑' );

INSERT INTO CAMPSITE(NO, OWNER_NO, NAME, ADDRESS, TEL, INTRODUCTION, BASIC_INFO, ZONE_LAYOUT_IMG, AREA, CAMPSITE_CATEGORY)
VALUES(SEQ_CAMPSITE_NO.NEXTVAL, 9, '영월스타글램핑', '강원도 영월군 무릉도원면 무릉법흥로 1078-16','050350588317',
'개별바비큐
독채펜션
주방
객실금연
글램핑
바비큐장
주차가능
패밀리
계곡인접',
'펜션 인근 계곡있으며 캠프파이어 가능합니다',
'campyoungwar.jpg',
'강원','글램핑' );

INSERT INTO CAMPSITE(NO, OWNER_NO, NAME, ADDRESS, TEL, INTRODUCTION, BASIC_INFO, ZONE_LAYOUT_IMG, AREA, CAMPSITE_CATEGORY)
VALUES(SEQ_CAMPSITE_NO.NEXTVAL, 10, '대전꿈꾸는농부캠핑장', '대전광역시 동구 산내로 716','050350586551',
'개별바비큐
불멍/바베큐 화로대여+숯1kg+장작10kg+바베큐 철망1개를 30,000원에 세트로 대여/판매중입니다.구매는 관리실에서 도와드립니다.
독채객실
IPTV/WiFi
객실금연
흡연은 캠핑장 입구 흡연구역에서만 부탁드립니다.
글램핑
매점/편의점
매점은 22:30까지 이용가능합니다.이점 유의해주시기 바랍니다.
매점에서는 장작,숯,부탄가스/이소가스,바베큐철망,모기약과 소주/맥주만 판매합니다.
음료나 과자,라면등의 먹거리는 준비해오셔야합니다.
주차가능
캠핑장,카라반전체 1팀당 차량1대입니다.차량이 2대 이상이시라면 캠핑장 밖에 주차해주세요.
※전기차 충전 절대불가합니다.',
'사계절 내내 아름다운 대전 상소동 산림욕장 바로 옆에 위치하고 있는 꿈꾸는 농부 오토캠핑,카라반입니다.
대전 상소동 산림욕장은 봄에 흐드러지게 피는 벚꽃길이 유명한 대전의 벚꽃 명소이며,
여름에는 무료로 어른과 아이가 함께 즐길 수 있는 야외수영장을 운영하고 있습니다.
가을의 단풍길과 겨울의 얼음왕국도 즐길 수 있는 사계절 명소입니다.
대전꿈꾸는농부캠핑장은 바로 옆으로 산림욕장 산책로가 조성되어있어
아이들과 부모님,연인이나,친구들과 함께 자연을 벗삼아 편안히 휴식하기에 좋고,
캠핑장에서 차로 10분 거리에 만인산자연휴양림이 위치하며
15분거리에 하늘물빛정원이 있어 산림욕장 외에도 즐길 거리가 많은 즐거운 곳입니다.',
'campdeajean.jpg',
'충청','글램핑' );

----------campsite notice-------

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 1,'1번 예약공지',
'예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.
기준 인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.
최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.
반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 1,'2번 예약공지',
'숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.
다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.
객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.
객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 1,'3번 예약공지',
'객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.
다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불 받을 수 있습니다.
펜션 별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 2,'1번 예약공지',
'예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.
기준 인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.
최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.
반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 2,'2번 예약공지',
'숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.
다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.
객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.
객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 2,'3번 예약공지',
'객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.
다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불 받을 수 있습니다.
펜션 별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 3,'1번 예약공지',
'예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.
기준 인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.
최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.
반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 3,'2번 예약공지',
'숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.
다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.
객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.
객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 3,'3번 예약공지',
'객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.
다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불 받을 수 있습니다.
펜션 별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 4,'1번 예약공지',
'예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.
기준 인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.
최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.
반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 4,'2번 예약공지',
'숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.
다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.
객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.
객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 4,'3번 예약공지',
'객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.
다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불 받을 수 있습니다.
펜션 별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 5,'1번 예약공지',
'예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.
기준 인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.
최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.
반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 5,'2번 예약공지',
'숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.
다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.
객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.
객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 5,'3번 예약공지',
'객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.
다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불 받을 수 있습니다.
펜션 별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 6,'1번 예약공지',
'예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.
기준 인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.
최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.
반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 6,'2번 예약공지',
'숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.
다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.
객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.
객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 6,'3번 예약공지',
'객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.
다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불 받을 수 있습니다.
펜션 별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 7,'1번 예약공지',
'예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.
기준 인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.
최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.
반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 7,'2번 예약공지',
'숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.
다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.
객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.
객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 7,'3번 예약공지',
'객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.
다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불 받을 수 있습니다.
펜션 별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 8,'1번 예약공지',
'예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.
기준 인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.
최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.
반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 8,'2번 예약공지',
'숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.
다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.
객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.
객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 8,'3번 예약공지',
'객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.
다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불 받을 수 있습니다.
펜션 별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 9,'1번 예약공지',
'예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.
기준 인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.
최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.
반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 9,'2번 예약공지',
'숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.
다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.
객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.
객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 9,'3번 예약공지',
'객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.
다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불 받을 수 있습니다.
펜션 별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 10,'1번 예약공지',
'예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.
기준 인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.
최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.
반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 10,'2번 예약공지',
'숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.
다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.
객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.
객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.');

INSERT INTO CAMPSITE_NOTICE(NO, OWNER_NO, TITLE, CONTENT)
VALUES(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, 10,'3번 예약공지',
'객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.
다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불 받을 수 있습니다.
펜션 별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.');

-----F&Q-----

INSERT INTO FAQ(NO, WRITER, TITLE, CONTENT)
VALUES(SEQ_FAQ_NO.NEXTVAL, 1, '[글램핑] 취소/환불 규정이 어떻게 되나요?','[취소 규정]
- 입실 1일 전 무료 취소 가능
  ※ 단, 일부 글램핑 숙박 상품은 모텔 자체의 취소 규정이 적용되어 입실 1일 전이라도 취소 및 환불이 불가합니다.

[취소수수료 부과 예외 규정]
? 입실 시각 경과 전 발생한 예약
 - 예약 완료 시각으로부터 1시간 이내
 - 단, 예약 완료 후 1시간 이내라도 입실 시간 경과 시 취소 불가

? 입실 시각 경과 후 발생한 예약
 - 예약 완료 시각으로부터 15분 이내
 - 단, 이미 입실한 경우 취소 불가

[취소 수수료 부과 정책 확인 경로]
? 예약/결제 전
▶ 객실 상세 페이지 > 객실 예약하기 클릭 > 취소 및 환불 불가 ⓘ');


INSERT INTO FAQ(NO, WRITER, TITLE, CONTENT)
VALUES(SEQ_FAQ_NO.NEXTVAL, 1, '[펜션/게스트하우스] 취소/환불 규정이 어떻게 되나요?',
'취소 수수료는 취소 시점에 따라 다르게 적용 됩니다.

[취소 규정]
- 입실 6일 전 24시 전까지: 없음
- 입실 5일 전 24시 전까지: 10%
- 입실 4일 전 24시 전까지: 20%
- 입실 3일 전 24시 전까지: 30%
- 입실 2일 전 24시 전까지: 50%
- 입실 1일 전 24시 전까지: 70%

[취소수수료 부과 예외 규정]
? 입실 시각 경과 전 발생한 예약
 - 예약 완료 시각으로부터 10분 이내

?  대기예약 객실
 - 예약 확정 대기 상태에서 취소하는 경우

[취소 수수료 부과 정책 확인 경로]
? 예약/결제 전
 ▶ 객실 상세 페이지 > 객실 예약하기 클릭 > 취소 및 환불 불가 ⓘ');

 INSERT INTO FAQ(NO, WRITER, TITLE, CONTENT)
VALUES(SEQ_FAQ_NO.NEXTVAL, 1, '예약을 취소했는데 결제 환불이 되지 않아요.',
'환불 기간은 결제수단에 따라 영업일 기준 3~5일 소요됩니다.

또는 100% 수수료가 부과되어 환불금액이 0원인 경우일 수 있습니다.

정상 취소 후 환불 및 입금이 지연되는 경우 각 결제사 및 카드사로 문의 바랍니다.

※ 시일이 소요되는 경우 아래 사유를 확인해주세요.
카드결제 : 카드사의 한도복원이 필요한 경우
계좌이체 : 은행 계좌입금에 시일이 소요되는 경우
휴대폰 소액결제 : 결제월과 환불월이 다른 경우');

------NOTICE------

INSERT INTO NOTICE(NO, WRITER, TITLE, CONTENT)
VALUES(SEQ_NOTICE_NO.NEXTVAL, 1, '[기차] 집중호우에 따른 열차 운행 지연 안내 (7/18 14:50 업데이트)',
'안녕하세요,
기차 운행 관련 공지 드립니다.

현재 수도권, 강원, 충북 지역 집중호우로 해당 지역을 천천히 운행함에 따라 일부 열차가 지연되고 있습니다.
열차를 이용하시기 전에 코레일톡, 홈페이지 등에서 운행 정보를 확인해주시기 바랍니다.

*자연재해로 인한 20분 이상 지연의 경우 코레일 정책에 따라 지연 보상이 불가합니다.

감사합니다.  ');

INSERT INTO NOTICE(NO, WRITER, TITLE, CONTENT)
VALUES(SEQ_NOTICE_NO.NEXTVAL, 1, '개인정보처리방침 개정 안내(2024.06.17)',
'안녕하세요.

보다 나은 서비스 제공을 위해 야놀자의 개인정보처리방침이 다음과 같이 변경됨을 알려드립니다.


▶ 개인정보처리방침 변경 및 시행일: 2024년 6월 17일
▶ 개인정보처리방침 주요 변경 내용
본인인증 수집?이용동의 목적 변경
개인 정보 제3 자 제공 현황 추가
개인 정보 국외 이전 현황 추가');

INSERT INTO NOTICE(NO, WRITER, TITLE, CONTENT)
VALUES(SEQ_NOTICE_NO.NEXTVAL, 1, '휴대폰 번호 로그인 서비스 중단 안내',
'안녕하세요.
로그인 정책이 변경되어
2023년 6월 27일(화)부터 휴대폰 번호 로그인 서비스가 중단될 예정입니다.
휴대폰 번호 로그인 서비스를 이용 중이셨던 고객님께서는 2023년 6월 26일(월)까지 MY야놀자 > 설정 > 간편 로그인을 통해 SNS 계정과 연동해 주시기 바랍니다.
연동이 완료된 SNS 계정으로 추후 로그인하실 수 있습니다.
휴대폰 번호 로그인 서비스 중단 이후에는 이메일 아이디 로그인 및 간편 로그인(카카오, 네이버, 애플ID)을 통해서만 야놀자 앱/웹에 로그인하실 수 있습니다.
이용에 참고 부탁드리며, 고객님들의 많은 양해 부탁드립니다.');

-----SEASON-----
INSERT INTO SEASON(NO
,TYPE
,START_DATE
,END_DATE)
VALUES (SEQ_SEASON_NO.NEXTVAL , '비성수기','2024-07-10','2024-09-01');

INSERT INTO SEASON(NO
,TYPE
,START_DATE
,END_DATE)
VALUES (SEQ_SEASON_NO.NEXTVAL , '성수기','2024-07-10','2024-09-01');

INSERT INTO SEASON(NO
,TYPE
,START_DATE
,END_DATE)
VALUES (SEQ_SEASON_NO.NEXTVAL , '성수기','2024-07-10','2024-09-01');

INSERT INTO SEASON(NO
,TYPE
,START_DATE
,END_DATE)
VALUES (SEQ_SEASON_NO.NEXTVAL , '성수기','2024-07-10','2024-09-01');

-------ZONE------

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 1,1,'A존',4,100000, 'jejuA.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 1,2,'B존',6,150000, 'jejuB.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 1,3,'C존',8,200000, 'jejuC.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 2,1,'A존',4,100000,'10ripoA.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 2,2,'B존',6,150000,'10ripoB.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 2,3,'C존',8,200000,'10ripoC.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 3,1,'A존',4,100000,'hongchunA.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 3,2,'B존',6,150000,'hongchunB.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 3,3,'C존',8,200000,'hongchunC.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 4,1,'A존',4,100000,'pochunA.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 4,2,'B존',6,150000,'pochunB.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 4,3,'C존',8,200000,'pochunC.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 5,1,'A존',4,100000,'pohangA.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 5,2,'B존',6,150000,'pohangB.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 5,3,'C존',8,200000,'pohangC.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 6,1,'A존',4,100000,'ahsanA.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 6,2,'B존',6,150000,'ahsanB.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 6,3,'C존',8,200000,'ahsanC.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 7,1,'A존',4,100000,'danyangA.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 7,2,'B존',6,150000,'danyangB.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 7,3,'C존',8,200000,'danyangC.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 8,1,'A존',4,100000,'debudoA.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 8,2,'B존',6,150000,'debudoB.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 8,3,'C존',8,200000,'debudoC.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 9,1,'A존',4,100000,'youngwarA.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 9,2,'B존',6,150000,'youngwarB.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 9,3,'C존',8,200000,'youngwarC.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 10,1,'A존',4,100000,'deajeanA.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 10,2,'B존',6,150000,'deajeanB.jpg');

INSERT INTO ZONE(NO, OWNER_NO, SEASON_NO, NAME, MAX_PEOPLE, PRICE, FILE_PATH)
VALUES(SEQ_ZONE_NO.NEXTVAL, 10,3,'C존',8,200000,'deajeanC.jpg');

COMMIT;
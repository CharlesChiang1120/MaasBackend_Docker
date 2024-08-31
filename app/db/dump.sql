CREATE DATABASE IF NOT EXISTS yeabytour CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE yeabytour;

-- Create the 'useraccount' table
CREATE TABLE `useraccount` (
   `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
   `gender` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
   `mail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
   `passengercustom_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
   `passengercustom_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
   `passengercustom_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
   `payment` tinyint(1) DEFAULT NULL,
   `deleted` tinyint(1) DEFAULT '0',
   `id` int NOT NULL AUTO_INCREMENT,
   `phonenumber` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
   `pickuplocation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- Create the 'sharecarevent' table
CREATE TABLE `sharecarevent` (
   `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
   `carpreferences` json DEFAULT NULL,
   `passengers` json DEFAULT NULL,
   `startTime` datetime DEFAULT NULL,
   `destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   `departurelocations` json DEFAULT NULL,
   `maxparticipants` json DEFAULT NULL,
   `confirmed` tinyint(1) DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Create the 'activity' table
CREATE TABLE `activity` (
   `activityid` char(36) COLLATE utf8_unicode_ci NOT NULL,
   `activityinfo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
   `activitydate` datetime DEFAULT NULL,
   `destination` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
   `image` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
   `tags` json DEFAULT NULL,
   `userdistance` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
   `availablepickuplocation` json DEFAULT NULL,
   `ticketlink` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
   `destinationAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   PRIMARY KEY (`activityid`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Fake data for useraccount
INSERT INTO useraccount (name, gender, mail, passengercustom_1, passengercustom_2, passengercustom_3, payment, deleted, phonenumber, pickuplocation) 
VALUES 
('Alice', 'F', 'alice@example.com', 'Prefers Window', 'Economy Class', 'Morning Rides', 1, 1, '0912345682', '高鐵-南港站'), 
('Bob', 'M', 'bob@example.com', 'Prefers Aisle', 'Business Class', 'Afternoon Rides', 1, 0, '0912345682', '高鐵-南港站'), 
('Charlie', 'M', 'qqqwwwqqqqq@gmail.com', 'Prefers Window', 'First Class', 'Evening Rides', 1, 0, '0912345682', '高鐵-南港站'), 
('Diana', 'F', 'diana@example.com', 'No Preference', 'Economy Class', 'Morning Rides', 1, 0, '0912345682', '高鐵-南港站'), 
('Edward', 'M', 'aaaaaaa@gmail.com', 'Prefers Aisle', 'Business Class', 'Evening Rides', 1, 0, '0912345682', '高鐵-南港站'), 
('Fiona', 'F', 'fiona@example.com', 'Prefers Window', 'First Class', 'Afternoon Rides', 1, 0, '0912345682', '高鐵-南港站'), 
('George', 'M', 'george@example.com', 'No Preference', 'Economy Class', 'Morning Rides', 1, 0, '0912345682', '高鐵-南港站'), 
('Helen', 'F', 'helen@example.com', 'Prefers Aisle', 'Business Class', 'Evening Rides', 1, 0, '0912345682', '高鐵-南港站'), 
('Ian', 'M', 'ian@example.com', 'Prefers Window', 'First Class', 'Afternoon Rides', 1, 0, '0912345682', '高鐵-南港站'), 
('Jane', 'F', 'jane@example.com', 'No Preference', 'Economy Class', 'Morning Rides', 1, 0, '0912345682', '高鐵-南港站'), 
('John Doe', 'M', 'john.doe@example.com', 'Prefers Aisle', 'Economy Class', 'Morning Rides', 1, 0, '0912345680', '高鐵-南港站'), 
('John Doe', 'M', 'john.doe@example.com', 'Prefers Aisle', 'Economy Class', 'Morning Rides', 1, 0, '0912345682', '高鐵-南港站'), 
('Jane Smith', 'F', 'janesmith@example.com', 'Prefers Aisle', 'Economy Class', 'Morning Rides', 1, 0, '0912345679', '高鐵-南港站'), 
('Robert Brown', 'M', 'robertbrown@example.com', 'Prefers Aisle', 'Economy Class', 'Morning Rides', 1, 0, '0912345680', '高鐵-南港站'), 
('Emily Davis', 'F', 'emilydavis@example.com', 'Prefers Aisle', 'Economy Class', 'Morning Rides', 1, 0, '0912345681', '高鐵-南港站'), 
('Michael Wilson', 'M', 'michaelwilson@example.com', 'Prefers Aisle', 'Economy Class', 'Morning Rides', 1, 0, '0912345682', '高鐵-南港站'), 
('Olivia Johnson', 'F', 'oliviajohnson@example.com', 'Prefers Aisle', 'Economy Class', 'Morning Rides', 1, 0, '0912345683', '高鐵-南港站'), 
('James Lee', 'M', 'jameslee@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345684', '高鐵-南港站'), 
('Sophia Martinez', 'F', 'sophiamartinez@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345685', '高鐵-南港站'), 
('Daniel Anderson', 'M', 'danielanderson@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345686', '高鐵-南港站'), 
('Isabella Taylor', 'F', 'isabellataylor@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345687', '高鐵-南港站'), 
('William Harris', 'M', 'williamharris@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345688', '高鐵-南港站'), 
('Mia Thompson', 'F', 'miathompson@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345689', '高鐵-南港站'), 
('Alexander White', 'M', 'alexanderwhite@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345690', '高鐵-南港站'), 
('Ava Wilson', 'F', 'avawilson@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345691', '高鐵-南港站'), 
('Ethan Brown', 'M', 'ethanbrown@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345692', '高鐵-南港站'), 
('Charlotte Young', 'F', 'charlotteyoung@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345693', '高鐵-南港站'), 
('Benjamin Hall', 'M', 'benjaminhall@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345694', '高鐵-南港站'), 
('Amelia Allen', 'F', 'ameliaallen@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345695', '高鐵-南港站'), 
('Jacob Scott', 'M', 'jacobscott@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345696', '高鐵-南港站'), 
('Harper Lewis', 'F', 'harperlewis@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345697', '高鐵-南港站'), 
('Logan Walker', 'M', 'loganwalker@example.com', 'Prefers Aisle', 'Economy Class', 'Evening Rides', 1, 0, '0912345698', '高鐵-南港站'), 
('Ella Harris', 'F', 'ellaharris@example.com', 'Prefers Aisle', 'Economy Class', 'Afternoon Rides', 1, 0, '0912345699', '高鐵-南港站'), 
('Michael White', 'M', 'michaelwhite@example.com', 'Prefers Aisle', 'Economy Class', 'Afternoon Rides', 1, 0, '0912345700', '高鐵-南港站'), 
('Liam Thompson', 'M', 'liamthompson@example.com', 'Prefers Aisle', 'Economy Class', 'Afternoon Rides', 1, 0, '0912345701', '高鐵-南港站'), 
('Evelyn Harris', 'F', 'evelynharris@example.com', 'Prefers Aisle', 'Economy Class', 'Afternoon Rides', 1, 0, '0912345702', '高鐵-南港站'), 
('Noah Martinez', 'M', 'noahmartinez@example.com', 'Prefers Aisle', 'Economy Class', 'Afternoon Rides', 1, 0, '0912345703', '高鐵-南港站'), 
('Aria Davis', 'F', 'ariadavis@example.com', 'Prefers Aisle', 'Economy Class', 'Afternoon Rides', 1, 0, '0912345704', '高鐵-南港站'), 
('Jack Lee', 'M', 'jacklee@example.com', 'Prefers Aisle', 'Economy Class', 'Afternoon Rides', 1, 0, '0912345705', '高鐵-南港站'), 
('Mila Robinson', 'F', 'milarobinson@example.com', 'Prefers Aisle', 'Economy Class', 'Afternoon Rides', 1, 0, '0912345706', '高鐵-南港站'), 
('Aiden Clark', 'M', 'aidenclark@example.com', 'Prefers Aisle', 'Economy Class', 'Afternoon Rides', 1, 0, '0912345707', '高鐵-南港站'), 
('Roger', 'M', 'john.doe@example.com', 'Prefers Aisle', 'Economy Class', 'Afternoon Rides', 1, 0, '1234567890', '高鐵-南港站');

-- Fake data for sharecarevent
INSERT INTO sharecarevent (ID, carPreferences, passengers, startTime, destination, departureLocations, maxParticipants, confirmed) VALUES
('b17d8a6e-70a0-4d6d-9448-fb86c89e4d75', '[{"type": "sedan", "color": "red"}]', '[{"name": "Alice", "age": 30}, {"name": "Bob", "age": 25}]', '2024-09-01 08:00:00', 'Downtown', '["North Street", "Main Avenue"]', '4', 1),
('f629b80d-34f1-4a4d-9f3e-3a3f4b6a8508', '[{"type": "SUV", "color": "blue"}]', '[{"name": "Charlie", "age": 28}, {"name": "David", "age": 35}]', '2024-09-02 09:30:00', 'Airport', '["Airport Road", "Green Street"]', '6', 0),
('4d80d23a-63c6-4c3e-97d5-e78fa5d7e2a0', '[{"type": "hatchback", "color": "black"}]', '[{"name": "Eva", "age": 40}, {"name": "Frank", "age": 50}]', '2024-09-03 07:45:00', 'Beach', '["Ocean Drive", "Sunny Lane"]', '2', 1),
('a5f9b0cb-1d2e-4e32-b37c-f28a9b750cde', '[{"type": "convertible", "color": "yellow"}]', '[{"name": "Grace", "age": 33}, {"name": "Henry", "age": 45}]', '2024-09-04 11:00:00', 'Mall', '["City Center", "West Boulevard"]', '5', 1),
('e82b9f4c-fb15-4b08-960a-823c5c89f7e1', '[{"type": "truck", "color": "green"}]', '[{"name": "Ivy", "age": 29}, {"name": "John", "age": 38}]', '2024-09-05 13:15:00', 'Park', '["Elm Street", "Park Lane"]', '8', 0);

-- Fake data for activity
INSERT INTO activity (activityid, activityinfo, activitydate, destination, image, tags, userdistance, availablepickuplocation, ticketlink, destinationAddress) 
VALUES 
('08e069d7-36f4-45de-98d6-7d09e261bae5', 'WATERBOMB World Tour 2024 - Taipei', '2024-09-14 15:00:00', '大佳河濱公園', 'https://t.kfs.io/upload_images/210182/WB_kktix_1200x630_medium.jpg', '["音樂節", "潑水", "韓國"]', '15 km', '["鐵-桃園站", "捷運-台北植物園站", "捷運-中正紀念堂站", "捷運-台北車站", "捷運-台北101/世貿站", "高鐵-台中站", "捷運-忠孝敦化站", "捷運-淡水站"]', 'https://maxmini.kktix.cc/events/258bc0d1', '台北市中山區濱江街5號'), 
('0913a631-fb1a-4147-a076-9ef7b710b02b', 'YONA YONA WEEKENDERS "LIVE" Release Tour', '2024-10-19 18:00:00', 'THE WALL LIVEHOUSE', 'https://t.kfs.io/upload_images/207222/KKTIX-YYW-1200x630_medium.jpg', '["演唱會", "樂團", "海外公演"]', '30 km', '["捷運-永春站", "捷運-龍山寺站", "捷運-松山站", "高鐵-雲林站", "高鐵-嘉義站", "捷運-三民站", "捷運-西門站", "捷運-中和站"]', 'https://gutspromotion.kktix.cc/events/d7318c8d', '臺北市文山區羅斯福路四段200號'), 
('22193593-2872-4def-bb53-5f3fcca1c578', '陶喆Soul Power II 世界巡迴演唱會', '2024-11-09 19:30:00', '台北小巨蛋', 'https://t.kfs.io/upload_images/210562/1109%E5%A0%B4%E6%AC%A1_medium.jpeg', '["演唱會", "男歌手", "世界巡迴"]', '20 km', '["高鐵-台北站", "高鐵-新竹站", "高鐵-台中站", "高鐵-高雄站", "高鐵-桃園站", "捷運-台北車 站", "捷運-士林站", "捷運-中正紀念堂站", "捷運-西門站"]', 'https://greatentertainment.kktix.cc/events/094a1fb5-01asal', '台北市松山區南京東路四段2號'), 
('22fe6ff1-8caf-4433-a564-454ce882d368', '逍遙遊 紀念日樂隊', '2024-09-26 19:30:00', 'THE WALL LIVEHOUSE', 'https://t.kfs.io/upload_images/210032/1200_630_medium.png', '["演唱會", "樂團"]', '40 km', '["高鐵-台北站", "高鐵-新竹站", "高鐵-高雄站", "捷運-士林站", "捷運-內湖站", "高鐵-彰化站", "捷運-南港站", "捷運-板橋站"]', 'https://howbigintegratedmarketing.kktix.cc/events/932ce4db', '臺北市文山區羅斯福路四段200號'), 
('278bc939-9fbc-4715-ae4f-1adab106aba0', '恒生銀行呈獻：《I was yesterday - per se live 2024》', '2024-11-09 20:00:00', 'AXA安盛創夢館', 'https://t.kfs.io/upload_images/209651/perse_live_2024_KV_design_r3_past_new_kktix1200-edited_medium.png', '["演唱會", "樂團", "國外"]', '15 km', '["捷運-永和站", "捷運-士林站", "高鐵-台南站", "捷運-桃園站", "捷運-大安站"]', 'https://tix-get-go.kktix.cc/events/perselive2024', '新界西沙海映路9號西沙GO PARK'), 
('29fd2a52-3104-4460-acea-f336949d12c6', '2024 YUGYEOM TOUR [TRUSTY] IN HONG KONG', '2024-10-19 20:00:00', 'AXA安盛創夢館', 'https://t.kfs.io/upload_images/210673/1200x630px_medium.jpg', '["演唱會", "男歌手", "世界巡迴", "國外"]', '27 km', '["高鐵-台北站", "高鐵-高雄站", "高鐵-彰化站", "捷運-內湖站", "捷運-松山站", "捷運-台北植物園站", "捷運-南港站", "捷運-永春站"]', 'https://tix-get-go.kktix.cc/events/yugyeomhk2024', '新界西沙海映路9號西沙GO PARK'), 
('33fe75fd-0eaf-43ba-b9ba-dcbe18d63f53', 'Tilly Birds Live in Taipei 2024', '2024-08-29 20:00:00', 'Zepp New Taipei', 'https://t.kfs.io/upload_images/208003/KKTIX_TILLYBIRDS2024TOUR_TPE__1200x630_medium.jpg', '["演唱會", "樂團", "泰國", "首度登台"]', '15 km', '["高鐵-桃園站", "高鐵-雲林站", "捷運-士林站", "捷運-三民站", "捷運-板橋站", "高鐵-新竹站", "高鐵-嘉義站"]', 'https://binliveco.kktix.cc/events/5bcdb312', '新北市新莊區新北大道四段3號'), 
('385e5369-8408-40d8-a681-93cd66e8d6c0', '2024 斯巴達障礙跑競賽三色 週末(新北場) -漫威復仇者聯盟主題賽', '2024-10-19 07:00:00', '新北市平溪區龍華書院', 'https://t.kfs.io/upload_images/203124/0517%E6%BC%AB%E5%A8%81%E7%9B%B8%E9%97%9CBanner1200X630_medium.png', '["競賽", "復仇者聯盟", "團體優惠"]', '15 km', '["捷運-台北101/世貿站", "捷運-士林站", "捷運-中正紀念堂站", "捷運-桃園站", "捷運-龍山寺站", "捷運-中和站", "捷運-西門站"]', 'https://kwankwan.kktix.cc/events/rw3t5e', '新北市平溪區柴橋坑88號'), 
('461c6b3f-9f6b-409c-87d9-566f4ac31d91', '2024 WNBF TAIWAN TW9國際自然健美邀請賽', '2024-10-05 10:00:00', '台北大直典華宴會廳', 'https://t.kfs.io/upload_images/206597/%E4%B8%BB%E8%A6%96%E8%A6%BA_medium.jpg', '["競賽", "健美"]', '40 km', '["捷運-南港站", "高鐵-嘉義站", "捷運-中正紀念堂站", "捷運-板橋站", "捷運-台北101/世貿站", "捷運-松山站", "捷運-西門站", "捷運-永春站"]', 'https://wnbftaiwan.kktix.cc/events/09b561ab', '台北市中山區植福路8號'), 
('47501723-3a59-4bff-a640-389c6c1853c5', '2024 Gareth. T 湯令山 “T-Time” 台北站', '2024-09-20 20:00:00', 'NUZONE 展演空間', 'https://t.kfs.io/upload_images/205060/%E8%8D%B7%E7%B1%B3%E6%96%AF2024-%E6%B9%AF%E4%BB%A4%E5%B1%B1%E8%8C%B6%E6%9C%83-KKTIX-1200_x_630_medium.png', '["演唱會", "男歌手", "世界巡迴"]', '30 km', '["捷運-中和站", "高鐵-台北站", "捷運-龍山寺站", "捷運-台北植物園站", "高鐵-雲林站", "高鐵-彰化站", "捷運-淡水站", "捷運-三民站"]', 'https://spaceport.kktix.cc/events/5b26fa2a', '台北市大安區市民大道三段198號2樓'), 
('562ed423-85c0-4204-ab80-bc06aae1d64c', '直到意識消失之前－謎路人夏季小巡迴之基隆加場', '2024-09-22 18:00:00', 'B’IN LIVE SPACE – KEELUNG', 'https://t.kfs.io/upload_images/210729/KKTIX_WOPMiniTour2024_KL__1200x630_medium.jpg', '["演唱會", "樂團"]', '15 km', '["捷運-永和站", "高鐵-高雄站", "高鐵-新竹站", "捷運-士林站", "高鐵-台中站", "捷運-台北車站", "捷運-桃園站", "捷運-大安站"]', 'https://binliveco.kktix.cc/events/ejutl', '基隆市中正區中正路103號3樓'), 
('6692055d-d6b3-4b99-a3a1-91ebfe6d8900', '2024 ASC2NT‘EXPECTING TOMORROW’', '2024-10-13 10:00:00', 'WESTAR', 'https://t.kfs.io/upload_images/209800/%E6%A9%AB_medium.jpg', '["演唱會", "樂團"]', '15 km', '["捷運-內湖站", "捷運-忠孝敦化站", "高鐵-桃園站", "捷運-士林站", "高鐵-台南站"]', 'https://threepatw.kktix.cc/events/14sfsh', '台北市萬華區漢中街116號8樓'), 
('6f1e652c-97a6-46c4-b120-78962612dd48', '2024 TRENDY TAIPEI 潮臺北 - JAM JAM ASIA', '2024-09-07 13:00:00', '臺北流行音樂中心', 'https://t.kfs.io/upload_images/209806/JJA%E6%B4%BB%E5%8B%95%E4%B8%BB%E8%A6%96%E8%A6%BA_resize.ai_%E7%9A%84%E5%89%AF%E6%9C%AC_%E6%A9%AB_%E6%9C%89%E7%A5%A8_medium.jpg', '["演唱會", "樂團", "歌手"]', '15 km', '["捷運-永和站", "高鐵-高雄站", "捷運-忠孝敦化站", "捷運-台北植物園站", "捷運-松山站", "捷運-中和站", "捷運-三民站", "捷運-南港站"]', 'https://taipeimusiccenter.kktix.cc/events/05b91fc6', '臺北市南港區市民大道8段99號'), 
('73108a17-38f6-4940-8eb6-2914f670ff01', '《 FOF拳願明星格鬥賽 第21屆 台中場 》', '2024-10-12 18:00:00', '葳格國際會議中心 ', 'https://t.kfs.io/upload_images/210584/%E6%8B%B3%E9%A1%98-A027L_1080_KKTIX%E7%A4%BA%E6%84%8F%E5%9C%96v2_medium.jpg', '["拳擊", "競賽", "格鬥", "孫安佐"]', '70 km', '["捷運-台北101/世貿站", "高鐵-台南站", "捷運-台北車站", "捷運-士林站", "捷運-板橋站", "捷運-永春站", "捷運-桃園站", "捷運-西門站"]', 'https://fof.kktix.cc/events/fof21', '台中市北屯區軍福十八路328號'), 
('7615e7ee-5568-49c6-9a29-9996bf3371cb', 'NELL TAIWAN CONCERT 2024 ''Our Eutopia''', '2024-11-09 18:30:00', 'Legacy Taipei', 'https://t.kfs.io/upload_images/209030/_Ticket_Site__Main_KV_02_1200x630_TAIWAN_medium.jpg', '["演唱會", "樂團", "韓國"]', '15 km', '["高鐵-台中站", "捷運-龍山寺站", "高鐵-新竹站", "高鐵-台北站", "高鐵-彰化站", "捷運-中正紀念堂站", "捷運-大安站", "高鐵-嘉義站"]', 'https://chau-chau.kktix.cc/events/nell', '台北市中正區八德路一段一號'), 
('76b7e155-d8c0-4cdc-961b-9407e7ee9012', 'HITORI-ESCAPE "ASIA" TOUR 2024 10-NEN-SAI', '2024-09-28 18:00:00', 'THE WALL LIVEHOUSE', 'https://t.kfs.io/upload_images/203970/kktix-hitorie-1200x630_medium.jpg', '["演唱會", "樂團"]', '15 km', '["捷運-淡水站", "高鐵-雲林站", "高鐵-桃園站", "捷運-士林站", "捷運-內湖站"]', 'https://gutspromotion.kktix.cc/events/4d62d604', '臺北市文山區羅斯福路四段200號'), 
('7ac5186c-e517-4ccd-8321-b84f62f420ca', '炎亞綸「炎宇宙@aayan1120」2024香港演唱會', '2024-09-15 19:30:00', 'AXA安盛創夢館', 'https://t.kfs.io/upload_images/209777/4_0915%E7%82%8E%E4%BA%9A%E7%BA%B6%E9%A6%99%E6%B8%AF%E6%BC%94%E5%94%B1%E4%BC%9A_1200x630_0813_medium.jpg', '["演唱會", "男歌手", "世界巡迴", "國外"]', '15 km', '["捷運-士林站", "捷運-三民站", "捷運-台北車站", "捷運-龍山寺站", "高鐵-彰化站", "高鐵-高雄站", "高鐵-桃園站", "捷運-板橋站"]', 'https://tix-get-go.kktix.cc/events/aaronyanhk2024', '新界西沙海映路9號西沙GO PARK'), 
('7dfc977c-610a-11ef-a28b-00155d42f2f2', '”Life After Small Town“ Asen World Tour 2024／25  台北站', '2025-04-06 20:00:00', 'Zepp New Taipei', 'https://t.kfs.io/upload_images/209197/1200630%E4%B8%BB%E8%A6%96%E8%A6%BA__1__large.jpg', '["演唱會", "男歌手", "世界巡迴"]', '10 km', '["捷運-忠孝敦化站", "捷運-永春站", "高鐵-嘉義站", "捷運-永和站", "捷運-台北植物園站", "捷運-台北101/世貿站", "高鐵-新竹站", "捷運-士林站"]', 'https://dometw.kktix.cc/events/7a5c237a?_gl=1*skf2o1*_ga*MTEwNjY2MzM2OS4xNzI0MDY3MTM5*_ga_SYRTJY65JB*MTcyNDM4Njc0Mi4yLjEuMTcyNDM4Njc2OS4zMy4wLjA.', '新北市新莊區新北大道四段3號8樓'), 
('83d23bcd-3a7a-480f-baf8-33a37244ccb1', '舞思愛 2024說走就走巡迴演唱會 基隆場', '2024-10-06 19:00:00', 'B’IN LIVE SPACE – KEELUNG 3樓', 'https://t.kfs.io/upload_images/209220/KKTIX_UsayKawlu_1200x630_medium.jpg', '["演唱會", "女歌手"]', '15 km', '["捷運-內湖站", "高鐵-雲林站", "捷運-西門站", "捷運-大安站", "捷運-桃園站", "捷運-中和站", "高鐵-台南站", "捷運-淡水站"]', 'https://binliveco.kktix.cc/events/3137ce9e', '基隆市中正區中正路103號3樓'), 
('86e31858-03c9-4d22-8d02-eab5bf961393', '2024 TAEMIN WORLD TOUR [Ephemeral Gaze] IN HONG KONG', '2024-10-05 20:00:00', '亞洲國際博覽館 10號展館', 'https://t.kfs.io/upload_images/210178/2024_TAEMIN_WORLD_TOUR_in_HK_Ticketing_KKTIX_1200x630px_medium.jpg', '["展覽", "香港", "國外"]', '15 km', '["高鐵-台北站", "捷運-松山站", "捷運-中正紀念堂站", "高鐵-台中站", "捷運-南港站"]', 'https://asiaworld-expo.kktix.cc/events/taemin-2024', '香港大嶼山香港國際機場亞洲國際博覽館'), 
('91a89ff8-c62d-40f5-9c9b-cc409beb1a0d', 'my little airport 二十周年 今晚可能好大風 LIVE 2024', '2024-11-15 20:15:00', '安盛 x 竹翠公園', 'https://t.kfs.io/upload_images/207254/1200x630__1__medium.jpg', '["演唱會", "樂團"]', '15 km', '["捷運-板橋站", "捷運-龍山寺站", "高鐵-桃園站", "捷運-台北車站", "高鐵-台南站", "捷運-士林站", "捷運-內湖站", "高鐵-台中站"]', 'https://tix-get-go.kktix.cc/events/mla-2024', '臺北市松山區長安東路2段225號C棟3樓'), 
('a73e704a-c3cb-4651-80e9-6f235c444360', '2024 (G)I-DLE WORLD TOUR〔iDOL〕IN TAIPEI', '2024-10-04 19:30:00', '台北小巨蛋', 'https://t.kfs.io/upload_images/210162/%E6%A9%AB_medium.jpg', '["演唱會", "樂團", "韓國"]', '15 km', '["捷運-桃園站", "捷運-淡水站", "捷運-台北植物園站", "捷運-永和站", "捷運-中正紀念堂站", "高鐵-嘉義站", "高鐵-台北站", "捷運-中和站"]', 'https://kklivetw.kktix.cc/events/a8249618', '台北市松山區南京東路四段2號'), 
('b2969be1-4bd5-4184-af24-057716dc7c68', 'Bodyslam Sunny Side Up World Tour 2024', '2024-09-16 18:30:00', 'Zepp New Taipei', 'https://t.kfs.io/upload_images/205088/1200x630_medium.jpg', '["演唱會", "樂團"]', '15 km', '["捷運-忠孝敦化站", "捷運-三民站", "捷運-士林站", "高鐵-雲林站", "高鐵-彰化站", "高鐵-新竹站", "高鐵-高雄站", "捷運-大安站"]', 'https://nac.kktix.cc/events/fd234386', '新北市新莊區新北大道四段3號'), 
('b6835d17-6443-4bfb-a75f-b78d765bc84a', 'Let’s Camping 來去露營吧音樂會', '2024-09-28 10:00:00', '苗栗飛牛牧場', 'https://t.kfs.io/upload_images/209538/%E4%B8%BB%E8%A6%96%E8%A6%BAbanner_medium.jpg', '["演唱會", "樂團"]', '10 km', '["捷運-南港站", "捷運-西門站", "捷運-永春站", "捷運-松山站", "捷運-台北101/世貿站"]', 'https://walk-game.kktix.cc/events/2e43ba04', '苗栗縣通霄鎮166號'), 
('b7fede0f-b0e2-4ee5-bc0c-10deb4e2e462', 'Engfa Waraha REBORN Hong Kong', '2024-10-27 17:00:00', 'AXA安盛創夢館', 'https://t.kfs.io/upload_images/209992/1200x630-2_medium.jpg', '["演唱會", "女歌手", "香港", "國外"]', '25 km', '["捷運-台北植物園站", "高鐵-台北站", "高鐵-嘉義站", "捷運-士林站", "捷運-內湖站"]', 'https://tix-get-go.kktix.cc/events/engfawaraha-hk-2024', '新界西沙海映路9號西沙GO PARK'), 
('c8936b56-fc9b-47af-8f84-d388cadeaf91', 'LOUDNESS 2024 世界巡迴台北演唱會', '2024-09-12 18:30:00', '杰克文創', 'https://t.kfs.io/upload_images/203461/LD2024_1200x630_medium.png', '["演唱會", "樂團"]', '30 km', '["高鐵-台南站", "高鐵-桃園站", "捷運-西門站", "高鐵-新竹站", "高鐵-台中站", "捷運-龍山寺站", "捷運-永春站", "捷運-永和站"]', 'https://rockempire.kktix.cc/events/b2eda078', '台北市萬華區昆明街76號B1'), 
('cb13a4b8-b87e-4f57-9021-7e0853ce3f7a', 'eill BLUE ROSE SHOW 2024 in TAIPEI', '2024-11-03 17:00:00', 'Hana Space花漾展演空間', 'https://t.kfs.io/upload_images/210542/eill-KKTIX_1200x630px_medium.jpg', '["演唱會", "女歌手"]', '15 km', '["捷運-松山站", "高鐵-高雄站", "捷運-三民站", "捷運-南港站", "高鐵-彰化站", "捷運-中和站", "捷運-中正紀念堂站", "捷運-忠孝敦化站"]', 'https://welcome-music.kktix.cc/events/9708da19', '台北市中正區仁愛路一段17號10樓'), 
('ce818cbf-cc0e-4ea1-9fd8-ccb7074c06e9', '92914 2024 Live in Taipei', '2024-09-22 18:00:00', 'Zepp New Taipei', 'https://t.kfs.io/upload_images/204812/%E6%9C%AA%E5%91%BD%E5%90%8D%E8%A8%AD%E8%A8%88_medium.png', '["演唱會", "樂團", "韓國"]', '15 km', '["捷運-板橋站", "捷運-淡水站", "捷運-台北101/世貿站", "捷運-桃園站", "高鐵-雲林站", "捷運-大安站", "捷運-士林站", "捷運-台北車站"]', 'https://chau-chau.kktix.cc/events/92914-2024', '新北市新莊區新北大道四段3號');
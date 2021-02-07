CREATE TABLE Tours (
    tourName varchar(100),
    stopName varchar(50) NOT NULL,
    stopId int NOT NULL
);
CREATE TABLE StopInfo (
    stopName varchar(50) NOT NULL,
    pointOfInterest varchar(50) NOT NULL,
    pointInfo varchar(99999),
    coords VARCHAR(90)
);

INSERT INTO Tours VALUES ('FullCampusTour', 'Jacobson Hall', 1);
INSERT INTO Tours VALUES ('FullCampusTour', 'Jacobson Phone Booth', 2);
INSERT INTO Tours VALUES ('FullCampusTour', 'PE-ET Elm in front of Evans Hall', 3);
INSERT INTO Tours VALUES ('FullCampusTour', 'Clock Tower outside Library', 4);
INSERT INTO Tours VALUES ('FullCampusTour', 'Bizzell Memorial Library', 5);
INSERT INTO Tours VALUES ('FullCampusTour', 'The South Oval', 6);
INSERT INTO Tours VALUES ('FullCampusTour', 'Student Housing', 7);
INSERT INTO Tours VALUES ('FullCampusTour', 'Dining Areas', 8);
INSERT INTO Tours VALUES ('FullCampusTour', 'Inside Sarkeys Fitness main area', 9);
INSERT INTO Tours VALUES ('FullCampusTour', 'Oklahoma Memorial Union', 10);
INSERT INTO StopInfo VALUES ('Jacobson Hall', 'Visitor Center', 'The building we are currently outside of is Jacobson Hall Visitor Center. This historic building was constructed in 1920 and was named after our first Director of the School of Art. Today, Jacobson Hall serves as the Office of Admissions and Recruitment. Each year, we see a little over 140,000 visitors for campus tours, events, and other happenings across campus through our office alone.','35.21135733770704,-97.44482166931476');
INSERT INTO StopInfo VALUES ('Jacobson Phone Booth', 'Parrington Oval', 'This oval is a little more historical in terms of content but an area that students frequent in the Spring, reading books under trees, hosting events, etc. - The formal name for North Oval is named “Parrington Oval.” Vernon Parrington founded our English department. The two arches you see to the North symbolize welcoming gates to the learning frontier. These distinctively styled arches were gifts of the classes of 1915 and 1917 and you’ll find other similar arches marking the main entrances to campus. ','35.21038856198748,-97.44545201806594');
INSERT INTO StopInfo VALUES ('Jacobson Phone Booth', 'Boyd House','Across Boyd street, you will see a white house known as Boyd House which was constructed by our first President, David Ross Boyd in 1906. Built before statehood, it continues to serve as the President’s place of residence including our current president.','35.211783729563415,-97.44608135854497');
INSERT INTO StopInfo VALUES ('PE-ET Elm in front of Evans Hall', 'Spoonholder', 'The Spoonholder was originally the gift of the Class of 1910. The legend of the Spoonholder, is that any couple who kisses in the spoonholder is destined to get married. I myself have avoided this area throughout my time here.','35.20981361534163,-97.44569562365544' );
INSERT INTO StopInfo VALUES ('PE-ET Elm in front of Evans Hall', 'Evans Hall', 'We are now stopped at Evans Hall. The Cherokee Gothic building you see before you was built in 1912 of bricks filled with sand in an effort to make the building absolutely fireproof. You can still see the footprint of University Hall in the stone that lines the gardens surrounding Evans Hall. Today, this building continues to house the President and Provost’s Offices. The Office of Diversity & Inclusion can also be found on the second floor of Evans Hall.','35.20872323239795,-97.44569183155899');
INSERT INTO StopInfo VALUES ('Clock Tower outside Library', 'Clock Tower', 'Before we head into the library, I wanted to point out the obvious - the E.T. DUNLOP CLOCK TOWER ANDLIBRARY PLAZA. The clock tower is named for E.T. Dunlop, longtime Chancellor for Higher Education.Rumor across campus has it that if a student walks underneath the clock tower and looks up, he or she will not graduate in 4 years.','35.20811184266057,-97.44668883650361');
INSERT INTO StopInfo VALUES ('Bizzell Memorial Library', 'Circulation Desk', 'We are standing in front of the Circulation Desk where students can check out books, laptops, iPads, scientific/graphing calculators, bike locks, and a variety of cell phone chargers. Also, this desk is where students can use Textbooks-on-Reserve. Textbooks for many classes are available here and can be checked out for 3 hours at a time. Some students use this service instead of purchasing books that are particularly expensive.','35.20820086920812,-97.44569996039469');
INSERT INTO StopInfo VALUES ('Bizzell Memorial Library', 'HCLC', 'The Peggy V. Helmerich Collaborative Learning Center (HCLC): Our most popular group study space, the HCLC features group study rooms that can be reserved, audio recording studios, and a variety of seating options. Located within the HCLC, the Bookmark Café serves Starbucks coffee and a selection of pastries and sandwiches for a snack during your study break. Skip the line by using the Tapingo app to order from your phone and get a text when it’s ready to pick up.','35.20820086920812,-97.44569996039469');
INSERT INTO StopInfo VALUES ('Bizzell Memorial Library', 'Outside Innovation @ The Edge', 'Innovation @ the EDGE: is a flexible experimentation space where students can use 3D printers, work with microelectronic kits and virtual reality workstations. Students can attend weekly workshops or simply hang out in the space - peer tinkerers and campus technology experts will be available to help students develop their ideas and augment their scholarship.','35.20820086920812,-97.44569996039469');
INSERT INTO StopInfo VALUES ('Bizzell Memorial Library', 'Great Reading Room', ': Before we head into this space, please note that it is the quietest room on campus. To respect the students’ studies, please stay quiet. The Great Reading Room was built in 1929 and houses OU theses and dissertations. The library’s most popular quiet study area, the GRR has access to OU Wi-Fi and electrical outlets at each table. According to Architectural Digest, just this past May, this library was voted as #1 in terms of design and architecture. In 2001, the building became listed on the National Historic Landmark.','35.20820086920812,-97.44569996039469');
INSERT INTO StopInfo VALUES ('The South Oval', 'The South Oval', 'Welcome to South Oval! This is the main HUB of where most students have classes. It gets pretty busy so stay on the left side of the walk as we proceed through it. Those bikes are known to move quickly racing to class.','35.20575714116135,-97.44543406039469');
INSERT INTO StopInfo VALUES ('The South Oval', 'Scholars Walk', 'You may have noticed walking this way, names engraved on plaques by the sidewalk. This is known as the SCHOLARS WALK, which honors the University’s national scholarship winners. The Scholars Walk is also a gift in memory of Edith Kinney Gaylord, who in her own life was committed to the highest standards of excellence. Constructed in the summer of 2014, the OU Scholars Walk was created to honor the names of all OU undergraduate and graduate students who have been honored with the most prestigious national and international academic scholarships at the University of Oklahoma since its founding in 1890. ','35.20702953136085,-97.44545201836007');
INSERT INTO StopInfo VALUES ('Student Housing', 'Cate Center', 'The first residence hall you meet after crossing Lindsey Street is CATE CENTER. First occupied in 1949 as a freshman women’s dormitory. Today, our Cate facilities serve as home to housing offices, ROTC program offices, the Academic Advising Resource Center, Economics, English, and African-American Studies Departments, and United World College staff, academic life coaches, the honor’s college and the economics department. There is also a post office here that students frequent for mailing or receiving packages!','35.2036814305427,-97.44556696042959');
INSERT INTO StopInfo VALUES ('Student Housing', 'David L. Boren Hall', 'Boren Hall, residents have a room with a community-style bathroom on the hall. This bathroom is at the end of the hallway and is shared by all residents on the floor – approximately 10-16 students. The bathroom is cleaned daily by OU housing. DLB Hall is not required for Honor College students, there are also Honors floors in the towers. ','35.20331467371672,-97.44500958241078');
INSERT INTO StopInfo VALUES ('Student Housing', 'Walker Tower','We are now in Walker Tower, one of 3 towers that houses most our first-time freshman on campus live. I will take through the showrooms and then we will stop back out here for any questions regarding the on-campus living experience. In Adams, Couch & Walker Center, residents have a suite-style room. Students share a semi-private bathroom with their roommate and suitemates. Residents also share the responsibility of cleaning their own bathrooms','35.202090811130695,-97.44464008151452');
INSERT INTO StopInfo VALUES ('Dining Areas', 'Couch Restaurants', 'Completely renovated in 2009, Couch Restaurants or lovingly, “the Caf”, is now the ultimate, all-you-care-to-eat, community dining experience and operates under the name Couch Restaurants. Upon entering Couch Restaurants, by using one meal from your meal plan, you have access to 14 restaurant themes that feature made-to-order stir-fry, gourmet hamburgers, traditional Mediterranean entrees, customized pasta dishes, an endless gourmet dessert bar, bold vegan and vegetarian dishes, a deli and salad bar and the World’s only all-you-can-eat Chick-fil-A','35.200283321166275,-97.44587410272362');
INSERT INTO StopInfo VALUES ('Inside Sarkeys Fitness main area','Sarkeys Fitness Center', 'The Sarkeys Fitness Center (SFC) at the S. J. Sarkeys Complex opened in the summer of 1981 to give students a home for intramural sports and fitness.  In 2003, the SFC received an addition and renovation to create a 150,000 square-foot indoor facility for a variety of programs, services, and equipment to meet the recreational and fitness needs of the OU community.','35.20162851725215,-97.44290506039489');
INSERT INTO StopInfo VALUES ('Inside Sarkeys Fitness main area','Murray Case Sells Swim Complex', 'The Murray Case Sells Swim Complex consists of an indoor and outdoor pool. The indoor pool is an eight lane 25 yard lap pool with a 13 foot diving well with one 1-meter springboard. The outdoor facility consists of an Olympic size pool 50 meters by 25 yards with a 13 foot diving well and two 1-meter spring boards as well as a kiddy pool. The outdoor lap pool ranges in depths from 3’6” to 5’6”, the kiddy pool ranges from one foot to two feet, and the diving well ranges from 9’ to 13’. The indoor lap pool ranges from 4’ to 5’6” deep and the indoor diving well ranges from 9’ to 13’.','35.19771412570338,-97.443992046902');
INSERT INTO StopInfo VALUES ('Oklahoma Memorial Union', 'Oklahoma Memorial Union', 'The Oklahoma Memorial Union, also known as the heart of campus, is a great place for students to connect. Throughout its history, the Oklahoma Memorial Union has served as a meeting place for students, faculty, parents, and alumni, and has been an important center of campus activity. Known as the living room of the university, it was built in 1928 as a memorial, along with the Gaylord Family Oklahoma Memorial Stadium, to all the students of OU who lost their lives in World War I.','35.209269602661735,-97.44423044505206');
INSERT INTO StopInfo VALUES ('Oklahoma Memorial Union', 'Stuart Landing', 'A floor above us, we have our Career Services Center. All of us want that J.O.B. so be sure you make your way up there before senior year is out. They will do free mock interviews, offer YouTube workshops, resume + handshake critiques and they even host multiple career fairs throughout your time here. On their website, each college will feature advice on how to get a job within their programs offered!','35.209269602661735,-97.44423044505206');
INSERT INTO StopInfo VALUES ('Oklahoma Memorial Union', 'Schooner Room', 'The Schooner was introduced in the fall of 1964 and become the official mascot of the Oklahoma Sooners in 1980. Pulled by two ponies on game day and is a great symbol of our university. As you can see, there are booths throughout this area that invite a much quieter area to enjoy lunch or study. This room is modeled after an Oxford pub and we wanted certain rooms on campus to mimic the feel of that intellectual ground.','35.209269602661735,-97.44423044505206');

SELECT Tours.tourName, Tours.stopName, Tours.stopId, StopInfo.pointOfInterest, StopInfo.pointInfo, StopInfo.coords  From Tours 
INNER JOIN StopInfo ON Tours.stopName = StopInfo.stopName
WHERE Tours.tourName = 'FullCampusTour'
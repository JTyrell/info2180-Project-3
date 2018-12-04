--
-- PUT COMMENTS ON THE CHANGES MADE PLEASE SO EVERYBODY CAN OVERS WHATS TAKING PLACE IN THE CODE--
--

CREATE DATABASE HireMe;

USE HireMe;


--

-- Table structure for table `users`

--
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (

  `user_id` int(11) NOT NULL auto_increment,

  `firstname` char(35) NOT NULL default '',
  
  `lastname` char(35) NOT NULL default '',

  `e_mail` char(20) NOT NULL default '',
  
  `telephone` char(35) NOT NULL default '',
  
  `password` char(64) NOT NULL default '',
  
  `date_joined` TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,

  PRIMARY KEY  (`user_id`)

) ;

INSERT INTO users (user_id, firstname, lastname, e_mail, telephone, password, date_joined) VALUES (1, 'Rijkaard', 'Harrison', 'admin@hireme.com', '876-123-4567', md5('password123'), DATE('2018/11/28'));
INSERT INTO users (user_id, firstname, lastname, e_mail, telephone, password, date_joined) VALUES (2, 'Chantay', 'Whyte', 'cwt@test.com', '876-258-3698', md5('password456'), DATE('2018/11/28'));
INSERT INTO users (user_id, firstname, lastname, e_mail, telephone, password, date_joined) VALUES (3, 'Jovoun', 'Tyrell', 'jjt@test.com', '876-159-1591', md5('password789'), DATE('2018/11/28'));



--

-- Table structure for table `Jobs`

--

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (

  `job_id` int(11) NOT NULL auto_increment,

  `job_title` char(35) NOT NULL default '',
  
  `job_description` char(35) NOT NULL default '',

  `category` char(35) NOT NULL default '',
  
  `company_name` char(35) NOT NULL default '',

  `company_location` char(20) NOT NULL default '',

  `date_posted` TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,

  PRIMARY KEY  (`job_id`)

);


--

-- Table structure for table `jobs applied for`

--

DROP TABLE IF EXISTS `JobsAppliedFor`;

CREATE TABLE `JobsAppliedFor` (

  `id` int(11) NOT NULL auto_increment,

  `job_id` char(35) NOT NULL default '',
  
  `user_id` char(35) NOT NULL default '',
  
  `date_applied` TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,

  PRIMARY KEY  (`id`)

);


--
-- create table for available jobs
--

DROP TABLE IF EXISTS `availJobs`;

CREATE TABLE `availJobs` (

  `j_id` int(11) NOT NULL auto_increment,

  `company` char(35) NOT NULL default '',

  `job_title` char(35) NOT NULL default '',
  
  `category` char(35) NOT NULL default '',

  `date_avail` TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,

  PRIMARY KEY  (`j_id`)

) ;

INSERT INTO availJobs (j_id, company,job_title, category, date_avail) VALUES (1, 'Jamaica Gleaner','Product Marketing Manager','Sales and Marketing', DATE("2018/11/03"));
INSERT INTO availJobs (j_id, company,job_title, category, date_avail) VALUES (2, 'UWI-MITS','Software Engineer', 'Programming', DATE("2018/11/02"));
INSERT INTO availJobs (j_id, company,job_title, category, date_avail) VALUES (3, 'NCB','Business Analyst-Scrum Master','Business and Management', DATE("2018/11/01"));
INSERT INTO availJobs (j_id, company,job_title, category, date_avail) VALUES (4, 'Jamaica Yellow Pages','UX/UI Designer','Design', DATE("2018/10/20"));
INSERT INTO availJobs (j_id, company,job_title, category, date_avail) VALUES (5, 'UWI-Bursary','Director customer support', 'Customer Support', DATE("2018/10/20"));
INSERT INTO availJobs (j_id, company,job_title, category, date_avail) VALUES (6, 'Sagicor Bank','Senior Systems Engineer', 'DevOps and Sysadmin', DATE("2018/10/20"));
INSERT INTO availJobs (j_id, company,job_title, category, date_avail) VALUES (7, 'Base Camp','Software Engineer', 'Programming', DATE("2018/10/20"));


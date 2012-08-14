-- Database/Table creation for CD Webiste

-- Database name cd_database001

-- Full english word has been used on purpose... why make it hard to read OR code!

-- Temp User Table - Used to hold the data when a user first requests an account.  User clicks link in email
-- with 'user_confirm_code' attached to then migrate data to users table.

-- temp_user_num			- Used for reference (how many are we seeing?)
-- user_confirm_code		- User creation authentication
-- user_firstname			- First Name (will be moved to Reg User Table)
-- user_lastname			- Last Name  (will be moved to Reg User Table)
-- user_password			- Password   (will be moved to Reg User Table)
-- user_creation_date		- Creation Date (will be moved to Reg User Table)
-- user_validation_date		- Validation Date (will be moved to Reg User Table)
-- user_validated			- Used for reference (cron will remove all old)
-- Primary/Unique to allow fast results 
-- Unique set to not allow mulitple of same email address on table

CREATE TABLE temp_user_table001 (
	temp_user_num int(11) NOT NULL auto_increment,
	user_confirm_code varchar(65) NOT NULL default ' ',
	user_firstname varchar(32) NOT NULL default ' ',
	user_lastname varchar(32) NOT NULL default ' ',
	user_email varchar(65) NOT NULL default ' ',
	user_password varchar(255) NOT NULL default ' ',
	user_creation_date datetime NOT NULL default '0000-00-00 00:00:00',
	user_validation_date datetime NOT NULL default '0000-00-00 00:00:00',
	user_validated SET('Y', 'N') NOT NULL default 'N',
	PRIMARY KEY (temp_user_num),
	KEY (user_confirm_code),
	UNIQUE (user_email)
) ENGINE=Innodb DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;


-- User Table - Used to hold users secure data information
-- user_id_num					- Used for reference (how many have registered?)
-- user_firstname				- First Name
-- user_lastname				- Last Name
-- user_id						- ID
-- user_password				- Email Address
-- user_password				- Password
-- last_login					- Last login
-- user_creation_date 			- creation date

CREATE TABLE user_table001 (
    user_id_num int(11) NOT NULL auto_increment,
    user_firstname varchar(32) NOT NULL default ' ',
    user_lastname varchar(32) NOT NULL default ' ',
    user_id varchar(32) NOT NULL default ' ',
    user_email varchar(65) NOT NULL default ' ',
    user_password varchar(255) NOT NULL default ' ',
    last_login datetime NOT NULL default '0000-00-00 00:00:00',
    user_creation_date datetime NOT NULL default '0000-00-00 00:00:00',
    PRIMARY KEY (user_id_num),
    UNIQUE (user_email)
)  ENGINE=Innodb DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE 'review_table001' (
	'review_id' int(11) NOT NULL auto_increment,
	'user_id_num' int(11) NOT NULL default ' ',
	'review_date' datetime NOT NULL default '0000-00-00 00:00:00',
	'user_firstname' varchar(65) NOT NULL default ' ',
	'user_lastname' varchar(65) NOT NULL default ' ',
	'review_body' longtext NOT NULL default ' ',
	PRIMARY KEY ('review_id')
) ENGINE=Innodb DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;


-- not so sure about these tables... 
CREATE TABLE 'auth' (
	'username' varchar(13) NOT NULL default ' ',
	'password' varchar(128) NOT NULL default ' ',
	'loginattempt' int(11) NOT NULL default ' ',
	PRIMARY KEY ('username')
) ENGINE=Innodb DEFAULT CHARSET=utf8;

CREATE TABLE 'ipcheck' (
	'loggedip' varchar(15) NOT NULL default,
	'failedattempts' int(11) NOT NULL default ' ',
	PRIMARY KEY ('loggedip')
) ENGINE=Innodb DEFAULT CHARSET=utf8;

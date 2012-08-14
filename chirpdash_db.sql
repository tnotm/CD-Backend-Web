Database cd_users_db0001

CREATE TABLE `tmp_usr_tbl001` (
	'tmp_usr_num' int(11) NOT NULL auto_increment,
	`usr_confirm_code` varchar(65) NOT NULL default '',
	`usr_fname` varchar(32) NOT NULL default '',
	`usr_lname` varchar(32) NOT NULL default '',
	`usr_email` varchar(65) NOT NULL default '',
	`usr_pswd` varchar(255) NOT NULL default '',
	'usr_creation_dt' datetime NOT NULL default '0000-00-00 00:00:00',
	PRIMARY KEY ('usr_confirm_code')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `reg_usr_tbl001` (
	`usr_id_num` int(11) NOT NULL auto_increment,
	`usr_fname` varchar(32) NOT NULL default '',
	`usr_lname` varchar(32) NOT NULL default '',
	'usr_id' varchar(32) NOT NULL default '',
	`usr_email` varchar(65) NOT NULL default '',
	`usr_pswd` varchar(255) NOT NULL default '',
	'last_login' datetime NOT NULL default '0000-00-00 00:00:00',
	'usr_creation_dt' datetime NOT NULL default '0000-00-00 00:00:00',
	PRIMARY KEY (`usr_id_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `cd_rev_tbl001` (
	`revw_id` int(11) NOT NULL auto_increment,
	`usr_id_num` int(11) NOT NULL default '',
	`revw_date` datetime NOT NULL default '0000-00-00 00:00:00',
	`revw_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
	`usr_fname` varchar(65) NOT NULL default '',
	`usr_lname` varchar(65) NOT NULL default '',
	`shw_mov_title` varchar(65) NOT NULL default '',
	`cd_review` longtext NOT NULL default '',
	PRIMARY KEY (`revw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `auth` (
	`username` varchar(13) NOT NULL default '',
	`password` varchar(128) NOT NULL default '',
	`loginattempt` int(11) NOT NULL default '',
	PRIMARY KEY ('username')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ipcheck` (
	`loggedip` varchar(15) NOT NULL default,
	`failedattempts` int(11) NOT NULL default '',
	PRIMARY KEY (`loggedip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
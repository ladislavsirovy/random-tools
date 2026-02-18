-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 04, 2026 at 09:02 AM
-- Server version: 8.0.42-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `INFORMATION_SCHEMA`
--

-- --------------------------------------------------------

--
-- Table structure for table `TABLES`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `TABLES`  AS  select `cat`.`name` AS `TABLE_CATALOG`,`sch`.`name` AS `TABLE_SCHEMA`,`tbl`.`name` AS `TABLE_NAME`,`tbl`.`type` AS `TABLE_TYPE`,if((`tbl`.`type` = 'BASE TABLE'),`tbl`.`engine`,NULL) AS `ENGINE`,if((`tbl`.`type` = 'VIEW'),NULL,10) AS `VERSION`,`tbl`.`row_format` AS `ROW_FORMAT`,if((`tbl`.`type` = 'VIEW'),NULL,internal_table_rows(`sch`.`name`,`tbl`.`name`,if((`tbl`.`partition_type` is null),`tbl`.`engine`,''),`tbl`.`se_private_id`,(`tbl`.`hidden` <> 'Visible'),`ts`.`se_private_data`,coalesce(`stat`.`table_rows`,0),coalesce(cast(`stat`.`cached_time` as unsigned),0))) AS `TABLE_ROWS`,if((`tbl`.`type` = 'VIEW'),NULL,internal_avg_row_length(`sch`.`name`,`tbl`.`name`,if((`tbl`.`partition_type` is null),`tbl`.`engine`,''),`tbl`.`se_private_id`,(`tbl`.`hidden` <> 'Visible'),`ts`.`se_private_data`,coalesce(`stat`.`avg_row_length`,0),coalesce(cast(`stat`.`cached_time` as unsigned),0))) AS `AVG_ROW_LENGTH`,if((`tbl`.`type` = 'VIEW'),NULL,internal_data_length(`sch`.`name`,`tbl`.`name`,if((`tbl`.`partition_type` is null),`tbl`.`engine`,''),`tbl`.`se_private_id`,(`tbl`.`hidden` <> 'Visible'),`ts`.`se_private_data`,coalesce(`stat`.`data_length`,0),coalesce(cast(`stat`.`cached_time` as unsigned),0))) AS `DATA_LENGTH`,if((`tbl`.`type` = 'VIEW'),NULL,internal_max_data_length(`sch`.`name`,`tbl`.`name`,if((`tbl`.`partition_type` is null),`tbl`.`engine`,''),`tbl`.`se_private_id`,(`tbl`.`hidden` <> 'Visible'),`ts`.`se_private_data`,coalesce(`stat`.`max_data_length`,0),coalesce(cast(`stat`.`cached_time` as unsigned),0))) AS `MAX_DATA_LENGTH`,if((`tbl`.`type` = 'VIEW'),NULL,internal_index_length(`sch`.`name`,`tbl`.`name`,if((`tbl`.`partition_type` is null),`tbl`.`engine`,''),`tbl`.`se_private_id`,(`tbl`.`hidden` <> 'Visible'),`ts`.`se_private_data`,coalesce(`stat`.`index_length`,0),coalesce(cast(`stat`.`cached_time` as unsigned),0))) AS `INDEX_LENGTH`,if((`tbl`.`type` = 'VIEW'),NULL,internal_data_free(`sch`.`name`,`tbl`.`name`,if((`tbl`.`partition_type` is null),`tbl`.`engine`,''),`tbl`.`se_private_id`,(`tbl`.`hidden` <> 'Visible'),`ts`.`se_private_data`,coalesce(`stat`.`data_free`,0),coalesce(cast(`stat`.`cached_time` as unsigned),0))) AS `DATA_FREE`,if((`tbl`.`type` = 'VIEW'),NULL,internal_auto_increment(`sch`.`name`,`tbl`.`name`,if((`tbl`.`partition_type` is null),`tbl`.`engine`,''),`tbl`.`se_private_id`,((0 <> is_visible_dd_object(`tbl`.`hidden`,false,`tbl`.`options`)) is false),`ts`.`se_private_data`,coalesce(`stat`.`auto_increment`,0),coalesce(cast(`stat`.`cached_time` as unsigned),0),`tbl`.`se_private_data`)) AS `AUTO_INCREMENT`,`tbl`.`created` AS `CREATE_TIME`,if((`tbl`.`type` = 'VIEW'),NULL,internal_update_time(`sch`.`name`,`tbl`.`name`,if((`tbl`.`partition_type` is null),`tbl`.`engine`,''),`tbl`.`se_private_id`,(`tbl`.`hidden` <> 'Visible'),`ts`.`se_private_data`,coalesce(cast(`stat`.`update_time` as unsigned),0),coalesce(cast(`stat`.`cached_time` as unsigned),0))) AS `UPDATE_TIME`,if((`tbl`.`type` = 'VIEW'),NULL,internal_check_time(`sch`.`name`,`tbl`.`name`,if((`tbl`.`partition_type` is null),`tbl`.`engine`,''),`tbl`.`se_private_id`,(`tbl`.`hidden` <> 'Visible'),`ts`.`se_private_data`,coalesce(cast(`stat`.`check_time` as unsigned),0),coalesce(cast(`stat`.`cached_time` as unsigned),0))) AS `CHECK_TIME`,`col`.`name` AS `TABLE_COLLATION`,if((`tbl`.`type` = 'VIEW'),NULL,internal_checksum(`sch`.`name`,`tbl`.`name`,if((`tbl`.`partition_type` is null),`tbl`.`engine`,''),`tbl`.`se_private_id`,(`tbl`.`hidden` <> 'Visible'),`ts`.`se_private_data`,coalesce(`stat`.`checksum`,0),coalesce(cast(`stat`.`cached_time` as unsigned),0))) AS `CHECKSUM`,if((`tbl`.`type` = 'VIEW'),NULL,get_dd_create_options(`tbl`.`options`,if((ifnull(`tbl`.`partition_expression`,'NOT_PART_TBL') = 'NOT_PART_TBL'),0,1),if((`sch`.`default_encryption` = 'YES'),1,0))) AS `CREATE_OPTIONS`,internal_get_comment_or_error(`sch`.`name`,`tbl`.`name`,`tbl`.`type`,`tbl`.`options`,`tbl`.`comment`) AS `TABLE_COMMENT` from (((((`mysql`.`tables` `tbl` join `mysql`.`schemata` `sch` on((`tbl`.`schema_id` = `sch`.`id`))) join `mysql`.`catalogs` `cat` on((`cat`.`id` = `sch`.`catalog_id`))) left join `mysql`.`collations` `col` on((`tbl`.`collation_id` = `col`.`id`))) left join `mysql`.`tablespaces` `ts` on((`tbl`.`tablespace_id` = `ts`.`id`))) left join `mysql`.`table_stats` `stat` on(((`tbl`.`name` = `stat`.`table_name`) and (`sch`.`name` = `stat`.`schema_name`)))) where ((0 <> can_access_table(`sch`.`name`,`tbl`.`name`)) and (0 <> is_visible_dd_object(`tbl`.`hidden`))) ;

--
-- Dumping data for table `TABLES`
--

INSERT INTO `TABLES` (`site_group`, `table_count`, `total_rows`) VALUES
('Site 21', 58, '1315660'),
('Site 2', 68, '1018388'),
('Site 10', 59, '695880'),
('Site 3', 61, '648316'),
('Site 16', 59, '566020'),
('Site 7', 62, '556568'),
('Site 9', 61, '522294'),
('Site 8', 62, '431340'),
('Site 6', 59, '389863'),
('Site 20', 60, '360759'),
('Site 13', 63, '232949'),
('Site 19', 58, '213855'),
('Site 23', 57, '104697'),
('Main Site', 72, '99112'),
('Site 17', 49, '25810'),
('Site 22', 57, '9740'),
('Site 18', 55, '5609'),
('Site 11', 58, '2773'),
('Site 15', 57, '1503'),
('Site 24', 47, '1451'),
('Site 14', 52, '1035'),
('Site 12', 52, '921'),
('Site 25', 47, '408');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

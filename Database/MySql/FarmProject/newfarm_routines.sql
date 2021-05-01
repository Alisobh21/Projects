-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: newfarm
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping events for database 'newfarm'
--

--
-- Dumping routines for database 'newfarm'
--
/*!50003 DROP PROCEDURE IF EXISTS `FarmCost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FarmCost`(p_ID1 int, 
								  p_ID2 int,
								  p_ID3 int,
								  p_ID4 int,
								  p_Week int,
								  p_Month int,
								  p_Year int 
								  )
sp_lbl:
begin
DECLARE v_CowID1 int DEFAULT (Select CowID from Cow where CowID=p_ID1);
DECLARE v_CowID2 int DEFAULT (Select CowID from Cow where CowID=p_ID2);
DECLARE v_CowID3 int DEFAULT (Select CowID from Cow where CowID=p_ID3);
DECLARE v_CowID4 int DEFAULT (Select CowID from Cow where CowID=p_ID4);

DECLARE v_Status1 int DEFAULT (Select Status from Cow where CowID=p_ID1);
DECLARE v_Status2 int DEFAULT (Select Status from Cow where CowID=p_ID2);
DECLARE v_Status3 int DEFAULT (Select Status from Cow where CowID=p_ID3);
DECLARE v_Status4 int DEFAULT (Select Status from Cow where CowID=p_ID4);

DECLARE v_DairyFactorySell double DEFAULT ( ( ( 110.0 - 25.0) /2.0 ) * 0.5  ) * 4;
DECLARE v_SuperMarketSell double DEFAULT  ( ( ( 110.0 - 25.0) /2.0 ) * 0.5 ) * 4;
DECLARE v_MilkCost double DEFAULT  (  25.0 * 0.5 ) * 4; 
DECLARE v_ButcheryCost double DEFAULT  (  25.0 * 4 ); 
DECLARE v_FeedCost double DEFAULT  100; 
DECLARE v_MeatSell double DEFAULT (select (sum(Cow_weight)*5) from Cow where CowID in (p_ID1,p_ID2,p_ID3,p_ID4)  );
DECLARE v_SalaryCost double DEFAULT  (Select sum(EmpSalary) / 4 from  Employee ); 





if (v_CowID1 is not Null and  v_CowID2 is not Null and  v_CowID3 is not Null and  v_CowID4 is not Null )
then
if (v_Status1 = 1 and v_Status2 = 1 and v_Status3   =1 and v_Status4 =1 )
then
           INSERT INTO Butchery    
                        (WeekNum,MonthNum,YearNum,CowID1,CowID2,CowID3,CowID4)  
            VALUES      (p_Week,p_Month,p_Year,v_CowID1,v_CowID2,v_CowID3,v_CowID4);

	       INSERT INTO Farm   
                        (WeekNum,MonthNum,YearNum,DairyFactoryCost,SuperMarketCost,ButcheryCost,FeedCost,MeatSell,SalaryCost,MilkUsage)  
            VALUES      (p_Week,p_Month,p_Year,v_DairyFactorySell,v_SuperMarketSell,v_ButcheryCost,v_FeedCost,v_MeatSell,v_SalaryCost,v_MilkCost);
update Cow 
set Status = 0 
where CowID in (p_ID1,p_ID2,p_ID3,p_ID4);
end if ;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `IntoDairyFactory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `IntoDairyFactory`( )
sp_lbl:
begin
DECLARE  v_MilkSize double DEFAULT ( ((110.0-25.0)/2 )*4);
DECLARE  v_Milkcost double DEFAULT ( v_MilkSize * 0.5);
DECLARE v_corruptMilk float DEFAULT (v_MilkSize *.1 ) ;
DECLARE v_ValidMilk float DEFAULT (v_MilkSize *.9 );
DECLARE v_CheeseSell float DEFAULT ((v_ValidMilk /2.0 ) * 8  );
DECLARE v_YoghurtSell float DEFAULT ((v_ValidMilk /2.0 ) * 2  );
DECLARE Pweek int DEFAULT (select  WeekNum from butchery order by  ID DESC limit 1 );
DECLARE Pmonth int DEFAULT (select  MonthNum from butchery order by  ID DESC limit 1);
DECLARE Pyear int DEFAULT (select YearNum from butchery order by  ID DESC limit 1 ) ;
DECLARE v_SalaryCost double DEFAULT  (Select sum(EmpSalary) / 4 from  dairyfactory.Employee ); 


INSERT INTO dairyfactory.productdairyfactory    
                        (WeekNum,MonthNum,YearNum,CheeseQuantity,YoghurtQuantity)  
            VALUES      (Pweek,Pmonth,Pyear,( v_ValidMilk /2.0 ),( v_ValidMilk /2.0 ));


INSERT INTO dairyfactory.dairyfactory   
                        (WeekNum,MonthNum,YearNum,MilkCost,CheeseSell,YoghurtSell,SalaryCost)  
            VALUES      (Pweek,Pmonth,Pyear, v_Milkcost, v_CheeseSell, v_YoghurtSell,v_SalaryCost);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `IntoSinioraFactory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `IntoSinioraFactory`( )
sp_lbl:
begin
DECLARE v_CowID1 int DEFAULT (select  CowID1 from butchery order by  ID DESC limit 1 );
DECLARE  v_Cow_weight double DEFAULT ( select (Cow_weight ) from Cow where CowID = v_CowID1);
DECLARE  v_MeatCost double DEFAULT ( select (Cow_weight * 5) from Cow where CowID = v_CowID1);
DECLARE  v_SinioraSell double DEFAULT ( select (Cow_weight * 9) from Cow where CowID = v_CowID1);
DECLARE Pweek int DEFAULT (select  WeekNum from butchery order by  ID DESC limit 1 );
DECLARE Pmonth int DEFAULT (select  MonthNum from butchery order by  ID DESC limit 1);
DECLARE Pyear int DEFAULT (select YearNum from butchery order by  ID DESC limit 1 ) ;
DECLARE v_SalaryCost double DEFAULT  (Select sum(EmpSalary) / 4 from  siniorafactory.Employee ); 

INSERT INTO siniorafactory.siniorafactory 
                        (WeekNum,MonthNum,YearNum,SinioraSell,MeatCost,Cow_weight,SalaryCost)  
            VALUES      (Pweek,Pmonth,Pyear, v_SinioraSell, v_MeatCost, v_Cow_weight,v_SalaryCost);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `IntoSuperMarket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `IntoSuperMarket`()
BEGIN
DECLARE v_CowID1 int DEFAULT (select  CowID2 from butchery order by  ID DESC limit 1 );
DECLARE v_CowID2 int DEFAULT (select  CowID3 from butchery order by  ID DESC limit 1 );
DECLARE v_CowID3 int DEFAULT (select  CowID4 from butchery order by  ID DESC limit 1 );
DECLARE  v_MeatCost double DEFAULT ( select (sum(Cow_weight) * 5) from Cow where CowID in (v_CowID1,v_CowID2,v_CowID3));
DECLARE  v_MeatSell double DEFAULT ( select (sum(Cow_weight) * 10) from Cow where CowID in (v_CowID1,v_CowID2,v_CowID3));

DECLARE v_CheeseCost float DEFAULT ((select CheeseQuantity from dairyfactory.productdairyfactory  order by  ID DESC limit 1) *8.0);
DECLARE v_YoghurtCost float DEFAULT ((select YoghurtQuantity from dairyfactory.productdairyfactory order by  ID DESC limit 1) *2.0);
DECLARE v_CheeseSell float DEFAULT ((select  CheeseQuantity from dairyfactory.productdairyfactory  order by  ID DESC limit 1 ) * 15.0);
DECLARE v_YoghurtSell float DEFAULT ((select  YoghurtQuantity from dairyfactory.productdairyfactory order by  ID DESC limit 1 ) * 3.0);
DECLARE Pweek int DEFAULT (select  WeekNum from butchery order by  ID DESC limit 1 );
DECLARE Pmonth int DEFAULT (select  MonthNum from butchery order by  ID DESC limit 1);
DECLARE Pyear int DEFAULT (select YearNum from butchery order by  ID DESC limit 1 ) ;
DECLARE v_SalaryCost double DEFAULT  (Select sum(EmpSalary) / 4 from  Employee ); 
DECLARE v_LuncheonCost double DEFAULT ((select SinioraSell  from siniorafactory.siniorafactory where WeekNum=Pweek and MonthNum = Pmonth and YearNum=Pyear ));
DECLARE v_Luncheonsell double DEFAULT (((select SinioraSell  from siniorafactory.siniorafactory where WeekNum=Pweek and MonthNum =Pmonth and YearNum=Pyear ) /9) * 13);

INSERT INTO supermarket.SuperMarket  (WeekNum,MonthNum,YearNum,MeatCost,MeatSell,CheeseCost , CheeseSell  ,YoghurtCost ,YoghurtSell , SinioraCost,SinioraSell  , SalaryCost  )
VALUES                    (Pweek,Pmonth,Pyear,v_MeatCost,v_MeatSell,v_CheeseCost,v_CheeseSell,v_YoghurtCost,v_YoghurtSell,v_LuncheonCost,v_Luncheonsell,v_SalaryCost);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProfitDairyFactory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProfitDairyFactory`()
begin 
Select YearNum ,MonthNum ,Sum(YoghurtSell)+SUM(CheeseSell)-Sum(SalaryCost) - sum(MilkCost) as"Profit" ,
Sum(YoghurtSell)+SUM(CheeseSell) as "Sales" , Sum(SalaryCost) + sum(MilkCost)  as "Cost"
from DairyFactory.DairyFactory 
group by YearNum ,MonthNum;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProfitFarm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProfitFarm`()
begin 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
Select YearNum ,MonthNum ,Sum(DairyFactoryCost)+SUM(SuperMarketCost)-SUM(ButcheryCost) - SUM(FeedCost) + SUM(MeatSell)-Sum(SalaryCost)-Sum(MilkUsage) as"Profit" ,
Sum(DairyFactoryCost)+SUM(SuperMarketCost)+SUM(MeatSell) as "Sales" 
, SUM(ButcheryCost) + SUM(FeedCost) + Sum(MilkUsage) + Sum(SalaryCost) as "Cost"
from farm 
group by YearNum ,MonthNum;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProfitSinioraFactory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProfitSinioraFactory`()
begin 
Select YearNum ,MonthNum ,Sum(SinioraSell)-SUM(MeatCost)-Sum(SalaryCost) as"Profit" ,
Sum(SinioraSell) as "Sales" , SUM(MeatCost) + SUM(SalaryCost)  as "Cost"
from siniorafactory.siniorafactory
group by YearNum ,MonthNum;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProfitSuperMarket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProfitSuperMarket`()
begin 
Select YearNum ,MonthNum ,sum(MeatSell) + sum(CheeseSell) + sum(YoghurtSell) + sum(SinioraSell)
 - sum(MeatCost)- sum(CheeseCost) - sum(YoghurtCost) - sum(SinioraCost)  - sum(SalaryCost) as"Profit" ,
sum(MeatSell) + sum(CheeseSell) + sum(YoghurtSell) + sum(SinioraSell) as "Sales" 
, sum(MeatCost)+ sum(CheeseCost) + sum(YoghurtCost) + sum(SinioraCost)  + sum(SalaryCost)  as "Cost"
from supermarket.supermarket 
group by YearNum ,MonthNum;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26 21:29:22

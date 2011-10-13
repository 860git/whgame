USE [master]
GO
/****** 对象:  Database [GameScoreDB]    脚本日期: 12/08/2008 11:50:05 ******/
CREATE DATABASE [GameScoreDB] ON  PRIMARY 
( NAME = N'GameScoreDB', FILENAME = N'D:\数据库\GameScoreDB.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GameScoreDB_log', FILENAME = N'D:\数据库\GameScoreDB_log.LDF' , SIZE = 6272KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE Chinese_PRC_CI_AS
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GameScoreDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GameScoreDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GameScoreDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GameScoreDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GameScoreDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GameScoreDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [GameScoreDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GameScoreDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [GameScoreDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GameScoreDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GameScoreDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GameScoreDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GameScoreDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GameScoreDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GameScoreDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GameScoreDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GameScoreDB] SET  READ_WRITE 
GO
ALTER DATABASE [GameScoreDB] SET RECOVERY FULL 
GO
ALTER DATABASE [GameScoreDB] SET  MULTI_USER 
GO
if ( ((@@microsoftversion / power(2, 24) = 8) and (@@microsoftversion & 0xffff >= 760)) or 
		(@@microsoftversion / power(2, 24) >= 9) )begin 
	exec dbo.sp_dboption @dbname =  N'GameScoreDB', @optname = 'db chaining', @optvalue = 'OFF'
 end
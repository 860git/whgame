
----------------------------------------------------------------------------------------------------

USE GameServerInfoDB
GO

----------------------------------------------------------------------------------------------------

-- 删除数据
DELETE DataBaseInfo
GO

----------------------------------------------------------------------------------------------------

-- 连接信息
INSERT DataBaseInfo (DBPort, DBAddr, DBUser, DBPassword) VALUES (1433, '192.168.1.10', '027129486b47d67febe8', '086429406b05d6e7ebd9083b291d6b5ed6faeb42')

----------------------------------------------------------------------------------------------------

GO
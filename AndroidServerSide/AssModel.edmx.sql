
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 11/22/2013 15:43:25
-- Generated from EDMX file: \\vmware-host\Shared Folders\D\Dropbox\Clientes\FERNANDOBHZ\AndroidServerSide\AndroidServerSide\AssModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ass];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[SMSOutput]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SMSOutput];
GO
IF OBJECT_ID(N'[dbo].[AllRequests]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AllRequests];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'SMSOutput'
CREATE TABLE [dbo].[SMSOutput] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Number] nvarchar(max)  NULL,
    [Message] nvarchar(max)  NULL,
    [Result] nvarchar(max)  NULL
);
GO

-- Creating table 'AllRequests'
CREATE TABLE [dbo].[AllRequests] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Page] nvarchar(max)  NOT NULL,
    [Request] nvarchar(max)  NOT NULL,
    [Response] nvarchar(max)  NULL,
    [Required] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'SMSOutput'
ALTER TABLE [dbo].[SMSOutput]
ADD CONSTRAINT [PK_SMSOutput]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AllRequests'
ALTER TABLE [dbo].[AllRequests]
ADD CONSTRAINT [PK_AllRequests]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
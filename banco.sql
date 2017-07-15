USE [SitePos]
GO

/****** Object:  Table [dbo].[TbCategoria]    Script Date: 15/07/2017 15:17:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TbCategoria](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_nome] [varchar](50) NULL,
 CONSTRAINT [PK_TbCategoria] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/**************************************************/

USE [SitePos]
GO

/****** Object:  Table [dbo].[TbNoticia]    Script Date: 15/07/2017 15:18:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TbNoticia](
	[not_id] [int] IDENTITY(1,1) NOT NULL,
	[not_titulo] [varchar](200) NULL,
	[not_texto] [text] NULL,
	[not_data] [datetime] NULL,
	[not_imagem] [varchar](50) NULL,
	[cat_id] [int] NULL,
 CONSTRAINT [PK_TbNoticia] PRIMARY KEY CLUSTERED 
(
	[not_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[TbNoticia]  WITH CHECK ADD  CONSTRAINT [FK_TbNoticia_TbCategoria] FOREIGN KEY([not_id])
REFERENCES [dbo].[TbCategoria] ([cat_id])
GO

ALTER TABLE [dbo].[TbNoticia] CHECK CONSTRAINT [FK_TbNoticia_TbCategoria]
GO


/**************************************************/

USE [SitePos]
GO

/****** Object:  Table [dbo].[TbUsuario]    Script Date: 15/07/2017 15:18:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TbUsuario](
	[usu_id] [int] IDENTITY(1,1) NOT NULL,
	[usu_nome] [varchar](100) NULL,
	[usu_login] [varchar](100) NULL,
	[usu_senha] [varchar](100) NULL,
	[usu_ativo] [bit] NULL,
 CONSTRAINT [PK_TbUsuario] PRIMARY KEY CLUSTERED 
(
	[usu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



/****** Object:  User [zath362893]    Script Date: 5/22/21 8:02:28 PM ******/
CREATE USER [zath362893] FOR LOGIN [uath362893] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [zath362893]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 5/22/21 8:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[product_category_name] [varchar](50) NULL,
	[product_category_name_english] [varchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ciudad]    Script Date: 5/22/21 8:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ciudad](
	["geolocation_zip_code_prefix] [int] NULL,
	[""geolocation_lat""] [varchar](20) NULL,
	[""geolocation_lng""] [varchar](20) NULL,
	[""geolocation_city""] [varchar](10) NULL,
	[""geolocation_state"""] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 5/22/21 8:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	["customer_id] [varchar](40) NULL,
	[""customer_unique_id""] [varchar](40) NULL,
	[""customer_zip_code_prefix""] [varchar](10) NULL,
	[""customer_city""] [varchar](30) NULL,
	[""customer_state"""] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[demo]    Script Date: 5/22/21 8:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[demo](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[hint] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[encuestas]    Script Date: 5/22/21 8:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[encuestas](
	[review_id] [varchar](110) NULL,
	[order_id] [varchar](110) NULL,
	[review_score] [varchar](70) NULL,
	[review_comment_title] [varchar](30) NULL,
	[review_comment_message] [varchar](210) NULL,
	[review_creation_date] [varchar](200) NULL,
	[review_answer_timestamp] [varchar](110) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envios]    Script Date: 5/22/21 8:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[envios](
	["seller_id"] [varchar](40) NULL,
	["seller_zip_code_prefix"] [varchar](10) NULL,
	["seller_city"] [varchar](40) NULL,
	["seller_state"] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orden]    Script Date: 5/22/21 8:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orden](
	["order_id] [varchar](40) NULL,
	[""customer_id""] [varchar](40) NULL,
	[""order_status""] [varchar](20) NULL,
	[""order_purchase_timestamp""] [varchar](20) NULL,
	[""order_approved_at""] [varchar](20) NULL,
	[""order_delivered_carrier_date""] [varchar](20) NULL,
	[""order_delivered_customer_date""] [varchar](20) NULL,
	[""order_estimated_delivery_date"""] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordendelproducto]    Script Date: 5/22/21 8:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordendelproducto](
	["order_id] [varchar](40) NULL,
	[""order_item_id""] [tinyint] NULL,
	[""product_id""] [varchar](40) NULL,
	[""seller_id""] [varchar](40) NULL,
	[""shipping_limit_date""] [varchar](20) NULL,
	[""price""] [real] NULL,
	[""freight_value"""] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pagodelaorden]    Script Date: 5/22/21 8:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pagodelaorden](
	[order_id] [varchar](40) NULL,
	[payment_sequential] [tinyint] NULL,
	[payment_type] [varchar](20) NULL,
	[payment_installments] [tinyint] NULL,
	[payment_value] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 5/22/21 8:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[product_id] [varchar](40) NULL,
	[product_category_name] [varchar](50) NULL,
	[product_name_lenght] [tinyint] NULL,
	[product_description_lenght] [smallint] NULL,
	[product_photos_qty] [tinyint] NULL,
	[product_weight_g] [int] NULL,
	[product_length_cm] [smallint] NULL,
	[product_height_cm] [smallint] NULL,
	[product_width_cm] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [PK__demo__3213E83F9E30EB88]    Script Date: 5/22/21 8:02:29 PM ******/
ALTER TABLE [dbo].[demo] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
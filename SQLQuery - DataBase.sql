create database BdHenryChavez
go


USE [BdHenryChavez]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2/11/2022 6:43:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 2/11/2022 6:43:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Country_Id] [int] NOT NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON 
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (1, N'Afghanistan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (2, N'Albania')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (3, N'Algeria')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (4, N'American Samoa')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (5, N'Andorra')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (6, N'Angola')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (7, N'Anguilla')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (8, N'Antarctica')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (9, N'Antigua and Barbuda')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (10, N'Argentina')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (11, N'Armenia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (12, N'Aruba')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (13, N'Australia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (14, N'Austria')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (15, N'Azerbaijan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (16, N'Bahamas')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (17, N'Bahrain')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (18, N'Bangladesh')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (19, N'Barbados')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (20, N'Belarus')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (21, N'Belgium')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (22, N'Belize')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (23, N'Benin')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (24, N'Bermuda')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (25, N'Bhutan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (26, N'Bolivia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (27, N'Bosnia and Herzegovina')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (28, N'Botswana')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (29, N'Bouvet Island')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (30, N'Brazil')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (31, N'British Antarctic Territory')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (32, N'British Indian Ocean Territory')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (33, N'British Virgin Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (34, N'Brunei')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (35, N'Bulgaria')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (36, N'Burkina Faso')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (37, N'Burundi')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (38, N'Cambodia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (39, N'Cameroon')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (40, N'Canada')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (41, N'Canton and Enderbury Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (42, N'Cape Verde')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (43, N'Cayman Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (44, N'Central African Republic')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (45, N'Chad')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (46, N'Chile')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (47, N'China')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (48, N'Christmas Island')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (49, N'Cocos [Keeling] Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (50, N'Colombia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (51, N'Comoros')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (52, N'Congo - Brazzaville')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (53, N'Congo - Kinshasa')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (54, N'Cook Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (55, N'Costa Rica')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (56, N'Croatia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (57, N'Cuba')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (58, N'Cyprus')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (59, N'Czech Republic')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (60, N'Côte d''Ivoire')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (61, N'Denmark')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (62, N'Djibouti')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (63, N'Dominica')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (64, N'Dominican Republic')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (65, N'Dronning Maud Land')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (66, N'East Germany')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (67, N'Ecuador')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (68, N'Egypt')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (69, N'El Salvador')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (70, N'Equatorial Guinea')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (71, N'Eritrea')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (72, N'Estonia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (73, N'Ethiopia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (74, N'Falkland Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (75, N'Faroe Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (76, N'Fiji')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (77, N'Finland')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (78, N'France')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (79, N'French Guiana')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (80, N'French Polynesia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (81, N'French Southern Territories')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (82, N'French Southern and Antarctic Territories')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (83, N'Gabon')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (84, N'Gambia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (85, N'Georgia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (86, N'Germany')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (87, N'Ghana')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (88, N'Gibraltar')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (89, N'Greece')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (90, N'Greenland')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (91, N'Grenada')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (92, N'Guadeloupe')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (93, N'Guam')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (94, N'Guatemala')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (95, N'Guernsey')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (96, N'Guinea')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (97, N'Guinea-Bissau')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (98, N'Guyana')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (99, N'Haiti')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (100, N'Heard Island and McDonald Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (101, N'Honduras')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (102, N'Hong Kong SAR China')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (103, N'Hungary')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (104, N'Iceland')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (105, N'India')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (106, N'Indonesia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (107, N'Iran')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (108, N'Iraq')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (109, N'Ireland')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (110, N'Isle of Man')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (111, N'Israel')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (112, N'Italy')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (113, N'Jamaica')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (114, N'Japan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (115, N'Jersey')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (116, N'Johnston Island')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (117, N'Jordan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (118, N'Kazakhstan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (119, N'Kenya')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (120, N'Kiribati')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (121, N'Kuwait')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (122, N'Kyrgyzstan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (123, N'Laos')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (124, N'Latvia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (125, N'Lebanon')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (126, N'Lesotho')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (127, N'Liberia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (128, N'Libya')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (129, N'Liechtenstein')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (130, N'Lithuania')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (131, N'Luxembourg')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (132, N'Macau SAR China')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (133, N'Macedonia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (134, N'Madagascar')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (135, N'Malawi')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (136, N'Malaysia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (137, N'Maldives')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (138, N'Mali')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (139, N'Malta')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (140, N'Marshall Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (141, N'Martinique')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (142, N'Mauritania')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (143, N'Mauritius')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (144, N'Mayotte')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (145, N'Metropolitan France')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (146, N'Mexico')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (147, N'Micronesia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (148, N'Midway Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (149, N'Moldova')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (150, N'Monaco')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (151, N'Mongolia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (152, N'Montenegro')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (153, N'Montserrat')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (154, N'Morocco')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (155, N'Mozambique')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (156, N'Myanmar [Burma]')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (157, N'Namibia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (158, N'Nauru')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (159, N'Nepal')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (160, N'Netherlands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (161, N'Netherlands Antilles')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (162, N'Neutral Zone')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (163, N'New Caledonia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (164, N'New Zealand')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (165, N'Nicaragua')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (166, N'Niger')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (167, N'Nigeria')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (168, N'Niue')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (169, N'Norfolk Island')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (170, N'North Korea')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (171, N'North Vietnam')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (172, N'Northern Mariana Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (173, N'Norway')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (174, N'Oman')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (175, N'Pacific Islands Trust Territory')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (176, N'Pakistan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (177, N'Palau')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (178, N'Palestinian Territories')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (179, N'Panama')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (180, N'Panama Canal Zone')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (181, N'Papua New Guinea')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (182, N'Paraguay')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (183, N'People''s Democratic Republic of Yemen')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (184, N'Peru')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (185, N'Philippines')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (186, N'Pitcairn Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (187, N'Poland')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (188, N'Portugal')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (189, N'Puerto Rico')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (190, N'Qatar')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (191, N'Romania')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (192, N'Russia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (193, N'Rwanda')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (194, N'Réunion')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (195, N'Saint Barthélemy')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (196, N'Saint Helena')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (197, N'Saint Kitts and Nevis')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (198, N'Saint Lucia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (199, N'Saint Martin')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (200, N'Saint Pierre and Miquelon')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (201, N'Saint Vincent and the Grenadines')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (202, N'Samoa')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (203, N'San Marino')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (204, N'Saudi Arabia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (205, N'Senegal')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (206, N'Serbia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (207, N'Serbia and Montenegro')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (208, N'Seychelles')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (209, N'Sierra Leone')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (210, N'Singapore')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (211, N'Slovakia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (212, N'Slovenia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (213, N'Solomon Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (214, N'Somalia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (215, N'South Africa')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (216, N'South Georgia and the South Sandwich Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (217, N'South Korea')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (218, N'South Sudan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (219, N'Spain')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (220, N'Sri Lanka')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (221, N'Sudan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (222, N'Suriname')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (223, N'Svalbard and Jan Mayen')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (224, N'Swaziland')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (225, N'Sweden')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (226, N'Switzerland')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (227, N'Syria')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (228, N'São Tomé and Príncipe')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (229, N'Taiwan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (230, N'Tajikistan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (231, N'Tanzania')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (232, N'Thailand')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (233, N'Timor-Leste')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (234, N'Togo')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (235, N'Tokelau')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (236, N'Tonga')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (237, N'Trinidad and Tobago')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (238, N'Tunisia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (239, N'Turkey')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (240, N'Turkmenistan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (241, N'Turks and Caicos Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (242, N'Tuvalu')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (243, N'U.S. Minor Outlying Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (244, N'U.S. Miscellaneous Pacific Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (245, N'U.S. Virgin Islands')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (246, N'Uganda')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (247, N'Ukraine')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (248, N'Union of Soviet Socialist Republics')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (249, N'United Arab Emirates')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (250, N'United Kingdom')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (251, N'United States')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (252, N'Unknown or Invalid Region')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (253, N'Uruguay')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (254, N'Uzbekistan')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (255, N'Vanuatu')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (256, N'Vatican City')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (257, N'Venezuela')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (258, N'Vietnam')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (259, N'Wake Island')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (260, N'Wallis and Futuna')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (261, N'Western Sahara')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (262, N'Yemen')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (263, N'Zambia')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (264, N'Zimbabwe')
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
INSERT [dbo].[Store] ([Id], [Name], [Country_Id]) VALUES (N'7b943b0a-0760-4c4d-ba36-1836ea90b6cf', N'alo', 6)
GO
INSERT [dbo].[Store] ([Id], [Name], [Country_Id]) VALUES (N'8bd8995c-ecf4-45bc-b05b-d673fc682b30', N'a8', 8)
GO
INSERT [dbo].[Store] ([Id], [Name], [Country_Id]) VALUES (N'9ae6bebd-2371-4979-a0ca-15b64894d4aa', N'a7', 7)
GO
INSERT [dbo].[Store] ([Id], [Name], [Country_Id]) VALUES (N'9f590b0f-fe34-4cf6-beed-eb6d63444ff5', N'a4', 4)
GO
INSERT [dbo].[Store] ([Id], [Name], [Country_Id]) VALUES (N'ab734015-004b-4b91-8720-cb9b2871e1e3', N'a1', 1)
GO
INSERT [dbo].[Store] ([Id], [Name], [Country_Id]) VALUES (N'cbb6d6e2-3334-40b2-a024-7337b2feaf25', N'a3', 2)
GO
INSERT [dbo].[Store] ([Id], [Name], [Country_Id]) VALUES (N'f0152c4d-69db-4973-a890-f3c69052c5c1', N'a5', 4)
GO
INSERT [dbo].[Store] ([Id], [Name], [Country_Id]) VALUES (N'f82b5ab3-67ec-4be1-a281-b12d502fe2cd', N'a6', 6)
GO
INSERT [dbo].[Store] ([Id], [Name], [Country_Id]) VALUES (N'fc0068e2-4c2b-40bc-81a3-a79047395181', N'a2', 2)
GO

USE [doAnMVC]
GO
/****** Object:  Table [dbo].[account]    Script Date: 4/2/2022 7:05:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[HovaTen] [nvarchar](50) NULL,
	[email] [char](50) NOT NULL,
	[pass] [char](50) NULL,
	[maCV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carosel]    Script Date: 4/2/2022 7:05:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carosel](
	[MaChuDe] [int] NULL,
	[hinhAnh] [char](50) NOT NULL,
 CONSTRAINT [PK_Carosel] PRIMARY KEY CLUSTERED 
(
	[hinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETTB]    Script Date: 4/2/2022 7:05:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETTB](
	[MATB] [int] NOT NULL,
	[TENTB] [nvarchar](100) NULL,
	[GIATHANH] [float] NULL,
	[MANHINH] [nvarchar](100) NULL,
	[HDH] [char](30) NULL,
	[Camerasau] [char](40) NULL,
	[cameratruoc] [char](20) NULL,
	[chip] [char](40) NULL,
	[ram] [char](30) NULL,
	[bonho] [char](30) NULL,
	[sim] [nvarchar](50) NULL,
	[pinxac] [char](30) NULL,
	[HINHANH1] [char](30) NULL,
	[HINHANH2] [char](30) NULL,
	[HINHANH3] [char](30) NULL,
	[HINHANH4] [char](30) NULL,
	[HINHANH5] [char](30) NULL,
	[HINHANH6] [char](30) NULL,
	[chitiet] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MATB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chucVu]    Script Date: 4/2/2022 7:05:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chucVu](
	[maCV] [int] NOT NULL,
	[tenCV] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanXuat]    Script Date: 4/2/2022 7:05:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuat](
	[MAHSX] [int] NOT NULL,
	[TENHSX] [nvarchar](50) NULL,
 CONSTRAINT [PK_HangSanXuat] PRIMARY KEY CLUSTERED 
(
	[MAHSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 4/2/2022 7:05:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[mail] [char](50) NULL,
	[sodienthoai] [char](60) NULL,
	[hoten] [nvarchar](50) NULL,
	[diachi] [nvarchar](100) NULL,
	[quanHuyen] [nvarchar](30) NULL,
	[tinhTP] [nvarchar](20) NULL,
	[hinhThucTT] [nvarchar](50) NULL,
	[MATB] [int] NULL,
	[soLuong] [int] NULL,
	[thoiGian] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaiTB]    Script Date: 4/2/2022 7:05:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiTB](
	[loaiTB] [int] NOT NULL,
	[tenLoai] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[loaiTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/2/2022 7:05:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [int] NOT NULL,
	[tenNV] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[diaChi] [nvarchar](70) NULL,
	[ngayVaoLam] [date] NULL,
	[hinhanh] [char](30) NULL,
	[luong] [int] NULL,
	[maCV] [int] NULL,
	[email] [nchar](40) NULL,
	[soDT] [char](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THIETBI]    Script Date: 4/2/2022 7:05:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THIETBI](
	[MATB] [int] NOT NULL,
	[TENTB] [nvarchar](100) NULL,
	[GIATHANH] [float] NULL,
	[HINHANH] [char](50) NULL,
	[SOLUONG] [int] NULL,
	[LOAITB] [int] NULL,
	[MAHSX] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MATB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([HovaTen], [email], [pass], [maCV]) VALUES (N'njbj', N'thienquangpro1221@gmail.com                       ', N'111                                               ', 4)
GO
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (2, N'800-200-800x200-58.png                            ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (2, N'800-200-800x200-59.png                            ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (2, N'800-200-800x200-74.png                            ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (2, N'800-200-800x200-76.png                            ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (1, N'A52s-800-200-800x200-2.png                        ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (1, N'crs1.png                                          ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (1, N'crs2.png                                          ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (1, N'crs3.png                                          ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (1, N'crs4.png                                          ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (1, N'crs5.png                                          ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (1, N'crs6.png                                          ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (1, N'crs7.png                                          ')
INSERT [dbo].[Carosel] ([MaChuDe], [hinhAnh]) VALUES (1, N'crs8.png                                          ')
GO
INSERT [dbo].[CHITIETTB] ([MATB], [TENTB], [GIATHANH], [MANHINH], [HDH], [Camerasau], [cameratruoc], [chip], [ram], [bonho], [sim], [pinxac], [HINHANH1], [HINHANH2], [HINHANH3], [HINHANH4], [HINHANH5], [HINHANH6], [chitiet]) VALUES (1, N'Điện thoại iPhone 12 64GB ', 24000000, N'OLED6.1"Super Retina XDR', N'iOS 14                        ', N'2 camera 12 MP                          ', N'12 MP               ', N'Apple A14 Bionic                        ', N'4 GB                          ', N'64 GB                         ', N'1 Nano SIM & 1 eSIM H? tr? 5G', N'2815 mAh20 W                  ', N'iphone12_den.jpg              ', N'iphone12_do.jpg               ', N'iphone12_trang.jpg            ', N'iphone12_violet.jpg           ', N'iphone12_xanh.png             ', N'iphone12_xanhla.png           ', N'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.
Hiệu năng vượt xa mọi giới hạn
Apple đã trang bị con chip mới nhất của hãng (tính đến 11/2020) cho iPhone 12 đó là A14 Bionic, được sản xuất trên tiến trình 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị trên phiên bản tiền nhiệm iPhone 11.')
INSERT [dbo].[CHITIETTB] ([MATB], [TENTB], [GIATHANH], [MANHINH], [HDH], [Camerasau], [cameratruoc], [chip], [ram], [bonho], [sim], [pinxac], [HINHANH1], [HINHANH2], [HINHANH3], [HINHANH4], [HINHANH5], [HINHANH6], [chitiet]) VALUES (2, N'Điện thoại Samsung Galaxy Z Fold3 5G 512GB', 43990000, N'Dynamic AMOLED 2XChính 7.6" & Phụ 6.2"Full HD+', N'Android 11                    ', N'3 camera 12 MP                          ', N'10 MP & 4 MP        ', N'Snapdragon 888                          ', N'12 GB                         ', N'512 GB                        ', N'2 Nano SIMH? tr? 5G', N'4400 mAh25 W                  ', N'ssf3_6.png                    ', N'ssf3_1.jpg                    ', N'ssf3_2.jpg                    ', N'ssf3_3.jpg                    ', N'ssf3_4.jpg                    ', N'ssf3_5.jpg                    ', N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.
Đột phá thiết kế màn hình gập
Đầu tiên, khung viền Galaxy Z Fold3 được hoàn thiện bằng chất liệu Armor Aluminum cao cấp nhất từ trước đến giờ nhằm tăng cường được độ bền, mà vẫn đảm bảo được trọng lượng cân đối đem tới cảm giác vô cùng chắc chắn và cao cấp. ')
INSERT [dbo].[CHITIETTB] ([MATB], [TENTB], [GIATHANH], [MANHINH], [HDH], [Camerasau], [cameratruoc], [chip], [ram], [bonho], [sim], [pinxac], [HINHANH1], [HINHANH2], [HINHANH3], [HINHANH4], [HINHANH5], [HINHANH6], [chitiet]) VALUES (3, N'Điện thoại iPhone 13 Pro Max 128GB', 33990000, N'OLED6.7"Super Retina XDR', N'iOS 15                        ', N'3 camera 12 MP                          ', N'12 MP               ', N'Apple A15 Bionic                        ', N'6 GB                          ', N'128 GB                        ', N'1 Nano SIM H? tr? 5G', N'4400 mAh25 W                  ', N'13.1.jpg                      ', N'13.2.jpg                      ', N'13.3.jpg                      ', N'13.4.jpg                      ', N'13.5.jpg                      ', N'13.6.jpg                      ', N'Mỗi lần ra mắt phiên bản mới là mỗi lần iPhone chiếm sóng trên khắp các mặt trận và lần này cái tên khiến vô số người "sục sôi" là iPhone 13 Pro, chiếc điện thoại thông minh vẫn giữ nguyên thiết kế cao cấp, cụm 3 camera được nâng cấp, cấu hình mạnh mẽ cùng thời lượng pin lớn ấn tượng. 
Thiết kế đặc trưng với màu sắc thời thượng
iPhone 13 Pro không có nhiều sự thay đổi về thiết kế, khi máy vẫn sở hữu kiểu dáng tương tự như iPhone 12 Pro với các cạnh viền vuông vắn và hai mặt kính cường lực cao cấp. Sở hữu 4 phiên bản màu gồm xanh dương, bạc, vàng đồng và xám cho bạn tùy chọn theo sở thích của mình. 

Sở hữu 4 phiên bản màu sắc trẻ trung - iPhone 13 Pro 128GB

Máy đạt tiêu chuẩn kháng nước và bụi IP68 có khả năng chống lại một số hạt bụi, và được bảo vệ khi rơi xuống nước ở độ sâu đến 6 mét trong 30 phút theo chuẩn IEC 60529, thoải mái nhắn tin khi lỡ ra ngoài gặp mưa, chụp ảnh tự tin khi đi hồ bơi, bãi biển,...

Khả năng kháng bụi, nước - iPhone 13 Pro 128GB

Nâng cấp màn hình với tần số quét 120 Hz
Chiếc iPhone 13 Pro vẫn được trang bị màn hình kích thước 6.1 inch, với phần tai thỏ được làm nhỏ hơn giúp hiển thị thêm nhiều thông tin cũng như tăng cường cảm giác trải nghiệm. Bề mặt có lớp phủ oleophobic chống bám vân tay, giữ cho màn hình luôn được sạch mới. 

Trang bị màn hình 6.1 inch - iPhone 13 Pro 128GB

iPhone 13 Pro đã được nâng cấp lên tần số quét 120 Hz, với ProMotion có thể làm mới từ 10 đến 120 khung hình/giây. Với tần số quét cao, mọi thao tác chuyển cảnh khi lướt ngón tay trên màn hình trở nên mượt mà hơn đồng thời hiệu ứng thị giác khi chúng ta dùng điện thoại chơi game hoặc xem video cũng cực kỳ mãn nhãn.

Chuyển động mượt mà nhờ tần số 120 Hz - iPhone 13 Pro 128GB

Tốc độ làm tươi tự động tăng lên để hiển thị hiệu suất đồ họa, tự động giảm xuống khi không sử dụng để tiết kiệm năng lượng và tốc độ làm mới cũng được tự tinh chỉnh linh động để phù hợp hơn tốc độ lướt của ngón tay bạn. 

Tốc độ làm tươi được tự động hóa - iPhone 13 Pro 128GB

Sử dụng tấm nền OLED có số điểm ảnh lên đến 1170 x 2532 Pixels, độ sáng điển hình 1000 nits, khi hiển thị video HDR 1200 nits, tăng lên 25% khi đặt dưới ánh mặt trời, sắc đen hiển thị sâu, sắc sáng tươi tắn, khung hình sinh động như thực. 

Độ sáng đạt 1200 nits - iPhone 13 Pro 128GB

Quay chụp đỉnh cao với camera Pro
iPhone 13 Pro có bộ camera 3 ống kính 12 MP xếp xen kẽ thành một cụm vuông, đặt ở góc trên bên trái của lưng máy gồm camera tele, camera góc siêu rộng (Ultra Wide) khẩu độ f/1.8, góc nhìn đến 120 độ và camera chính góc rộng (Wide) với khẩu độ f/1.5.

Bộ ba ống kính chuyên nghiệp - iPhone 13 Pro 128GB

Camera Ultra Wide được làm mới có thể lấy nét tự động trong khoảng cách 2 cm, giúp phóng to hình ảnh của giọt sương, lông chim, cát vàng,... tạo nên những tuyệt tác nghệ thuật chỉ bằng một thao tác chụp đơn giản. Camera này cũng cho khả năng quay cảnh chuyển động tua nhanh thời gian hoặc chuyển động chậm linh hoạt để bạn làm video giải trí cực đẹp. 

Camera Ultra Wide lấy nét cực ấn tượng - iPhone 13 Pro 128GB

Apple gọi iPhone 13 Pro là thiết bị được tạo ra cho ánh sáng yếu, bởi hệ thống camera được hỗ trợ chế độ ban đêm Night Mode, trang bị máy quét LiDAR (khả dụng cho chế độ chụp chân dung ban đêm), camera Wide nâng cao độ sáng đến 2.2 lần, camera Ultra Wide tăng 92% độ sáng cho phép quay chụp lại các hình ảnh, thước phim ban đêm cực kỳ chi tiết, sắc nét. 

Chế độ đêm Night Mode - iPhone 13 Pro 128GB

Hệ thống camera zoom quang học 6x, riêng camera telephoto có thể zoom quang 3x rất tuyệt khi chụp ảnh và quay video ở xa. Kết hợp nhiều tùy chọn hiệu ứng bokeh và các hiệu ứng ánh sáng chất lượng để bạn tạo nên những bức ảnh lung linh như nhiếp ảnh gia chuyên nghiệp. 

Ảnh chụp trên camera - iPhone 13 Pro 128GB

Một chế độ nổi bật khác hỗ trợ trên camera Pro này là chế độ điện ảnh Cinematic cho phép quay với độ sâu trường ảnh nông, tự động thêm các chuyển đổi lấy nét giữa các đối tượng, đoán trước chủ thể mới vào khung hình và đưa họ vào tiêu điểm, đổi tiêu điểm, chỉnh hiệu ứng bokeh dễ dàng kể cả sau khi quay.

Chế độ điện ảnh độc đáo - iPhone 13 Pro 128GB

Có chế độ chụp phong cảnh Photographic Styles dễ dàng điều chỉnh độ ấm, tông màu phù hợp với ý tưởng chụp của bạn, tuy vậy khác với các bộ lọc thông thường, với chế độ này các chi tiết như bầu trời, màu da sẽ được giữ lại độ chân thật, tự nhiên nhất có thể. 

Chế độ chụp phong cảnh Photographic Styles - iPhone 13 Pro 128GB

Ở mặt trước điện thoại có camera TrueDepth độ phân giải 12 MP cho bạn tự selfie tuyệt đẹp, đi kèm nhiều chế độ chụp tiện ích như chế độ chân dung tích hợp hiệu ứng bokeh nâng cao và kiểm soát độ sâu mạnh mẽ, thêm Animoji và Memoji, chế độ Night Mode, Burst, Cinematic,...

Camera TrueDepth - iPhone 13 Pro 128GB

Hơn nữa, camera TrueDepth và chip A15 Bionic hỗ trợ Face ID để xác minh khuôn mặt, giúp mở máy nhanh và an toàn hơn. 

Cả camera trước và sau đều quay được video HDR hỗ trợ Dolby Vision đạt chuẩn chất lượng lên đến 4K với tốc độ khung hình 60 fps, quay video ProRes lên đến 1080p ở tốc độ 30 fps, cùng nhiều chế độ quay khác giúp bạn có nhiều sự thay đổi khác nhau khi quay.

Hỗ trợ quay video đạt chất lượng 4K - iPhone 13 Pro 128GB

Hiệu năng đột phá với Apple A15 Bionic
iPhone 13 Pro được trang bị bộ vi xử lý Apple A15 Bionic, sản xuất trên tiến trình 5 nm cải tiến, theo Apple công bố thì đây là chipset nhanh nhất trong thế giới smartphone tại thời điểm 09/2021.

Vi xử lý Apple A15 Bionic - iPhone 13 Pro 128GB

Tích hợp chip đồ họa GPU 5 lõi hiệu suất tăng lên 50%, CPU đáp ứng đa dạng tác vụ, nâng cao tuổi thọ pin. Đặc biệt, công nghệ trí tuệ nhân tạo Neural Engine tăng tốc các tác vụ máy học, thực hiện được đến 15.8 nghìn tỷ hoạt động mỗi giây, cho quá trình sử dụng thiết bị mượt mà, ổn định.

Đồ họa mượt mà - iPhone 13 Pro 128GB

Máy sở hữu con RAM 6 GB, bộ nhớ trong 128 GB, vừa đủ với nhu cầu sử dụng của một người dùng cơ bản không có nhu cầu quay video quá nhiều, máy cũng có thêm phiên bản bộ nhớ trong lên đến iPhone 13 Pro 1 TB, bạn có thể cân nhắc nếu có nhu cầu lưu trữ cao.

Dung lượng bộ nhớ - iPhone 13 Pro 128GB

Ngoài ra, máy còn được hỗ trợ mạng di động 5G chất lượng cao, có khả năng phản hồi tức thì, việc tải xem, xem phim 4K,... sẽ vô cùng nhanh chóng, đưa trải nghiệm internet của người dùng lên tầm cao mới.

Hỗ trợ kết nối 5G - iPhone 13 Pro 128GB

Thiết bị được cài đặt nền tảng iOS 15 cho bạn vừa giao tiếp qua FaceTime vừa chia sẻ bài hát, tài liệu với mọi người tiện lợi, dễ dàng tương tác với văn bản trong hình ảnh để gửi email, nhận chỉ đường, thực hiện cuộc gọi,... 

Nền tảng IOS 15 - iPhone 13 Pro 128GB

Nâng cấp thời lượng pin
iPhone 13 Pro sẽ có thời lượng pin sử dụng tốt hơn 1.5 tiếng khi so với iPhone 12 Pro, máy có thể phát video liên tục trong 22 tiếng, nghe nhạc trong 75 tiếng và hỗ trợ sạc nhanh 20 W qua cáp.

Tối ưu hóa năng lượng - iPhone 13 Pro 128GB

Lưu ý: Củ sạc 20 W sẽ không đi kèm trong hộp khi mua máy.

Ngoài ra còn hỗ trợ sạc không dây chuẩn Qi 7.5 W, sạc không dây MagSafe 15 W bạn có thể lựa chọn phương pháp sạc phù hợp và tiện lợi nhất trong quá trình sử dụng.

Sạc không dây với MagSafe - iPhone 13 Pro 128GB

Dung lượng pin trên iPhone luôn thấp hơn khi so với các dòng máy Android nhưng việc trang bị chipset mới cùng sự tối ưu hoá của hệ điều hành sẽ đảm bảo thời lượng sử dụng không hề thua kém trên sản phẩm Android, thậm chí còn có thể vượt trội hơn. 

iPhone 13 Pro với thiết kế cứng cáp, sang trọng cùng khả năng nhiếp ảnh ấn tượng, sẽ là một sản phẩm phục vụ tốt các nhu cầu của bạn cũng như là một món đồ thời trang hiện đại.

Xem thêm
128GB 256GB 512GB 1TB
Vàng đồng Xanh Dương Xám Bạc
Thông tin sản phẩm tại Hồ Chí Minh
30.990.000₫
HÀNG SẮP VỀ
Cấu hình Điện thoại iPhone 13 Pro 128GB

Màn hình:

OLED6.1"Super Retina XDR
Hệ điều hành:

iOS 15
Camera sau:

3 camera 12 MP
Camera trước:

12 MP
Chip:

Apple A15 Bionic
RAM:

6 GB
Bộ nhớ trong:

128 GB
SIM:

1 Nano SIM & 1 eSIMHỗ trợ 5G
Pin, Sạc:

3095 mAh20 W
Xem thêm cấu hình chi tiết
')
INSERT [dbo].[CHITIETTB] ([MATB], [TENTB], [GIATHANH], [MANHINH], [HDH], [Camerasau], [cameratruoc], [chip], [ram], [bonho], [sim], [pinxac], [HINHANH1], [HINHANH2], [HINHANH3], [HINHANH4], [HINHANH5], [HINHANH6], [chitiet]) VALUES (4, N'Điện thoại Samsung Galaxy S21 Ultra 5G 128GB', 25990000, N'Dynamic AMOLED 2X6.8"Quad HD+ (2K+)', N'Android 11                    ', N'Chính 108 MP & Ph? 12 MP, 10 MP, 10 MP  ', N'40 MP               ', N'40 MP                                   ', N'12 GB                         ', N'128 GB                        ', N'2 Nano SIM ho?c 1 Nano SIM + 1 eSIMH? tr? 5G', N'5000 mAh25 W                  ', N's21.1.jpg                     ', N's21.2.jpg                     ', N's21.3.jpg                     ', N's21.4.jpg                     ', N's21.5.jpg                     ', N's21.6.jpg                     ', N'Sự đẳng cấp được Samsung gửi gắm thông qua chiếc smartphone Galaxy S21 Ultra 5G với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong, hứa hẹn đáp ứng trọn vẹn nhu cầu ngày càng cao của người dùng.
Đột phá trong thiết kế thời thượng
Không chỉ đơn thuần phục vụ giao tiếp và giải trí, Samsung Galaxy S21 Ultra 5G còn chính là món phụ kiện thời trang khẳng định vị thế của người sở hữu. Vẻ ngoài mảnh mai và thon gọn đến bất ngờ chỉ 165.1 x 75.6 x 8.9 mm và trọng lượng 228 g dù phải “vác” một viên pin lớn')
INSERT [dbo].[CHITIETTB] ([MATB], [TENTB], [GIATHANH], [MANHINH], [HDH], [Camerasau], [cameratruoc], [chip], [ram], [bonho], [sim], [pinxac], [HINHANH1], [HINHANH2], [HINHANH3], [HINHANH4], [HINHANH5], [HINHANH6], [chitiet]) VALUES (5, N'Laptop Apple MacBook Air M1 2020 16GB/512GB/7-core  ', 37490000, N'13.3"Retina (2560 x 1600)', N'Mac OS                        ', N'No                                      ', N'720p FaceTime Camera', N'i7                                      ', N'16 GB                         ', N'512 GB                        ', N'No', N'Kho?ng 10 ti?ng               ', N'mac1.jpg                      ', N'mac2.jpg                      ', N'mac3.jpg                      ', N'mac4.jpg                      ', N'mac5.jpg                      ', N'mac6.jpg                      ', N'Laptop Apple MacBook Air M1 2020 có thiết kế đẹp, sang trọng với CPU M1 độc quyền từ Apple cho hiệu năng đồ họa cao, màn hình Retina hiển thị siêu nét cùng với hệ thống bảo mật tối ưu.
Hiệu năng ấn tượng đến từ chip M1
Chip M1 được Apple thiết kế dành riêng cho MacBook mang đến hiệu năng vượt trội. Thực hiện tốt các tác vụ văn phòng trên các phần mềm như Word, Excel, Powerpoint,... Thiết kế đồ hoạ cũng chuyên nghiệp không kém, cho phép bạn chỉnh sửa hình ảnh với dung lượng lớn, kết xuất 2D mượt mà trên các phần mềm Photoshop, AI, Figma,...

Card đồ họa GPU 7 nhân đem lại hiệu suất cao đáng kinh ngạc, đồ họa cao hơn gấp 5 lần, thảo sức sáng tạo nội dung, kết xuất 3D ổn định, render video, phát trực tiếp với chất lượng cao với chất ảnh sắc nét cùng độ phân giải lên đến 4K.')
INSERT [dbo].[CHITIETTB] ([MATB], [TENTB], [GIATHANH], [MANHINH], [HDH], [Camerasau], [cameratruoc], [chip], [ram], [bonho], [sim], [pinxac], [HINHANH1], [HINHANH2], [HINHANH3], [HINHANH4], [HINHANH5], [HINHANH6], [chitiet]) VALUES (6, N'Laptop Acer Nitro 5 Gamin 57 50FT i5  ', 26490000, N'15.6"Full HD ', N'Windows 10 Home SL            ', N'No                                      ', N'720p FaceTime Camera', N'i7                                      ', N'16 GBDDR4 2 khe               ', N'512 GB SSD                    ', N'No', N'Kho?ng 10 ti?ng               ', N'acer1.jpg                     ', N'acer2.jpg                     ', N'acer3.jpg                     ', N'acer4.jpg                     ', N'acer5.jpg                     ', N'acer6.jpg                     ', N'Laptop Acer Aspire A315 56 308N i3 (NX.HS5SV.00C) là mẫu laptop học tập văn phòng thuộc phân khúc giá thấp. Máy trang bị vi xử lý thế hệ mới của Intel, cho hiệu năng đủ dùng đối với các nhu cầu cơ bản, phù hợp với học sinh và sinh viên.
Chip xử lý tân tiến nhất
Laptop Acer Aspire A315 sử dụng vi xử lý Intel Core i3 thế hệ 10, cho hiệu năng ổn định, hỗ trợ bạn xử lý tốt các tính năng văn phòng như soạn thảo văn bản trên Word, nhập liệu qua Excel,... với tốc độ CPU đạt 1.20 GHz và ép xung tối đa lên đến 3.4 GHz nhờ Turbo Boost.

Máy trang bị sẵn 4 GB RAM và một khe trống để người dùng có thể nâng cấp RAM lên tối đa 12 GB tối ưu nhu cầu học tập và làm việc cho bạn, đáp ứng tốt đa nhiệm, bạn có thể vừa duyệt web vừa nhập liệu hay viết báo cáo cùng một lúc')
INSERT [dbo].[CHITIETTB] ([MATB], [TENTB], [GIATHANH], [MANHINH], [HDH], [Camerasau], [cameratruoc], [chip], [ram], [bonho], [sim], [pinxac], [HINHANH1], [HINHANH2], [HINHANH3], [HINHANH4], [HINHANH5], [HINHANH6], [chitiet]) VALUES (7, N'Laptop MSI Gaming   i7 10750H/16GB/512GB/6GB', 31990000, N'15.6"Full HD ', N'Windows 10 Home SL            ', N'No                                      ', N'720p FaceTime Camera', N'i5                                      ', N'16 GB                         ', N'SSD 512 GB                    ', N'No', N'Kho?ng 10 ti?ng               ', N'msi1.jpg                      ', N'msi2.jpg                      ', N'msi3.jpg                      ', N'msi4.jpg                      ', N'msi5.jpg                      ', N'msi6.jpg                      ', N'Laptop Acer Aspire A315 56 308N i3 (NX.HS5SV.00C) là mẫu laptop học tập văn phòng thuộc phân khúc giá thấp. Máy trang bị vi xử lý thế hệ mới của Intel, cho hiệu năng đủ dùng đối với các nhu cầu cơ bản, phù hợp với học sinh và sinh viên.
Chip xử lý tân tiến nhất
Laptop Acer Aspire A315 sử dụng vi xử lý Intel Core i3 thế hệ 10, cho hiệu năng ổn định, hỗ trợ bạn xử lý tốt các tính năng văn phòng như soạn thảo văn bản trên Word, nhập liệu qua Excel,... với tốc độ CPU đạt 1.20 GHz và ép xung tối đa lên đến 3.4 GHz nhờ Turbo Boost.

Máy trang bị sẵn 4 GB RAM và một khe trống để người dùng có thể nâng cấp RAM lên tối đa 12 GB tối ưu nhu cầu học tập và làm việc cho bạn, đáp ứng tốt đa nhiệm, bạn có thể vừa duyệt web vừa nhập liệu hay viết báo cáo cùng một lúc')
GO
INSERT [dbo].[chucVu] ([maCV], [tenCV]) VALUES (1, N'Admin')
INSERT [dbo].[chucVu] ([maCV], [tenCV]) VALUES (2, N'Nhân Viên')
INSERT [dbo].[chucVu] ([maCV], [tenCV]) VALUES (3, N'Nhân Viên Quản Lý')
INSERT [dbo].[chucVu] ([maCV], [tenCV]) VALUES (4, N'Khách hàng')
GO
INSERT [dbo].[HangSanXuat] ([MAHSX], [TENHSX]) VALUES (1, N'Apple')
INSERT [dbo].[HangSanXuat] ([MAHSX], [TENHSX]) VALUES (2, N'Samsung')
INSERT [dbo].[HangSanXuat] ([MAHSX], [TENHSX]) VALUES (3, N'Oppo')
INSERT [dbo].[HangSanXuat] ([MAHSX], [TENHSX]) VALUES (4, N'Acer')
INSERT [dbo].[HangSanXuat] ([MAHSX], [TENHSX]) VALUES (5, N'MSI')
GO
INSERT [dbo].[loaiTB] ([loaiTB], [tenLoai]) VALUES (1, N'Điện thoại')
INSERT [dbo].[loaiTB] ([loaiTB], [tenLoai]) VALUES (2, N'Laptop')
INSERT [dbo].[loaiTB] ([loaiTB], [tenLoai]) VALUES (3, N'Máy tính bảng')
INSERT [dbo].[loaiTB] ([loaiTB], [tenLoai]) VALUES (4, N'Phụ kiện')
INSERT [dbo].[loaiTB] ([loaiTB], [tenLoai]) VALUES (5, N'Đồng hồ thông minh')
INSERT [dbo].[loaiTB] ([loaiTB], [tenLoai]) VALUES (7, N'Tai nghe không dây')
GO
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [ngaysinh], [diaChi], [ngayVaoLam], [hinhanh], [luong], [maCV], [email], [soDT]) VALUES (0, N'Nguyễn Thiện Quang', NULL, NULL, NULL, N'admin.jpg                     ', NULL, 1, N'admin@gmail.com                         ', NULL)
GO
INSERT [dbo].[THIETBI] ([MATB], [TENTB], [GIATHANH], [HINHANH], [SOLUONG], [LOAITB], [MAHSX]) VALUES (1, N'Điện thoại iPhone 12 64GB ', 24000000, N'iphone12_den.jpg                                  ', 300, 1, 1)
INSERT [dbo].[THIETBI] ([MATB], [TENTB], [GIATHANH], [HINHANH], [SOLUONG], [LOAITB], [MAHSX]) VALUES (2, N'Điện thoại Samsung Galaxy Z Fold3 5G 512GB ', 43990000, N'ssf3_1.jpg                                        ', 300, 1, 2)
INSERT [dbo].[THIETBI] ([MATB], [TENTB], [GIATHANH], [HINHANH], [SOLUONG], [LOAITB], [MAHSX]) VALUES (3, N'Điện thoại iPhone 13 Pro Max 128GB ', 33990000, N'13.1.jpg                                          ', 300, 1, 1)
INSERT [dbo].[THIETBI] ([MATB], [TENTB], [GIATHANH], [HINHANH], [SOLUONG], [LOAITB], [MAHSX]) VALUES (4, N'Điện thoại Samsung Galaxy S21 Ultra 5G 128GB ', 25990000, N's21.1.jpg                                         ', 300, 1, 1)
INSERT [dbo].[THIETBI] ([MATB], [TENTB], [GIATHANH], [HINHANH], [SOLUONG], [LOAITB], [MAHSX]) VALUES (5, N'Laptop Apple MacBook Air M1 2020 16GB/512GB/7', 37490000, N'mac1.jpg                                          ', 342, 2, 1)
INSERT [dbo].[THIETBI] ([MATB], [TENTB], [GIATHANH], [HINHANH], [SOLUONG], [LOAITB], [MAHSX]) VALUES (6, N'Laptop Acer Nitro 5 Gaming  i516GB/512GB ', 26490000, N'acer1.jpg                                         ', 321, 2, 4)
INSERT [dbo].[THIETBI] ([MATB], [TENTB], [GIATHANH], [HINHANH], [SOLUONG], [LOAITB], [MAHSX]) VALUES (7, N'Laptop MSI Gaming i7 10750H/16GB/512GB/6GB ', 31990000, N'msi1.jpg                                          ', 1000, 2, 5)
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD FOREIGN KEY([maCV])
REFERENCES [dbo].[chucVu] ([maCV])
GO
ALTER TABLE [dbo].[CHITIETTB]  WITH CHECK ADD  CONSTRAINT [fk_macttb] FOREIGN KEY([MATB])
REFERENCES [dbo].[THIETBI] ([MATB])
GO
ALTER TABLE [dbo].[CHITIETTB] CHECK CONSTRAINT [fk_macttb]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [fk_matb] FOREIGN KEY([MATB])
REFERENCES [dbo].[THIETBI] ([MATB])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [fk_matb]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([maCV])
REFERENCES [dbo].[chucVu] ([maCV])
GO
ALTER TABLE [dbo].[THIETBI]  WITH CHECK ADD  CONSTRAINT [fk_loaitb] FOREIGN KEY([LOAITB])
REFERENCES [dbo].[loaiTB] ([loaiTB])
GO
ALTER TABLE [dbo].[THIETBI] CHECK CONSTRAINT [fk_loaitb]
GO

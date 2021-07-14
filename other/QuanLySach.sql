create database QuanLySach_ThaoLe
go
use QuanLySach_ThaoLe
go
create table KhachHang
(
	MaKhachHang int identity(1,1) primary key,
	HoTen nvarchar(50) not null,
	TaiKhoan varchar(50),
	MatKhau nvarchar(50),
	Email nvarchar(100),
	DiaChi nvarchar(500),
	DienThoai varchar(12),
	GioiTinh nvarchar(5),
	NgaySinh datetime,
	TrangThai int default(0),
)
go
insert into KhachHang (HoTen, TaiKhoan, MatKhau, Email, DiaChi, DienThoai, GioiTinh, NgaySinh)
values (N'Thảo Lê', 'thaole', 'abc123', 'ThaoLe@gmail.com', N'Hà Tĩnh', '0975252514', 'Nữ', '6/7/1999');
insert into KhachHang (HoTen, TaiKhoan, MatKhau, Email, DiaChi, DienThoai, GioiTinh, NgaySinh)
values (N'Trần Như Tuyết', 'tuyet', 'abc123', 'Tuyet@gmail.com', N'Hà Nội', '0971010265', 'Nữ', '1/2/1995');
insert into KhachHang (HoTen, TaiKhoan, MatKhau, Email, DiaChi, DienThoai, GioiTinh, NgaySinh)
values (N'Phan Tấn Đẩu', 'tandau', 'abc123', 'TanDau@gmail.com', N'Khánh Hòa', '0346857452', 'Nam', '12/12/2000');
insert into KhachHang (HoTen, TaiKhoan, MatKhau, Email, DiaChi, DienThoai, GioiTinh, NgaySinh)
values (N'Quách Trương', 'quachtruong', 'abc123', 'QuachTruong@gmail.com', N'Khánh Hòa', '0635241254', 'Nam', '6/7/1998');
insert into KhachHang (HoTen, TaiKhoan, MatKhau, Email, DiaChi, DienThoai, GioiTinh, NgaySinh)
values (N'Khách Hàng', 'abc', 'abc123', 'ThaoLe@gmail.com', N'Hà Tĩnh', '0365254251', 'Nữ', '6/7/1999');
go
create table TacGia
(
	MaTacGia int identity (1,1) primary key,
	TenTacGia nvarchar(100) ,
	Diachi nvarchar(200),
	TieuSu nvarchar(100),
	DienThoai varchar(12)
)
go
insert into TacGia (TenTacGia, DiaChi, TieuSu, DienThoai) values (N'Nam Cao',N'Hà Nam',N'một trong những nhà văn tiêu biểu thế kỷ 20','0971010282');
insert into TacGia (TenTacGia, DiaChi, TieuSu, DienThoai) values (N'Xuân Diệu',N'Binh Định',N'ông hoàng thơ tình','072352456');
insert into TacGia (TenTacGia, DiaChi, TieuSu, DienThoai) values (N'Nguyễn Du',N'Thăng Long',N'Đại thi hào dân tộc','0349758544');
insert into TacGia (TenTacGia, DiaChi, TieuSu, DienThoai) values (N'Hoàng Thi Thơ',N'Quảng Trị',N'là một nhạc sĩ Việt Nam','0971010283');
insert into TacGia (TenTacGia, DiaChi, TieuSu, DienThoai) values (N'Nguyễn Du',N'Hà Nội',N'Nhà văn học Việt Nam','0635241254');
go
create table ChuDe
(
	MaChuDe int identity(1,1) primary key,
	TenChuDe nvarchar(50) not null
)
go
insert into ChuDe (TenChuDe) values (N'Tin Học');
insert into ChuDe (TenChuDe) values (N'Văn Học');
insert into ChuDe (TenChuDe) values (N'Khoa Học');
insert into ChuDe (TenChuDe) values (N'Nhân Văn Học');
insert into ChuDe (TenChuDe) values (N'Kinh Tế');
insert into ChuDe (TenChuDe) values (N'Pháp Luật');
insert into ChuDe (TenChuDe) values (N'Giáo Trình');
insert into ChuDe (TenChuDe) values (N'Kinh Tế');
insert into ChuDe (TenChuDe) values (N'Sách Thiếu Nhi');
insert into ChuDe (TenChuDe) values (N'Du Lịch');
insert into ChuDe (TenChuDe) values (N'Mỹ Thuật');
insert into ChuDe (TenChuDe) values (N'Âm Nhạc');
insert into ChuDe (TenChuDe) values (N'Y Học');
insert into ChuDe (TenChuDe) values (N'Tin Học');
insert into ChuDe (TenChuDe) values (N'Sách Khác');
go
create table NhaXuatBan
(
	MaNXB int identity(1,1) primary key,
	TenNXB nvarchar(50) ,
	DiaChi nvarchar(200),
	DienThoai varchar(12)
)
go
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Kim đồng',N'55 Quang Trung, Hai Bà Trưng, Hà Nội','02439434730');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Trẻ',N'161B Lý Chính Thắng, Phường 7, Quận 3, Thành phố Hồ Chí Minh.','02839316289');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Chính trị quốc gia',N'Số 24 Quang Trung, Hoàn Kiếm, Hà Nội.','028049221');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Giáo dục',N'81 Trần Hưng Đạo, Hà Nội',' 02438220801');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Lao động',N'175 Giảng Võ, Đống Đa, Hà Nội','02438515380');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Hà Nội',N'Số 65 Nguyễn Du, Hà Nội','02438222135');
insert into NhaXuatBan (TenNXB, DiaChi, DienThoai) values (N'NXB Văn Học',N' P. Trúc Bạch, Q. Ba Đình, Tp. Hà Nội','842437161518');
go
create table DonHang
(
	MaDonHang int identity(1,1) primary key,
	DaThanhToan int default(0),
	TinhTrangGiaoHang int default(0),
	NgayDat date default(getdate()),
	NgayGiao date,
	MaKhachHang int,
	foreign key (MaKhachHang) references KhachHang(MaKhachHang) on delete cascade on update cascade,
)
go
create table Sach
(
	MaSach int identity(1,1) primary key,
	TenSach nvarchar(200) ,
	GiaBan decimal(18,0),
	MoTa nvarchar(max),
	AnhBia nvarchar(max),
	NgayCapNhat datetime default(getdate()),
	SoLuongTon int,
	SoLuongDaBan int default(0),
	Moi int,

	MaNXB int not null,
	MaChuDe int not null,
	foreign key (MaNXB) references NhaXuatBan(MaNXB) on delete cascade on update cascade,
	foreign key (MaChuDe) references ChuDe(MaChuDe) on delete cascade on update cascade,
)
go

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'TIN HỌC VĂN PHÒNG - CÔNG THỨC & HÀM EXCEL','36000',N'Tin Học Văn Phòng - Công Thức & Hàm Excel

- Khám phá và khai thác triệt để sức mạnh của công thức và hàm trong excel.

- Học cách tạo công thức mới, hiệu chỉnh công thức tự tạo, ứng dụng các công thức ấy trong tính toán và phân tích.

- Theo dõi tình hình tài chính cá nhân bằng excel.',N'image_140616.jpg','01/01/2017','100','2','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'XỬ LÝ ẢNH PHOTOSHOP CS5 ','56160',N'Dù bạn là người đã biết hay chưa từng sử dụng phần mềm này, bộ sách Photoshop CS5 dành cho người tự học gồm 4 tập là những tài liệu bạn cần có để trở thành một chuyên gia xử lý hình ảnh. Với những hướng dẫn, minh họa rõ ràng sẽ giúp bạn nắm vững và khám phá các đặc tính mới của Photoshop CS5 và ứng dụng trong công việc thực tế một cách hiệu quả nhất.',N'image_106956.jpg','06/06/2013','30','2','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'CHÍ PHÈO ','35100',N'...Cả làng Vũ Đại nhao lên. Họ bàn tán rất nhiều về vụ án không ngờ ấy. Có kẻ mừng thầm. Không thiếu kẻ mừng ra mặt. Có người nói xa xôi: Trời có mắt đấy, anh em ạ!. Người khác thì nói toạc: Thằng nào chứ hai thằng ấy chết thì không ai tiếc! Rõ thật bọn chúng nó giết nhau, nào có phải cần đến tay người khác đâu...',N'image_67304.jpg','10/10/2014','5','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'SỐNG MÒN (TRÍ VIỆT)','40120',N'Sống mòn hoàn thành vào năm 1944, xuất bản ban đầu với tên gọi Chết mòn năm 1956. Trong tác phẩm, Nam Cao đã miêu tả sâu sắc tấn bi kịch tinh thần của người trí thức nghèo trong xã hội cũ. Họ là những người có ý thức rất cao về nhân phẩm và danh dự, có khát vọng - hoài bão văn chương lớn lao nhưng lại bị gánh nặng cơm áo gạo tiền bóp nghẹt sự sống.',N'image_113908.jpg','01/08/2016','12','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'LUẬT NGÂN HÀNG NHÀ NƯỚC VIỆT NAM','6640',N'Luật Ngân Hàng Nhà Nước Việt Nam',N'image_79415.jpg','01/04/2014','15','3','5');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'TÁC GIẢ TRONG NHÀ TRƯỜNG','25840',N'Bộ Sách Phê Bình Và Bình Luận Văn Học giới thiệu những bài viết của nhiều tác giả khác nhau về các "Tác Giả Trong Nhà Trường" như: Nam Cao, Xuân Diệu, Vũ Trọng Phụng, Nguyễn Trãi, Nguyễn Công Hoan, Nguyễn Đình Chiểu, Ngô Tất Tố, Tố Hữu, Hồ Xuân Hương và Nguyễn Du…',N'image_128447.jpg','01/04/2016','32','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'TRUYỆN KIỀU', '195000', N'Ấn bản Truyện Kiều này là công trình khảo đính và chú giải của ông, một công trình được xem là mang tính khuôn mẫu choviệc xử lý các văn bản Hán-Nôm sau này do ông đảm nhiệm. Từ năm 1972 đến nay, bản Kiều này đã được tái bản 33 lần với số lượng hơn 200.000 bản, trở thành một trong các bản Kiều được tái bản nhiều nhất trong hơn bốn thập kỷ qua.', N'tk.jpg', '01/10/2017', '5','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'HỒ CHÍ MINH THƠ VÀ ĐỜI','48360',N'Cuốn sách gồm hai phần:Phần một: tác phẩmPhần hai: về tác phẩm và cuộc đời Hồ Chí Minh.',N'hcmtvd.png','06/06/2016','15','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'TỤC NGỮ, CA DAO, DÂN CA VIỆT NAM','58500',N'Tục Ngữ, Ca Dao, Dân Ca Việt Nam Xấu lá gói chẳng đặng nem Bởi anh chậm bước nên em có chồng Cá xuống sông còn mến nước trên đồng Sao em lấy chồng không ở vậy chờ anh?',N'tncdvn.jpg','01/12/2015','50','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'MỌI CHUYỆN ĐỀU LÀ LỖI CỦA EM','61620',N'Những câu chuyện buồn nhưng nhìn từ một phương diện khác lại là thông điệp về hạnh phúc theo hướng tích cực. Đó là những tiếng yêu chân thành, nhẹ nhàng, dung dị và đầy thi vị',N'mcdllce.jpg','01/01/2018','40','6','4');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'MỖI NGÀY NHÌN LẠI','67260',N'“Mỗi ngày tồn tại trên một thân xác khác nhau. Mỗi ngày sống một cuộc đời khác nhau. Nhưng dù vậy, mỗi ngày trôi qua vẫn chỉ yêu duy nhất một cô gái”',N'mnnl.jpg','01/01/2018','32','7','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Cô Gái Đến Từ Hôm Qua','57600',N'ô gái đến từ hôm qua được ví như một cuốn phim của quá khứ và hiện tại được ngòi bút tài hoa của tác giả dẫn dắt ta đi từ bất ngờ này đến thú vị khác. ',N'cgdthq.JPG','01/06/2017','15','2','15');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'CUỐN THEO CHIỀU GIÓ','13500',N'Lấy bối cảnh từ cuộc nội chiến vô cùng khốc liệt giữa Bắc và Nam Mỹ, Cuốn Theo Chiều Gió với cốt truyện rõ ràng, logic, dễ hiểu, đã khắc họa một cách tài tình tâm trạng, tính cách và thân phận của nhiều lớp người trong chiến tranh và thời hậu chiến.',N'ctcg.jpg','11/12/2014','13','7','11');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'TUYỂN TẬP-TRỊNH CÔNG SƠN','15000',N'Nhạc của Trịnh Công Sơn không tuyền là nhạc, bài hát không chỉ là bài hát. ',N'tcs.jpg','01/01/2008','3','7','14');
insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'THÁM TỬ LỪNG DANH CONAN - TẬP 94','16600',N'Dạo gần đây, Ran có những biểu hiện rất kì lạ... Trong lòng lo lắng không yên, Conan cùng thám tử Kogoro bắt đầu theo dõi cô...!? ',N'cn94.jpg','11/5/2018','100','1','7');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'MẮT BIẾC','46900',N'"Tôi không thể bắt Hà Lan phải giống tôi.
Tôi khác. Không ai bắt tôi phải hoài vọng kỷ niệm.
 Không ai bắt tôi phải nhớ da diết cái làng nhỏ xa xăm của mình mỗi khi chiều xuống',N'mb.jpg','11/02/2011','15','2','2');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'TÔI THẤY HOA VÀNG TRÊN CỎ XANH','61500',N'Tác giả vẫn giữ cách kể chuyện bằng chính giọng trong sáng hồn nhiên của trẻ con. 81 chương ngắn là 81 câu chuyện hấp dẫn với nhiều chi tiết thú vị, cảm động, có những tình tiết bất ngờ, từ đó lộ rõ tính cách người. Cuốn sách, vì thế, có sức ám ảnh.',N'tthvtcx.jpg','12/01/2012','10','2','7');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'BẢY BƯỚC TỚI MÙA HÈ','71250',N'Câu chuyện về một mùa hè ngọt ngào, những trò chơi nghịch ngợm và bâng khuâng tình cảm tuổi mới lớn. Chỉ vậy thôi nhưng chứng tỏ tác giả đúng là nhà kể chuyện hóm hỉnh, khiến người đọc cuốn hút từ tựa đến trang cuối cùng, có lẽ chính vì giọng văn giản dị và trong trẻo của Nguyễn Nhật Ánh',N'bbdmh.jpg','01/03/2015','7','2','7');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'NGỮ PHÁP TIẾNG ANH THỰC HÀNH ','79500',N'Ngữ Pháp Tiếng Anh Thực Hành gồm 5 chương, trình bày những chủ điểm ngữ pháp tiếng Anh từ cơ bản đến nâng cao, phù hợp với mọi trình độ',N'nptath.jpg','01/10/2016','34','7','8');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'GIẢI THÍCH NGỮ PHÁP TIẾNG ANH','85000',N'Sách được biên soạn thành 18 chương, đề cập đến những vấn đề ngữ pháp từ cơ bản như: danh từ, đại từ, tính từ, trạng từ, so sánh tính từ và trạng từ, động từ, giới từ, cụm động từ, liên từ…',N'gtnpta.jpg','10/05/2016','4','4','8');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'BỮA TIỆC CỦA PINKIE','17100',N'',N'btcp.jpg','11/11/2016','30','5','7');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'ĐIỀU KHIỂN LOGIC LẬP TRÌNH PLC','35000',N'',N'dkltlg.jpg','12/11/2011','35','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'ĐIỀU KHIỂN LOGIC LẬP TRÌNH PLC','35000',N'',N'dkltlg.jpg','12/11/2011','35','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Hành Trang Lập Trình','140000',N'Cuốn sách gồm 2 nội dung chính:

• Chương I: Phần này trình bày những suy nghĩ và kĩ năng mềm cần thiết để bạn có thể hòa nhập và tiến xa được trong lĩnh vực công nghệ phần mềm. Nội dung trong phần này lại được chia thành những mục nhỏ hơn tương ứng với từng giai đoạn học tập và làm việc:

o Giai đoạn 1 – Học nghề: Trình bày những thái độ và kĩ năng học tập cần thiết để có thể học tập hiệu quả ở trường, cũng như chuẩn bị hành trang cho quá trình làm việc sau này.

o Giai đoạn 2 – Vào nghề: Cung cấp một vài thông tin hữu ích liên quan tới việc tìm kiếm và ứng tuyển vào những công ty công nghệ, phần này cũng đưa ra vài góc nhìn liên quan tới việc đánh giá và so sánh nơi làm việc để bạn tìm ra được công ty phù hợp.

o Giai đoạn 3 – Phát triển trong nghề: Sau khi đã tìm được nơi làm việc, phần này sẽ trình bày những suy nghĩ và cách tư duy làm việc để giúp bạn có thể tiến bộ hơn trong sự nghiệp lập trình viên.',N'hanhtranglaptrinh.jpg','12/11/2011','35','4','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Kỹ Thuật Lập Trình C','100000',N'Giáo Trình Kỹ Thuật Lập Trình C Cơ Sở Và Nâng Cao

Cùng với sự phát triển như vũ bão của khoa học kỹ thuật nói chung, ngành Công nghệ Thông tin nói riêng đã và đang thâm nhập vào thực tiễn của mọi lĩnh vực trong cuộc sống và hoạt động của con người, trong đó công nghệ lập trình cũng không ngừng phát triển và ngày một ứng dụng rộng rãi hơn.Trong các ngôn ngữ lập trình, ngôn ngữ lập trình C từ lâu đã trở thành ngôn ngữ phổ biến vì tính đa dụng và linh hoạt của nó. Từ một nhà lập trình có tên tuổi cho đến một sinh viên công nghệ thông tin hoặc người yêu thích công nghệ thông tin đều không thể phủ nhận khả năng giải quyết vì xử lý nhanh một bài toán, từ đơn giản đến phức tạp, trên nhiều lĩnh vực khác nhau của ngôn ngữ C. Để đáp ứng nhu cầu mong muốn của nhiều bạn đọc, Nhà xuất bản Thông tin và Truyền thông trân trọng giới thiệu cuốn sách “Giáo trình Kỹ thuật lập trình C: Cơ sở và nâng cao” của PGS. TS Phạm Văn Ất, một tên tuổi quen thuộc với bạn đọc yêu thích ngôn ngữ C.',N'laptrinhc.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Giáo Trình C++ Và Lập Trình Hướng Đối Tượng','250000',N'Giáo Trình C++ Và Lập Trình Hướng Đối Tượng

Lập trình cấu trúc là phương pháp tổ chức, phân chia chương trình thành các hàm, thủ tục. Chúng được dùng để xử lý dữ liệu nhưng lại tách rời các cấu trúc dữ liệu.

Lập trình hướng đối tượng dựa trên việc tổ chức chương trình thành các lớp. Khác với hàm và thủ tục, lớp là một đơn vị bao gồm cả dữ liệu và các phương thức xử lý.',N'giaotrinhc.jpg', default,'5','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Tớ Học Lập Trình','35000',N'Cẩm nang hướng dẫn hoàn chỉnh và đơn giản nhất dành cho bạn trẻ bắt đầu học lập trình

Ngôn ngữ lập trình Scratch đặc biệt phù hợp cho bạn trẻ mới học, vì tính tương tác trực quan, đồ họa sống động, ra sản phẩm liền tay mà vẫn đảm bảo khoa học và liên thông tri thức sau này.

Chỉ cần nắm và kéo các khối lệnh đầy màu sắc có sẵn để lắp ghép thành một kịch bản điều khiển các đối tượng trên màn hình.

Không có những dòng lệnh logic khô cứng và dễ lỗi, những khái niệm kỹ thuật khó hiểu, những quy tắc luật lệ chằng chịt và mệt mỏi trong các ngôn ngữ lập trình kiểu người lớn.',N'tohoclaptrinh.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Lập Trình Với Scratch 3.0 (Tái Bản 2019)','35000',N'Lập Trình Với Scratch 3.0

“Lập trình với Scratch 3.0” là cuốn sách phiên bản mới của “Lập trình với Scratch” do VIETSTEM biên soạn. Dành riêng cho học sinh và người học bắt đầu làm quen với môn lập trình kéo thả. Thực hành - Trải nghiệm - Trực quan vẫn là phương pháp được áp dụng trong cách viết sách. Đặc biệt “Lập trình với Scratch 3.0” phù hợp cho các đơn vị, tổ chức giáo dục làm tài liệu giảng dạy cho học sinh.
Mục đích cuốn sách

Giới thiệu về ngôn ngữ lập trình kéo thả phổ biến nhất thế giới cho học sinh phổ thông, Scratch 3.0 (phiên bản mới, phát hành năm 2019). Cuốn sách kế thừa hoàn toàn những quan điểm về nội dung, cách trình bày của cuốn sách “Lập trình với Scratch” xuất bản năm 2016 tại NXBGD (viết cho phiên bản Scratch 2.0), đồng thời bổ sung những thông tin mới về giao diện, cách lập trình cũng như các khối lệnh của phiên bản Scratch 3.0.',N'scratch.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Lập Trình Quỹ Đạo Cuộc Đời','35000',N'Lập trình Quỹ Đạo Cuộc Đời đem đến cho bạn những hệ tư duy khiến bạn hiểu vấn đề một cách tường tận qua những ví dụ và lập luận logic. Bạn có cơ hội được đi sâu khám phá bản chất của mọi hành vi. Mình muốn bạn trước khi phát triển bản thân, có thể nhận thức được mọi thứ rõ như ban ngày. Đọc vị được chính bạn, sau đó đến người khác và các chiến thuật tồn tại ở cái thế kỷ XXI hỗn loạn này.',N'quydaocuocdoi.jpg', default,'8','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Lập Trình ToT Với Arduino - Esp8266 Và Xbee','35000',N'Sách được biên soạn cho người đã làm quen với Arduino, qua các bài tập thực hành cơ bản điều khiển Led đơn, LCD, Led ma trận, động cơ DC, động cơ servo, động cơ bước nay muốn lập trình hệ thống nhúng cũng như lập trình IOT nâng cao qua những ứng dụng điều khiển và thu nhận dữ liệu từ xa qua truyền không dâu (Wifi).

Tương ứng với từng bài tập đều có mã (code) chương trình với những giải thích giúp người học dễ theo dõi, cho phép một người có kiến thức cơ bản về Điện - Điện tử có thể từ ba tới năm ngày thực hành là bắt đầu khai thác và sử dụng Arduino trong lập trình IOT.',N'Arduino.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Ứng Xử Thông Minh Lập Trình Sự Nghiệp','35000',N'Trong văn phòng của bạn, sư cạnh tranh có thể không khôc liệt đến mức khiến người này tranh kẻ kia cướp, tuy nhiên nếu như bạn không muốn bản thân mình bị tổn thương, muốn công việc được giải quyết một cách thuận lợi và có một sự nghiệp tươi sáng, hãy là ngừoi thông minh trong giao tiếp, ứng xử với cấp trên, với đồng nghiệp và với khách hàng. Bên cạnh đó, hiểu rõ và biết cách nâng cao giá trị của bản thân, xây dựng cho mình một hình tượng chuyên nghiệp, khi cơ hội đến chỉ cần nhanh chóng nắm bắt, bạn sẽ trở thành một nhân vật sáng giá, không ai có thể thay thế được nơi công sở.

Minh họa độc đáo, ví dụ cụ thể, cùng những lời khuyên hữu ích, Ứng xử thông minh, lập trình sự nghiệp là cuốn sách chứa đựng đầy đủ những bài học cần biết về ứng xử và xây dựng hình ảnh bản thân dành cho những nhân viên trẻ, những người mới đi làm trong môi trường công sở.',N'laptrinhsunghiep.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Lập Trình Windows Form Và Web Form Với C#','35000',N'Sách gồm 3 phần:
Phần 1: Ứng dụng Windows form
Phần 2: Xây dụng ứng dụng quản lý bán hàng
Phần 3: Xây dụng ứng dụng quản lý tuyển sinh',N'winform.jpg', default,'6','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Người Trong Muôn Nghề: Ngành It Có Gì?','130000',N'"Học công nghệ thông tin rồi đi lắp máy tính với cài win dạo à?"

"Sao lại lao đầu vào cái nghề toàn số má với mấy dòng lệnh khó hiểu thế?"

"Dân làm máy tính vừa “đụt” vừa khô khan, ai yêu nổi, yêu nổi ai?"

"Lập trình khó lắm, chắc phải siêu sao toán mới học được."

"Làm công nghệ lương nghìn đô như bỡn!"

Đó chắc hẳn là những câu hội thoại, những lời đánh giá mà các bạn đang học/làm Công nghệ thông tin (CNTT) gặp phải ít nhất 1 lần trong đời, còn những người không theo học/làm CNTT từng nghĩ đến ít nhất 1 lần trong đời (trung thực với bản thân và thừa nhận đi!).

Trong quá trình thực hiện bộ sách hướng nghiệp cho các bạn trẻ, chúng tôi cũng không ngừng trăn trở: Ngành CNTT có thật sự như vậy không? Làm sao để giúp các bạn trẻ có được một cái nhìn toàn diện và khách quan nhất về lĩnh vực rộng lớn này? Những cuốn sách về CNTT hiện có trên thị trường thường là tài liệu nặng tính kỹ thuật dành cho dân chuyên ngành, hoặc những bài viết ngắn với thông tin khá chung chung, hoặc chỉ có góc nhìn từ một cá nhân nên thiếu tính đa chiều. Vậy là nhóm độc giả nằm “lưng chừng” như những bạn học sinh cấp 3, sinh viên Đại học và các bậc phụ huynh đang quan tâm, muốn tìm hiểu về ngành CNTT bị bỏ mặc “bơ vơ”, biết đọc gì đây?',N'nguoitrongmuonnghe.jpg', default,'10','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Code Dạo Kí Sự - Lập Trình Viên Đâu Phải Chỉ Biết Code','35000',N'Nếu các bạn có đọc các blog về lập trình ở Việt Nam thì có lẽ cái tên Tôi đi code dạo không có gì quá xa lạ đối với các bạn.

Về tác giả của blog Tôi đi code dạo, anh tên thật là Phạm Huy Hoàng, một Developer Full Stack, cựu sinh viên trường FPT University, hiện tại anh đang học Thạc sĩ Computer Science tại Đại học Lancaster ở Anh (học bổng $18000). Trước khi qua Xứ Sở Sương Mù, anh đã từng làm việc tại FPT Software và ASWIG Solutions.',N'codedao.jpg', default,'9','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Chạy Đua Với Robot','35000',N'Nhân loại đang trải qua một cuộc cách mạng khác trong cách loài người làm việc và kiếm sống – và một lần nữa, cuộc cách mạng này lại đốt bỏ những điều tưởng chừng hiển nhiên của quá khứ trong đống tro tàn lịch sử. Một lần nữa, công nghệ mới đã tạo tiền đề cho cách mạng. Nhưng thay vì là hạt giống, là máy dệt, hay là đầu máy hơi nước; động cơ của cuộc cách mạng này là công nghệ kỹ thuật số và robot.',N'chayduavoirobot.jpg', default,'1','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Hello World - Làm Người Trong Kỷ Nguyên Máy Móc','35000',N'“Hello World” là một đoạn mang tính nghi thức của những người học lập trình, nhiệm vụ đầu tiên của một người mới học là lập trình sao cho máy tính hiện ra cụm từ này. Nhưng đồng thời nó cũng là một lời nhắc nhở về thời khắc của cuộc đối thoại giữa con người và máy tính trong kỷ nguyên máy móc, đánh dấu sự khởi đầu của một mối quan hệ mà một bên không thể tồn tại nếu thiếu bên kia.',N'helloword.jpg', default,'20','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'AI - Trí Tuệ Nhân Tạo - 101 Điều Cần Biết Về Tương Lai','35000',N'Chính xác thì AI - trí tuệ nhân tạo là gì?
• Cách mạng Công nghiệp Lần thứ Tư là gì và nó liên quan đến trí tuệ nhân tạo như thế nào?
• Trí tuệ nhân tạo sẽ làm biến đổi những ngành nghề nào và biến đổi ra sao?
• Trí tuệ nhân tạo đang thay đổi thị trường lao động và việc làm theo hướng nào?
• Robot, xe hơi tự hành và cuộc sống của chúng ta?
• Cuộc chạy đua trí tuệ nhân tạo của các công ty công nghệ lớn
• Liệu trí tuệ nhân tạo có thể giúp chúng ta đạt được hoà bình thế giới? Hay chúng có khơi mào cho một cuộc chiến tranh công nghệ?
• Ta có thể chuẩn bị gì cho kỉ nguyên AI?',N'ai.jpg', default,'20','6','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Huyễn Tưởng Về Trí Tuệ Nhân Tạo','100000',N'Loài người đang bước vào kỷ nguyên máy móc, thời đại của Dữ liệu lớn, chứng kiến những khả năng siêu phàm mà máy tính đạt được: sở hữu bộ nhớ hoàn hảo, khả năng thu thập, xử lý và truy xuất lượng thông tin khổng lồ với tốc độ nhanh chóng mặt. Điều này đã khiến nhiều người lo sợ cho tương lai của nhân loại, một nỗi sợ hãi được bồi thêm và kích động bởi hàng loạt tên sách và phim ảnh giật gân.

Nhưng, bằng những lập luận, bằng chứng thông minh, dí dỏm từ các ví dụ thực tiễn trong kinh tế, chính trị, thống kê xã hội học, Gary Smith sẽ chứng minh cho chúng ta thấy, nỗi lo sợ đó đầy màu sắc huyễn tưởng.',N'huyentuongvetrituenhantao.jpg', default,'2','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'Phân Tích Dữ Liệu Với R (Tái Bản 2019)','35000',N'Cuốn sách bạn đang cầm trên tay là một nổ lực nhằm giới thiệu các phương pháp phân tích mô hình và thống kê phổ biến. các phương pháp gồm mô hình hồi qui tuyết tính, hồi qui logistic, phân tích tổng hợp (meta - anlysis), mô hình phân tích sống còn (survival anlysis), phương pháp phân tích chuỗi dữ liệu theo thời gian (time series data) phương pháp bayes, phương pháp bootstrap, v.v.. Với một nội dung khá rộng như thế, cuốn sách này sẽ giúp ích cho các nhà nghiên cứu, giảng viên cao đẳng và đại học, sinh viên, hay bất cứ ai muốn học về thống kê và phương pháp phân tích dữ liệu.',N'dulieur.jpg', default,'18','5','1');

insert into Sach(TenSach, GiaBan, MoTa, AnhBia, NgayCapNhat, SoLuongTon, MaNXB, MaChuDe) 
values (N'AI Trong Marketing','35000',N'Trong những năm gần đây, AI đã thúc đẩy sự phát triển nhảy vọt của các phương thức kinh doanh. Khi mà tối ưu hóa, tự động hóa quy trình sản xuất và hậu cần đang trở thành trọng tâm của Công nghiệp 4.0, AI ngày càng mở rộng phạm vi ảnh hưởng khi xâm nhập vào các quy trình quản lý, lập kế hoạch trong marketing và bán hàng, từ đó tạo tiền đề để công ty hướng đến ứng dụng dữ liệu và tự động hóa.

Trong cuốn sách “AI trong Marketing”, Peter Gentsch sẽ cung cấp cho chúng ta những thông tin về lịch sử phát triển của AI, cũng như cách áp dụng nó vào các lĩnh vực như thu thập dữ liệu khách hàng và ước lượng rủi ro, từ đó tối ưu hóa hiệu quả kinh doanh và đem lại lợi nhuận lớn nhất cho doanh nghiệp.',N'aitrongmarketting.jpg', default,'20','5','1');


























go
create table ChiTietDonHang
(
	MaDonHang int,
	MaSach int,
	primary key(MaDonHang, MaSach),
	SoLuong int ,
	DonGia decimal,
	foreign key (MaDonHang) references DonHang(MaDonHang) on delete cascade on update cascade,
	foreign key (MaSach) references Sach(MaSach) on delete cascade on update cascade,
)
go
create table ThamGia
(
	MaSach int,
	MaTacGia int,
	primary key(MaSach, MaTacGia),
	VaiTro nvarchar(50),
	ViTri nvarchar(50),
	foreign key (MaSach) references Sach(MaSach) on delete cascade on update cascade,
	foreign key (MaTacGia) references TacGia(MaTacGia) on delete cascade on update cascade,
)
go
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (1, 1, N'Biên Soạn', 'Nhân Viên');
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (2, 4, N'Biên Kiện', 'Nhân Viên');
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (3, 2, N'Thiết Kế', 'Giám Sát');
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (4, 4, N'CEO', 'Nhân Viên');
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (5, 2, N'Quản Lý', 'Giám Đốc');
insert into ThamGia (MaSach, MaTacGia, VaiTro, ViTri) values (3, 1, N'Thiết Kế', 'Nhân Viên');
-- ============================== cập nhật thêm csdl
Create table NhanVien
(
	TaiKhoanNV varchar(50) primary key,
	MatKhauNV varchar(50) not null,
	TenNhanVien nvarchar(50) not null,
	NgaySinh Date not null,
	GioiTinh nvarchar(10) null,
	Email varchar(50) null unique, -- email không được trùng
	SoDienThoai varchar(10) not null,
	QueQuan nvarchar(500) not null,
	Quyen int not null,
	TrangThai int default(0),

)
go
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, GioiTinh, Email, SoDienThoai, QueQuan, Quyen) 
values ('admin', 'admin123', 'Quản lý website', '2/2/1999', N'Nam', 'admin@gmail.com', '0971010281', N'Đà Nẵng',1);
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, GioiTinh, Email, SoDienThoai, QueQuan, Quyen) 
values ('admin2', 'admin123', 'Nhân Viên Giao Hàng', '2/2/1999', N'Nam', 'admin2@gmail.com', '0971010281', N'Đà Nẵng',2);
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, GioiTinh, Email, SoDienThoai, QueQuan, Quyen) 
values ('admin3', 'admin123', 'Quản lý website', '2/2/1999', N'Nam', 'admin3@gmail.com', '0971010281', N'Đà Nẵng',1);
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, GioiTinh, Email, SoDienThoai, QueQuan, Quyen) 
values ('adm', 'admin123', 'Quản lý website', '2/2/1999', N'Nam', 'admin4@gmail.com', '0971010281', N'Đà Nẵng',1);
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, GioiTinh, Email, SoDienThoai, QueQuan, Quyen) 
values ('admin5', 'admin123', 'Quản lý website', '2/2/1999', N'Nam', 'admin5@gmail.com', '0971010281', N'Đà Nẵng',1);
go
	--Bảng Phiếu Nhập--
Create table PhieuNhap
(
	MaPhieuNhap int identity(1,1) primary key,
	TenNhaCungCap int not null,
	TaiKhoanNV varchar(50) not null,
	NgayNhapKho date  null default(getdate()), -- lấy ngày nhập tự động hôm dó --
	ThanhTien money not null,
		
	-- các khóa ngoại--
	foreign key (TaiKhoanNV) references NhanVien(TaiKhoanNV) on update cascade on delete cascade,
)
go
insert into PhieuNhap (TenNhaCungCap, TaiKhoanNV, NgayNhapKho, ThanhTien) values ('1', 'admin', '7/7/2020', '8000000');
insert into PhieuNhap (TenNhaCungCap,  TaiKhoanNV, NgayNhapKho, ThanhTien) values ('2', 'admin', '3/2/2020', '8000000');
insert into PhieuNhap (TenNhaCungCap, TaiKhoanNV, NgayNhapKho, ThanhTien) values ('1', 'admin', '8/1/2019', '4000000');
insert into PhieuNhap (TenNhaCungCap, TaiKhoanNV, NgayNhapKho, ThanhTien) values ('4', 'admin', '2/2/2020', '8000000');
insert into PhieuNhap (TenNhaCungCap, TaiKhoanNV, NgayNhapKho, ThanhTien) values ('3', 'admin', '3/7/2018', '8000000');
insert into PhieuNhap (TenNhaCungCap, TaiKhoanNV, NgayNhapKho, ThanhTien) values ('1', 'admin', '7/7/2020', '8000000');
insert into PhieuNhap (TenNhaCungCap,  TaiKhoanNV, NgayNhapKho, ThanhTien) values ('6', 'admin', '8/9/2010', '8000000');
insert into PhieuNhap (TenNhaCungCap,  TaiKhoanNV, NgayNhapKho, ThanhTien) values ('5', 'admin', '3/4/2008', '8000000');
go
	--Bảng Chi Tiết Phiếu Nhập--
Create table ChiTietPhieuNhap
(
	MaPhieuNhap int not null,
	MaSach int not null,
	SoLuongSachNhap int not null,
		check (SoLuongsachNhap >=0 ),
	GiaSachNhap money not null,
	ThanhTien money null, -- mặc định để trống sau code thành tiền = số lượng * giá sách nhập --
	-- các khóa --
	primary key (MaPhieuNhap, MaSach),

	foreign key (MaPhieuNhap) references PhieuNhap(MaPhieuNhap) on update cascade on delete cascade,
	foreign key (MaSach) references Sach(MaSach) on update cascade on delete cascade,
)
go
insert into ChiTietPhieuNhap (MaPhieuNhap, MaSach, SoLuongSachNhap, GiaSachNhap) values (1,1, 5, 180000);
insert into ChiTietPhieuNhap (MaPhieuNhap,MaSach, SoLuongSachNhap, GiaSachNhap) values (1,2, 40, 180000);
insert into ChiTietPhieuNhap (MaPhieuNhap,MaSach, SoLuongSachNhap, GiaSachNhap) values (2,1, 50, 180000);
go
-- Số lượng khi nhập kho
 create trigger Trg_SoLuong
 On ChiTietphieuNhap
 after insert 
 as
 begin
	update Sach
	Set SoLuongTon = SoLuongTon + (select SoLuongSachNhap from inserted where MaSach= Sach.MaSach)
	from Sach
	Join inserted
	On Sach.MaSach = inserted.MaSach
End
-- Trigger cập nhật số lượng sách khi đặt hàng
go
 create trigger trg_DatHang
 on ChiTietDonHang
 after insert
 as
 begin
	update Sach
	set SoLuongTon = SoLuongTon - (select SoLuong from inserted where MaSach = Sach.MaSach)
	from Sach
	join inserted
	on Sach.MaSach = inserted.MaSach
end
go
 create trigger trg_HuyDatHang
 on ChiTietDonHang
 for delete
 as
 begin
	update Sach
	Set SoLuongTon = SoLuongTon + 
		(select SoLuong from deleted where MaSach=Sach.MaSach)
		from Sach
		join deleted
		on Sach.MaSach = deleted.MaSach
end
go
 create trigger trg_CapNhatDatHang
 on ChiTietDonHang
 after update
 as
 begin
	update Sach
	set SoLuongTon = SoLuongTon - 
	(select SoLuong from inserted where MaSach = Sach.MaSach) +
	(select SoLuong from deleted where maSach = Sach.MaSach)
	from Sach
	join deleted
	on Sach.MaSach = deleted.MaSach
end
-- Trigger thêm số lượng sách mua trong bảng sách
go
 create trigger trg_SoLuongDaBan
 on ChiTietDonHang
 after insert
 as
 begin
	update Sach
	set SoLuongDaBan = SoLuongDaBan + (select SoLuong from inserted where MaSach = Sach.MaSach)
	from Sach
	join inserted
	on Sach.MaSach = inserted.MaSach
end
go
 create trigger trg_Tru_SoLuongDaBan
 on ChiTietDonHang
 after delete
 as
 begin
	update Sach
	set SoLuongDaBan = SoLuongDaBan - (select SoLuong from deleted where MaSach = Sach.MaSach)
	from Sach
	join deleted
	on Sach.MaSach = deleted.MaSach
end

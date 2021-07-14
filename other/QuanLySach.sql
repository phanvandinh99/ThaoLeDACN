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

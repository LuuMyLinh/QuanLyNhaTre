

CREATE DATABASE nhatre;
create TABLE PhuHuynh(
    MaPH varchar(6) not null primary key,
    HoTen varchar(30) not null,
    DiaChi varchar(100) not null,
    SĐT char(10) not null
    );

CREATE TABLE lop(
    TenLop varchar(10) not null PRIMARY KEY,
    SiSo int(2) not null    );

CREATE TABLE hocsinh(
    MaHS varchar(6) not null PRIMARY KEY,
    MaPH varchar(6) not null,
    HoTen varchar(30) not null,
    TenLop varchar(10) not null,
    NgaySinh date,
    Chieucao varchar(10),
    Cannang varchar(10),
    GT varchar(3) not null,
    NgayNH date not null,
    FOREIGN KEY (MaPH) REFERENCES phuhuynh(MaPH),
    FOREIGN KEY (TenLop) REFERENCES lop(TenLop),
    GiaoVien varchar(30) not null
     );

CREATE TABLE dangnhap(
    TenDN varchar(15) not null,
    Matkhau char(6),
    PRIMARY KEY (TenDN, Matkhau)
    );
create TABLE nhanxet(
    NgayNX date not null PRIMARY KEY,
    MaHS varchar(6) not null,
    GiaoTiep varchar(200),
    ThaiDo varchar(200),
    KyNang varchar(200),
    KienThuc varchar(200),
    ChieuCao varchar(10),
    CanNang varchar(10),
    DGchung varchar(30),
    LoiKhuyen varchar(500)
    );
// dữ liệu 
-- bảng phụ huynh
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0100','Nguyễn Văn Hậu','số 12 Khâm Thiên',0354675534);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0101','Trần Thị Ngọc','số 127 Tây Sơn',0376539080);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0102','Phạm Văn Đạt','số 9, ngõ Chợ Khâm Thiên',0972167543);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0103','Nguyễn Văn Hải','số 2, ngõ Hồ Dài Khâm Thiên',0321562234);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0104','Bùi Ngọc Linh','số 8, ngõ Cống Trắng Khâm Thiên',0356749971);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0105','Nguyễn Mạnh Hải','số 15, ngõ Chợ Khâm Thiên',0335789912);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0106','Trịnh Xuân Huy','số 1, ngõ Văn Chương Khâm Thiên',0972167524);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0107','Lưu Văn Khánh','số 33, ngõ 35 Tây Sơn',0707891452);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0108','Nguyễn Xuân Hào','số 3, ngõ Thổ Quan Khâm Thiên',0839021567);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0109','Phan Văn Đức','số 12, ngõ Liên Hoa Khâm Thiên',0386890143);

INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0110','Trần Văn Lợi','số 14, ngõ 175 Thái Hà',0841009712);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0111','Ngô Thị Tâm','số 20 Tôn Đức Thắng',0846721008);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0112','Hoàng Thị Lam Giang','số 72 , ngõ Chợ Khâm Thiên',0330098571);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0113','Tô Văn Tài','số 12 Xã Đàn',0342789256);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0114','Đào Minh Lý','số 12 Lê Duẩn',0371983402);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0115','Tống Thị Hồng Ngọc','số 17 Nguyễn Thượng Hiền',0378097123);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0116','Nguyễn Văn Anh','số 1, ngõ Thổ Quan Khâm Thiên',0832091567);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0117','Phạm Thu Hương','số 2 Nguyễn Lương Bằng',0771908273);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0118','Nguyễn Thị Hải','số 225 Khâm Thiên',0391480213);

INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0119','Tôn Hải Lý','số 125 Lê Duẩn',0761092813);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0120','Đặng Văn Hà','số 9, ngõ Hồ Dài Khâm Thiên',0350172386);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0121','Lương Thị Linh','số 75 Khâm Thiên',0320173913);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0122','Trần Văn Cát','số 19 Khâm Thiên',0820182742);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0123','Nguyễn THu Hà','số 6, ngõ Cống Trắng Khâm Thiên',0356781349);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0124','Nguyễn Văn Đạt','số 12, Tôn Đức Thắng',0349218653);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0125','Nguyễn Thị Hòa','số 32 Nguyễn Lương Bằng',0791276345);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0126','Bùi Văn Lâm','số 12 Yết Kiêu',0366908123);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0127','Đinh Văn Hưng','số 17, ngõ Chợ Khâm Thiên',0355771328);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0128','Nguyễn Thu Hiền','số 2 Khâm Thiên',0323174343);
INSERT INTO `phuhuynh`(`MaPH`, `HoTen`, `DiaChi`, `SĐT`) VALUES ('PH0129','Lê Thị Hà Thu','số 31 Khâm Thiên',0390327464);
--bảng hoc sinh
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1000','PH0100','Nguyễn Minh Đức','2.5-3 tuoi','2015-12-09','76 cm','15.1 kg','Nam','2018-08-06','Nguyễn Thị Nụ');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1001','PH0101','Lương Hàn Lâm','2.5-3 tuoi','2015-10-19','72 cm','14.1 kg','Nam','2018-08-06','Nguyễn Thị Nụ');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1002','PH0102','Phạm THị Ngọc Hà','2.5-3 tuoi','2015-08-12','66 cm','13.1 kg','Nữ','2018-08-08','Nguyễn Thị Nụ');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1003','PH0103','Nguyễn Minh Lâm','2.5-3 tuoi','2015-01-09','70 cm','14 kg','Nam','2018-08-06','Nguyễn Thị Nụ');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1004','PH0104','Trần Thanh Thư','2.5-3 tuoi','2015-12-24','87 cm','12.3 kg','Nữ','2018-08-08','Nguyễn Thị Nụ');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1005','PH0105','Nguyễn Thanh Nga','2.5-3 tuoi','2015-08-21','80 cm','11.6 kg','Nữ','2018-08-06','Nguyễn Thị Nụ');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`,`TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1006','PH0106','Trịnh Văn Thành','2.5-3 tuoi','2016-01-02','81 cm','15.2 kg','Nam','2018-08-08','Nguyễn Thị Nụ');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`,`TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1007','PH0107','Lưu Ngọc Linh','2.5-3 tuoi','2016-02-03','84 cm','13.8 kg','Nữ','2018-08-06','Trần Thị Thanh');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1008','PH0108','Nguyễn Thành Nam','2.5-3 tuoi','2015-04-29','82 cm','15.1 kg','Nam','2018-08-06','Trần Thị Thanh');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`,`TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1009','PH0109','Phan Thu Uyên','2.5-3 tuoi','2015-07-11','73 cm','13 kg','Nữ','2018-08-06','Trần Thị Thanh');

INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1010','PH0110','Trần Đức Duy','2.5-3 tuoi','2015-05-06','91 cm','14.3 kg','Nam','2018-08-06','Trần Thị Thanh');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1011','PH0111','Nguyễn Lưu Ly','2.5-3 tuoi','2015-06-05','79 cm','12.9 kg','Nữ','2018-08-06','Trần Thị Thanh');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1012','PH0112','Đặng Đức Nghĩa','2.5-3 tuoi','2015-08-12','107 cm','14 kg','Nam','2018-08-06','Trần Thị Thanh');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`,`TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1013','PH0113','Tô Ngọc Linh','2.5-3 tuoi','2015-10-09','86 cm','15.2 kg','Nữ','2018-08-06','Trần Thị Thanh');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1014','PH0114','Đào Duy Thắng','2.5-3 tuoi','2015-03-18','92 cm','15.2 kg','Nam','2018-08-06','Trần Thị Thanh');


INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1015','PH0115','Tống Kim Liên','3.5-4.5 tuoi','2014-02-19','86 cm','13.1 kg','Nữ','2018-08-07','Đoàn Ngọc Linh');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1016','PH0116','Nguyễn Tuấn Minh','3.5-4.5 tuoi','2014-10-09','96 cm','13 kg','Nam','2018-08-06','Đoàn Ngọc Linh');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`,`TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1017','PH0117','Trần Mỹ Linh','3.5-4.5 tuoi','2014-10-03','96 cm','1 kg','Nữ','2018-08-07','Đoàn Ngọc Linh');

INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1018','PH0118','Đoàn Đức Hạnh','3.5-4.5 tuoi','2014-02-21','90 cm','13.1 kg','Nam','2018-08-06','Đoàn Ngọc Linh');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1019','PH0119','Nguyễn Trâm Anh','3.5-4.5 tuoi','2014-06-09','99 cm','15.1 kg','Nữ','2018-08-06','Đoàn Ngọc Linh');

INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1020','PH0120','Đặng Tuấn Kiệt','3.5-4.5 tuoi','2014-10-19','92 cm','17.1 kg','Nam','2018-08-06','Đoàn Ngọc Linh');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1021','PH0121','Nguyễn Tú Châu','3.5-4.5 tuoi','2014-10-20','94 cm','15 kg','Nữ','2018-08-07','Đoàn Ngọc Linh');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1022','PH0122','Trần Thu Thảo','3.5-4.5 tuoi','2014-09-09','91 cm','14.5 kg','Nữ','2018-08-06','Lưu Quỳnh Như');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1023','PH0123','Lương Uyên Linh','3.5-4.5 tuoi','2014-06-29','89 cm','14.6 kg','Nữ','2018-08-06','Lưu Quỳnh Như');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1024','PH0124','Nguyễn Tất Khánh','3.5-4.5 tuoi','2014-06-09','82 cm','13.5 kg','Nam','2018-08-07','Lưu Quỳnh Như');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`,`TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1025','PH0125','Phạm Tuấn Hải','3.5-4.5 tuoi','2014-11-09','87 cm','12.1 kg','Nam','2018-08-07','Lưu Quỳnh Như');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1026','PH0126','Bùi Thị Lan Anh','3.5-4.5 tuoi','2014-09-09','88 cm','13.2 kg','Nữ','2018-08-06','Lưu Quỳnh Như');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1027','PH0127','Đinh Công Lam','3.5-4.5 tuoi','2014-12-15','81 cm','16.2 kg','Nam','2018-08-06','Lưu Quỳnh Như');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1028','PH0128','Nguyễn Ngọc Trâm','3.5-4.5 tuoi','2014-11-29','89 cm','14 kg','Nữ','2018-08-06','Lưu Quỳnh Như');
INSERT INTO `hocsinh`(`MaHS`, `MaPH`, `HoTen`, `TenLop`, `NgaySinh`, `Chieucao`, `Cannang`, `GT`, `NgayNH`, `GiaoVien`) VALUES ('HS1029','PH0129','Nguyễn Thành Công','3.5-4.5 tuoi','2014-10-09','90 cm','15.2 kg','Nam','2018-08-07','Lưu Quỳnh Như');
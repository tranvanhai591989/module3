create database quan_ly_vat_tu;
use quan_ly_vat_tu;
create table if not exists vat_tu(
ma_vat_tu int not null primary key ,
ten_vat_tu varchar(50)
);

create table if not exists phieu_xuat(
so_px int auto_increment primary key,
ngay_xuat datetime
);

create table if not exists don_dat_hang(
so_dat_hang  int not null auto_increment primary key,
ngay_xuat_don_hang datetime
);

create table if not exists nha_cung_cap(
ma_nha_cung_cap int primary key,
ten_nha_cung_cap varchar(50),
dia_chi  varchar(50),
so_dt  varchar(50));

create table if not exists phieu_nhap(
so_pn int not null auto_increment primary key,
ngay_nhap datetime
);

create table if not exists chi_tiet_px(
don_gia_xuat float ,
sl_xuat int ,
so_px int,
ma_vat_tu int ,
primary key(don_gia_xuat,ma_vat_tu),
foreign key  (so_px) references phieu_xuat(so_px),
foreign key  (ma_vat_tu) references vat_tu(ma_vat_tu));

create table if not exists chi_tiet_phieu_nhap(
don_gia_nhap double,
sl_nhap int,
ma_vat_tu int,
so_pn int ,
primary key(so_pn,ma_vat_tu),
foreign key  (ma_vat_tu) references vat_tu(ma_vat_tu),
foreign key  (so_pn) references phieu_nhap(so_pn));

create table if not exists chi_tiet_don_dat_hang(
ma_vat_tu int,
so_dat_hang int ,
ma_nha_cung_cap int,
primary key (ma_vat_tu,ma_nha_cung_cap),
foreign key  (ma_vat_tu) references vat_tu(ma_vat_tu),
foreign key  (so_dat_hang) references don_dat_hang(so_dat_hang),
foreign key  (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap));






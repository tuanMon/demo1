-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-11-22 10:40:56.395

-- tables
-- Table: Chi_Tiet_Hoa_Don
CREATE TABLE Chi_Tiet_Hoa_Don (
    MaHD varchar(10)  NOT NULL,
    MaSP varchar(10)  NOT NULL,
    SoLuong int  NOT NULL,
    Hoa_Don_MaHD varchar(10)  NOT NULL,
    San_Pham_MaSP varchar(10)  NOT NULL,
    CONSTRAINT Chi_Tiet_Hoa_Don_pk PRIMARY KEY  (MaHD)
);

-- Table: Hoa_Don
CREATE TABLE Hoa_Don (
    MaHD varchar(10)  NOT NULL,
    MaKH varchar(10)  NOT NULL,
    NgayMua datetime  NOT NULL,
    Khach_Hang_MaKH varchar(10)  NOT NULL,
    CONSTRAINT Hoa_Don_pk PRIMARY KEY  (MaHD)
);

-- Table: Khach_Hang
CREATE TABLE Khach_Hang (
    MaKH varchar(10)  NOT NULL,
    HoTen nvarchar(25)  NOT NULL,
    Email varchar(25)  NOT NULL,
    DiaChi nvarchar(25)  NOT NULL,
    SDT int  NOT NULL,
    CONSTRAINT Khach_Hang_pk PRIMARY KEY  (MaKH)
);

-- Table: Loai_San_Pham
CREATE TABLE Loai_San_Pham (
    MaLSP varchar(10)  NOT NULL,
    TenLoai varchar(25)  NOT NULL,
    San_Pham_MaSP varchar(10)  NOT NULL,
    CONSTRAINT Loai_San_Pham_pk PRIMARY KEY  (MaLSP)
);

-- Table: San_Pham
CREATE TABLE San_Pham (
    MaSP varchar(10)  NOT NULL,
    MaLSP varchar(10)  NOT NULL,
    Ten varchar(25)  NOT NULL,
    Gia decimal(12,2)  NOT NULL,
    Mota nvarchar(250)  NOT NULL,
    CONSTRAINT San_Pham_pk PRIMARY KEY  (MaSP)
);

-- foreign keys
-- Reference: Chi_Tiet_Hoa_Don_Hoa_Don (table: Chi_Tiet_Hoa_Don)
ALTER TABLE Chi_Tiet_Hoa_Don ADD CONSTRAINT Chi_Tiet_Hoa_Don_Hoa_Don
    FOREIGN KEY (Hoa_Don_MaHD)
    REFERENCES Hoa_Don (MaHD);

-- Reference: Chi_Tiet_Hoa_Don_San_Pham (table: Chi_Tiet_Hoa_Don)
ALTER TABLE Chi_Tiet_Hoa_Don ADD CONSTRAINT Chi_Tiet_Hoa_Don_San_Pham
    FOREIGN KEY (San_Pham_MaSP)
    REFERENCES San_Pham (MaSP);

-- Reference: Hoa_Don_Khach_Hang (table: Hoa_Don)
ALTER TABLE Hoa_Don ADD CONSTRAINT Hoa_Don_Khach_Hang
    FOREIGN KEY (Khach_Hang_MaKH)
    REFERENCES Khach_Hang (MaKH);

-- Reference: Loai_San_Pham_San_Pham (table: Loai_San_Pham)
ALTER TABLE Loai_San_Pham ADD CONSTRAINT Loai_San_Pham_San_Pham
    FOREIGN KEY (San_Pham_MaSP)
    REFERENCES San_Pham (MaSP);

-- End of file.


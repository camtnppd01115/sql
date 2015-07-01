-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:12:10.438




-- tables
-- Table TNhanvien
CREATE TABLE TNhanvienghfdgdsf (
    Manv int    NOT NULL ,
    Tennv varchar(50)    NOT NULL ,
    Ngaysinh timestamp    NOT NULL ,
    Gioitinh varchar(50)    NOT NULL ,
    Email varchar(50)    NOT NULL ,
    Mucluong int    NOT NULL ,
    Maphong int    NOT NULL ,
    TPhongban_Maphong int    NOT NULL ,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (Manv)
);

-- Table TPhongban
CREATE TABLE TPhongban (
    Maphong int    NOT NULL ,
    Tenphong varchar(50)    NOT NULL ,
    CONSTRAINT TPhongban_pk PRIMARY KEY (Maphong)
);





-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)


ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban FOREIGN KEY TNhanvien_TPhongban (TPhongban_Maphong)
    REFERENCES TPhongban (Maphong);



-- End of file.


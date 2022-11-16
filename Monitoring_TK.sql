CREATE DATABASE monitoring_tk;
USE monitoring_tk;

CREATE TABLE buku_penghubung (
    id_buku VARCHAR(100) PRIMARY KEY NOT NULL,
    nip_walikelas VARCHAR(100),
    nis_murid VARCHAR(100),
    id_pelajaran VARCHAR(100),
    main_course VARCHAR(100),
    evaluasi_orangtua VARCHAR(100),
    catatan_guru VARCHAR(100),
    snack VARCHAR(100),
    FOREIGN KEY (nip_walikelas)
        REFERENCES walikelas (nip_walikelas),
    FOREIGN KEY (nis_murid)
        REFERENCES murid (nis_murid),
    FOREIGN KEY (id_pelajaran)
        REFERENCES pelajaran (id_pelajaran)
);
SELECT * FROM buku_penghubung;

DROP TABLE buku_penghubung;

CREATE TABLE walikelas (
    nip_walikelas VARCHAR(100) PRIMARY KEY NOT NULL,
    nama VARCHAR(100),
    jenis_kelamin VARCHAR(10),
    no_telp INT
);
SELECT * FROM walikelas;

CREATE TABLE murid (
    nis_murid VARCHAR(100) PRIMARY KEY NOT NULL,
    nama_orangtua VARCHAR(100),
    nama_murid VARCHAR(100),
    jenis_kelamin VARCHAR(10),
    umur INT
);
SELECT * FROM murid;

CREATE TABLE transaksi (
    id_transaksi VARCHAR(100) PRIMARY KEY NOT NULL,
    nip_pengajar VARCHAR(100),
    nis_murid VARCHAR(100),
    id_pelajaran VARCHAR(100),
    status_absen BOOLEAN,
    FOREIGN KEY (nip_pengajar)
        REFERENCES pengajar (nip_pengajar),
	FOREIGN KEY (nis_murid)
        REFERENCES murid (nis_murid),
	FOREIGN KEY (id_pelajaran)
        REFERENCES pelajaran (id_pelajaran)
);
SELECT * FROM transaksi;

CREATE TABLE pengajar (
    nip_pengajar VARCHAR(100) PRIMARY KEY NOT NULL,
    nama VARCHAR(100),
    jenis_kelamin VARCHAR(10),
    no_telp INT
);
SELECT * FROM pengajar;

CREATE TABLE detail_transaksi (
    id_transaksi VARCHAR(100) primary key not null,
    id_pelajaran VARCHAR(100),
    FOREIGN KEY (id_transaksi)
        REFERENCES transaksi (id_transaksi),
	FOREIGN KEY (id_pelajaran)
        REFERENCES pelajaran (id_pelajaran)
);
SELECT * FROM detail_transaksi;

CREATE TABLE pelajaran (
    id_pelajaran VARCHAR(100) PRIMARY KEY NOT NULL,
    nama_pelajaran VARCHAR(100),
    deskripsi VARCHAR(100)
);
SELECT * FROM pelajaran;

CREATE TABLE kategori_pelajaran (
    id_pelajaran VARCHAR(100) PRIMARY KEY NOT NULL,
    kategori VARCHAR(100),
    deskripsi VARCHAR(100),
    FOREIGN KEY (id_pelajaran)
        REFERENCES pelajaran (id_pelajaran)
);
SELECT * FROM kategori_pelajaran;

CREATE TABLE kelas (
    id_kelas VARCHAR(100) PRIMARY KEY NOT NULL,
    id_pelajaran VARCHAR(100),
    nip_walikelas VARCHAR(100),
    tingkat_kelas INT,
    nama_kelas VARCHAR(100),
    jumlah_murid INT,
    FOREIGN KEY (id_pelajaran)
        REFERENCES pelajaran (id_pelajaran),
    FOREIGN KEY (nip_walikelas)
        REFERENCES walikelas (nip_walikelas)
);
SELECT * FROM kelas;
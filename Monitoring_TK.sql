CREATE TABLE user(
    ID_User INT NOT NULL PRIMARY KEY,
    Username VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Role VARCHAR(100) NOT NULL
    );
    
CREATE TABLE pelajaran(
    ID_Pelajaran VARCHAR(100) NOT NULL PRIMARY KEY,
    Nama_Pelajaran VARCHAR(100),
    Deskripsi TEXT
    );
    
CREATE TABLE murid(
    NIS_Murid VARCHAR(100) NOT NULL PRIMARY KEY,
    Nama_Murid VARCHAR(100) NOT NULL,
    Jenis_Kelamin VARCHAR(100) NOT NULL,
    Umur INT NOT NULL,
    Nama_OrangTua VARCHAR(100)
    );
    
CREATE TABLE pengajar(
    NIP_Pengajar VARCHAR(100) NOT NULL PRIMARY KEY,
    Nama_Pengajar VARCHAR(100) NOT NULL,
    Jenis_Kelamin VARCHAR(20) NOT NULL,
    NO_Telepon VARCHAR(20)
    );
    
CREATE TABLE kategori_pelajaran(
    ID_Pelajaran VARCHAR(100) NOT NULL PRIMARY KEY,
    Kategori VARCHAR(100) NOT NULL,
    Deskripsi TEXT,
    FOREIGN KEY(ID_Pelajaran) REFERENCES pelajaran(ID_Pelajaran)
    );
    
CREATE TABLE walikelas(
    NIP_Walikelas VARCHAR(100) NOT NULL PRIMARY KEY,
    NIP_Pengajar VARCHAR(100) NOT NULL,
    FOREIGN KEY(NIP_Pengajar) REFERENCES pengajar(NIP_Pengajar)
    );
    
CREATE TABLE kelas(
    ID_Kelas VARCHAR(100) NOT NULL PRIMARY KEY,
    NAMA_Kelas VARCHAR(100) NOT NULL,
    ID_Pelajaran VARCHAR(100) NOT NULL,
    NIP_Walikelas VARCHAR(100) NOT NULL,
    Tingkat_Kelas INT,
    Jumlah_Murid INT,
    Sesi INT,
    FOREIGN KEY(ID_Pelajaran) REFERENCES pelajaran(ID_Pelajaran),
    FOREIGN KEY(NIP_Walikelas) REFERENCES walikelas(NIP_Walikelas)
    );
    
CREATE TABLE transaksi(
    ID_Transaksi VARCHAR(100) NOT NULL PRIMARY KEY,
    NIP_Pengajar VARCHAR(100) NOT NULL,
    NIS_Murid VARCHAR(100) NOT NULL,
    ID_Pelajaran VARCHAR(100) NOT NULL,
    Status_Absen VARCHAR(100) DEFAULT '-',
    Tanggal DATE,
    FOREIGN KEY(NIP_Pengajar) REFERENCES pengajar(NIP_Pengajar),
    FOREIGN KEY(NIS_Murid) REFERENCES murid(NIS_Murid),
    FOREIGN KEY(ID_Pelajaran) REFERENCES pelajaran(ID_Pelajaran)
    );
    
CREATE TABLE buku_penghubung(
    ID_Buku VARCHAR(100) NOT NULL PRIMARY KEY,
    NIS_Murid VARCHAR(100) NOT NULL,
    ID_Pelajaran VARCHAR(100) NOT NULL,
    NIP_Walikelas VARCHAR(100) NOT NULL,
    Main_Course VARCHAR(100),
    Catatan_Guru TEXT,
    Tanggal DATE,
    FOREIGN KEY(NIS_Murid) REFERENCES murid(NIS_Murid),
    FOREIGN KEY(ID_Pelajaran) REFERENCES pelajaran(ID_Pelajaran),
    FOREIGN KEY(NIP_Walikelas) REFERENCES walikelas(NIP_Walikelas)
    );
    
CREATE TABLE detail_transaksi(
    ID_Transaksi VARCHAR(100) NOT NULL PRIMARY KEY,
    ID_Pelajaran VARCHAR(100) NOT NULL PRIMARY KEY,
    FOREIGN KEY(ID_Transaksi) REFERENCES transaksi(ID_Transaksi),
    FOREIGN KEY(ID_Pelajaran) REFERENCES pelajaran(ID_Pelajaran)
    );
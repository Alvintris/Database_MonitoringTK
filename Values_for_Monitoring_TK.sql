

INSERT INTO murid
VALUES ("M0001", "Karen", "Budi", "Laki-Laki", 5),
("M0002", "Andi", "Luna", "Perempuan", 5),
("M0003", "Yulia", "Kevin", "Laki-Laki", 6),
("M0004", "Alya", "Maria", "Perempuan", 6),
("M0005", "Lukman", "Josua", "Laki-Laki", 5),
("M0006", "Joko", "Olivia", "Perempuan", 5),
("M0007", "Wisnu", "Tobi", "Laki-Laki", 6),
("M0008", "Yuli", "Tina", "Perempuan", 5),
("M0009", "Ananda", "Rafa", "Perempuan", 6),
("M0010", "Agnes", "Paul", "Laki-Laki", 5);
SELECT * FROM murid;

INSERT INTO pengajar
VALUES ("P001", "Gusti", "Laki-Laki", 812555738192), -- Berhitung
("P002", "Dian", "Perempuan", 812532734192), -- Berhitung
("P003", "Simon", "Laki-Laki", 813257381801), -- Membaca
("P004", "Daniel", "Laki-Laki", 821675738170), -- Membaca
("P005", "Aprilla", "Perempuan", 821333738191), -- Menulis
("P006", "Lina", "Perempuan", 812897738123), -- Menulis
("P007", "Rudi", "Laki-Laki", 812589724132), -- Menggambar
("P008", "Dina", "Perempuan", 814325733192), -- Menggambar
("P009", "Fitri", "Perempuan", 812234438109), -- Menulis
("P010", "Jonathan", "Laki-Laki", 812935738888); -- Membaca
SELECT * FROM pengajar;

INSERT INTO walikelas
VALUES ("W001", "Gusti", "Laki-Laki", 812555738192),
("W002", "Dian", "Perempuan", 812532734192),
("W003", "Simon", "Laki-Laki", 813257381801),
("W004", "Daniel", "Laki-Laki", 821675738170),
("W005", "Aprilla", "Perempuan", 821333738191),
("W006", "Lina", "Perempuan", 812897738123),
("W007", "Rudi", "Laki-Laki", 812589724132),
("W008", "Dina", "Perempuan", 814325733192),
("W009", "Fitri", "Perempuan", 812234438109),
("W010", "Jonathan", "Laki-Laki", 812935738888);
SELECT * FROM walikelas;

INSERT INTO pelajaran
VALUES ("PE001", "Berhitung", "Mempelajari Operasi Perhitungan"),
("PE002", "Membaca", "Mempelajari cara membaca tulisan"),
("PE003", "Menggambar", "Menggambar objek tertentu"),
("PE004", "Menulis", "Menulis Kata");
SELECT * FROM pelajaran;

INSERT INTO kategori_pelajaran
VALUES ("PE001", "Motorik Halus", "-"),
("PE002", "Motorik Halus", "-"),
("PE003", "Motorik Halus", "-"),
("PE004", "Motorik Halus", "-");
SELECT * FROM kategori_pelajaran;

INSERT INTO kelas
VALUES ("K0001", "PE001", "W001", 1, "Kelas Berhitung 1", 5),
("K0002", "PE001", "W002", 2, "Kelas Berhitung 2", 5),
("K0003", "PE001", "W003", 3, "Kelas Berhitung 3", 5),
("K0004", "PE002", "W004", 1, "Kelas Membaca 1", 5),
("K0005", "PE002", "W005", 2, "Kelas Membaca 2", 5),
("K0006", "PE002", "W006", 3, "Kelas Membaca 3", 5),
("K0007", "PE003", "W007", 1, "Kelas Menggambar 1", 5),
("K0008", "PE003", "W008", 2, "Kelas Menggambar 2", 5),
("K0009", "PE004", "W009", 1, "Kelas Menulis 1", 5),
("K0010", "PE004", "W010", 2, "Kelas Menulis 2", 5);
SELECT * FROM kelas;

INSERT INTO transaksi
VALUES ("T0001", "P001", "M0001", "PE001", 1),
("T0002", "P002", "M0002", "PE001", 1),
("T0003", "P010", "M0003", "PE002", 1),
("T0004", "P006", "M0004", "PE004", 1),
("T0005", "P001", "M0005", "PE001", 1),
("T0006", "P008", "M0006", "PE003", 1),
("T0007", "P006", "M0007", "PE004", 1),
("T0008", "P004", "M0008", "PE002", 1),
("T0009", "P009", "M0009", "PE004", 1),
("T0010", "P003", "M0010", "PE002", 1);
SELECT * FROM transaksi;

INSERT INTO detail_transaksi
VALUES ("T0001", "PE001"),
("T0002", "PE001"),
("T0003", "PE002"),
("T0004", "PE004"),
("T0005", "PE001"),
("T0006", "PE003"),
("T0007", "PE004"),
("T0008", "PE002"),
("T0009", "PE004"),
("T0010", "PE002");
SELECT * FROM detail_transaksi;

INSERT INTO buku_penghubung
VALUES ("BP001", "W001", "M0001", "PE001", "Nasi Goreng", "Baik", "Baik", "Permen"),
("BP002", "W002", "M0002", "PE001", "Nasi Sup Ayam", "Baik", "Baik", "Kentang Goreng"),
("BP003", "W010", "M0003", "PE002", "Nasi Goreng", "Baik", "Baik", "Permen"),
("BP004", "W006", "M0004", "PE004", "Mie Goreng", "Baik", "Baik", "Kerpik Singkong"),
("BP005", "W001", "M0005", "PE001", "Nasi Kuning", "Baik", "Baik", "Permen"),
("BP006", "W008", "M0006", "PE003", "Nasi Goreng", "Baik", "Baik", "Keripik Singkong"),
("BP007", "W006", "M0007", "PE004", "Nasi Capcay", "Baik", "Baik", "Kentang Goreng"),
("BP008", "W004", "M0008", "PE002", "Nasi Capcay", "Baik", "Baik", "Kentang Goreng"),
("BP009", "W009", "M0009", "PE004", "Nasi Goreng", "Baik", "Baik", "Permen"),
("BP010", "W003", "M0010", "PE002", "Mie Ayam", "Baik", "Baik", "Keripik Singkong");
SELECT * FROM buku_penghubung;
USE monitoring_tk;

INSERT INTO murid
VALUES (10001, "Karen", "Budi", "Laki-Laki", 5),
(10002, "Andi", "Luna", "Perempuan", 5),
(10003, "Yulia", "Kevin", "Laki-Laki", 6),
(10004, "Alya", "Maria", "Perempuan", 6),
(10005, "Lukman", "Josua", "Laki-Laki", 5),
(10006, "Joko", "Olivia", "Perempuan", 5),
(10007, "Wisnu", "Tobi", "Laki-Laki", 6),
(10008, "Yuli", "Tina", "Perempuan", 5),
(10009, "Ananda", "Rafa", "Perempuan", 6),
(10010, "Agnes", "Paul", "Laki-Laki", 5);
select * from murid;

INSERT INTO pengajar
VALUES (101, "Gusti", "Laki-Laki", 812555738192),
(102, "Dian", "Perempuan", 812532734192),
(103, "Simon", "Laki-Laki", 813257381801),
(104, "Daniel", "Laki-Laki", 821675738170),
(105, "Aprilla", "Perempuan", 821333738191),
(106, "Lina", "Perempuan", 812897738123),
(107, "Rudi", "Laki-Laki", 812589724132),
(108, "Dina", "Perempuan", 814325733192),
(109, "Fitri", "Perempuan", 812234438109),
(110, "Jonathan", "Laki-Laki", 812935738888);
select * from pengajar;

INSERT INTO pelajaran
VALUES (301, "Berhitung", "Mempelajari Operasi Perhitungan"),
(302, "Membaca", "Mempelajari cara membaca tulisan"),
(303, "Menggambar", "Menggambar objek tertentu"),
(304, "Menulis", "Menulis Kata");
select * from pelajaran;

INSERT INTO kategori_pelajaran
VALUES (301, "Motorik Halus", "-"),
(302, "Motorik Halus", "-"),
(303, "Motorik Halus", "-"),
(304, "Motorik Halus", "-");
select * from kategori_pelajaran;

INSERT INTO walikelas
VALUES (501, "Gusti", "Laki-Laki", 812555738192),
(502, "Dian", "Perempuan", 812532734192),
(503, "Simon", "Laki-Laki", 813257381801),
(504, "Daniel", "Laki-Laki", 821675738170),
(505, "Aprilla", "Perempuan", 821333738191),
(506, "Lina", "Perempuan", 812897738123),
(507, "Rudi", "Laki-Laki", 812589724132),
(508, "Dina", "Perempuan", 814325733192),
(509, "Fitri", "Perempuan", 812234438109),
(510, "Jonathan", "Laki-Laki", 812935738888);
select * from walikelas;

INSERT INTO kelas
VALUES(201, 301, 501, 1.1, "A", 5),
(202, 301, 502, 1.2, "B", 3),
(203, 301, 503, 1.3, "C", 4),
(204, 302, 504, 2.1, "D", 6),
(205, 302, 505, 2.2, "E", 3),
(206, 302, 506, 2.3, "F", 3),
(207, 303, 507, 3.1, "G", 4),
(208, 303, 508, 3.2, "H", 5),
(209, 304, 509, 3.3, "I", 5),
(210, 304, 510, 4.1, "J", 5);
select * from kelas;

INSERT INTO transaksi
VALUES (9001, 101, 10002, 301, 1),
(9002, 101, 10001, 301, 1),
(9003, 102, 10003, 302, 1),
(9004, 102, 10004, 302, 1),
(9005, 103, 10005, 303, 1),
(9006, 103, 10006, 303, 1),
(9007, 103, 10007, 303, 1),
(9008, 102, 10008, 302, 1),
(9009, 102, 10009, 302, 1),
(9010, 101, 10010, 301, 1);
select * from transaksi;

INSERT INTO detail_transaksi
VALUES(9001, 301),
(9002, 301),
(9003, 302),
(9004, 302),
(9005, 303),
(9006, 303),
(9007, 303),
(9008, 302),
(9009, 302),
(9010, 301);
select * from detail_transaksi;
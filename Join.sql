USE monitoring_tk;

SELECT murid.nama_murid AS Nama, pelajaran.nama_pelajaran AS Pelajaran, walikelas.nama AS Walikelas FROM murid, pelajaran, walikelas
INNER JOIN detail_transaksi ON id_transaksi = detail_transaksi.id_transaksi;

SELECT murid.nama_murid AS Nama, pelajaran.nama_pelajaran AS Pelajaran, walikelas.nama AS Walikelas FROM murid, pelajaran, walikelas
LEFT JOIN detail_transaksi ON id_transaksi = detail_transaksi.id_transaksi;

SELECT murid.nama_murid AS Nama, pelajaran.nama_pelajaran AS Pelajaran, walikelas.nama AS Walikelas FROM murid, pelajaran, walikelas
RIGHT JOIN detail_transaksi ON id_transaksi = detail_transaksi.id_transaksi;
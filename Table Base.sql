-- Create datamart (tabel base "Tabel Penjualan")
SELECT pj.id_invoice,
	   pj.tanggal,
	   pj.id_customer,
	   pg.cabang_sales,
	   pg.nama AS nama_cabang,
	   b.nama_barang,
	   pj.lini AS brand,
	   pj.jumlah_barang,
	   pj.jumlah_barang * b.harga AS total_harga
	   	
FROM penjualan AS pj
LEFT JOIN pelanggan AS pg
ON pj.id_customer = pg.id_customer
LEFT JOIN barang_ds AS b
ON pj.id_barang = b.kode_barang;
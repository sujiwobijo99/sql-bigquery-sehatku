-- B21-CAP0477
-- Capstone Project Documentation for BigQuery Data Warehousing

-- Data warehousing for User

CREATE OR REPLACE TABLE `devenv911.user.user_data_warehouse` AS
 SELECT 
    id AS ID,
    nik AS NIK,
    nama_lengkap AS NAMA,
    alamat AS LOKASI_USER,
    pekerjaan AS PEKERJAAN,
    email AS EMAIL,
    label AS LABEL,
    jk_user AS JENIS_KELAMIN,
    role AS ROLE,
    pp_path AS FOTO_PROFIL,
    Password_hashed AS PASSWORD,
    username AS USERNAME,
    tpt_lahir AS TEMPAT_LAHIR,
    tgl_lahir AS TANGGAL_LAHIR,
    no_hp AS NO_HP,
    koor_maps AS KOORDINAT
 FROM EXTERNAL_QUERY('projects/devenv911/locations/us-central1/connections/sehatku_conn', '''SELECT * FROM user''')




-- Data warehousing for Covid Hotspot

CREATE OR REPLACE TABLE `devenv911.hotspot.hotspot_data_warehouse` AS
 SELECT 
    id AS ID_LAPORAN,
    kota AS KOTA_LAPORAN,
    kec AS KECAMATAN_LAPORAN,
    kd_pos AS KODE_POS_LAPORAN,
    nik_lpr AS NIK_PELAPOR,
    wkt_lpr AS WAKTU_LAPORAN,
    ket AS KETERANGAN_LAPORAN,
    gbr AS GAMBAR_LAPORAN,
    rt AS RT_LAPORAN,
    rw AS RW_LAPORAN,
    tmpt AS LOKASI_LAPORAN,
    koor_maps AS KOORDINAT_LAPORAN,
    timestamp AS TIMESTAMP_LAPORAN
 FROM EXTERNAL_QUERY('projects/devenv911/locations/us-central1/connections/sehatku_conn', '''SELECT * FROM hotspot''')



-- Data warehousing for Prokes Request

CREATE OR REPLACE TABLE `devenv911.prokes.prokes_data_warehouse` AS
 SELECT 
    id AS ID_LAPORAN,
    kota AS KOTA_LAPORAN,
    kec AS KECAMATAN_LAPORAN,
    kel AS KELURAHAN_LAPORAN,
    kd_pos AS KODE_POS_LAPORAN,
    nik_lpr AS NIK_PELAPOR,
    wkt_lpr AS WAKTU_LAPORAN,
    ket AS KETERANGAN_LAPORAN,
    jns_pro AS JENIS_PROKES,
    jns_fasum AS JENIS_FASUM,
    gbr AS GAMBAR_LAPORAN,
    rt AS RT_LAPORAN,
    rw AS RW_LAPORAN,
    tmpt AS LOKASI_LAPORAN,
    koor_maps AS KOORDINAT_LAPORAN,
    timestamp AS TIMESTAMP_LAPORAN
 FROM EXTERNAL_QUERY('projects/devenv911/locations/us-central1/connections/sehatku_conn', '''SELECT * FROM prokes''')
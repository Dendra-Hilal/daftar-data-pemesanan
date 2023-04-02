<?php
require 'connect.php';
$buku = query("SELECT * FROM pemesanan_buku");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Daftar Data Pemesanan </title>
    <style>
        body {
            width: 100%;
            height: 100%;
            background-color: white;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }
        h1 {
            text-align: center;
        }
        table {
            width: 100%;
            border: 1px solid black;
            border-width: 2px;
        }
        table tr th {
            font-size: 16px;
            background-color: #DD5353;
        }
        tr:nth-child(even) {
            background-color: #e6e6e6;
        }
    </style>
</head>
<body>
    <h1> Daftar Pemesanan Buku | Penerbit Alpha </h1>
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th> ID </th>
            <th> Nama Pemesan </th>
            <th> Alamat Pemesan </th>
            <th> Nomor Telepon </th>
            <th> Judul Buku </th>
            <th> Jenis Buku </th>
            <th> Jumlah Buku </th>
            <th> Harga </th>
            <th> Sampul Buku </th>
            <th> Aksi </th>
        </tr>
        <?php $i = 1;?>
        <?php foreach ($buku as $b) : ?>
        <tr>
            <td> <?= $b["id_pemesan"]?> </td>
            <td> <?= $b["nama_pemesan"];?> </td>
            <td> <?= $b["alamat_pemesan"];?> </td>
            <td> <?= $b["nomor_telepon"];?> </td>
            <td> <?= $b["judul_buku"];?> </td>
            <td> <?= $b["jenis_buku"];?> </td>
            <td> <?= $b["jumlah_buku"];?> </td>
            <td> <?= $b["harga"];?> </td>
            <td> <img src="Sampul/<?= $b["sampul_buku"]?>" alt="Sampul" width="50"> </td>
            <td>
                <a href="#"> Ubah </a>
                <br>
                <a href="#"> Hapus </a>
            </td>
        </tr>
        <?php $i++;?>
        <?php endforeach;?>
    </table>
</body>
</html>
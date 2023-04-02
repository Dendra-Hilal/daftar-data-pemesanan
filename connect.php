<?php

$conc = mysqli_connect("localhost", "root", "", "daftar_pemesanan_buku");

function query($query)
{
    global $conc;
    $result = mysqli_query($conc, $query);
    $rows = [];

    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

?>
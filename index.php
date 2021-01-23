<?php

require 'connect.php';

$produk = mysqli_query($conn, "SELECT * FROM product");
$produk1 = mysqli_query($conn, "SELECT * FROM option");
$produk2 = mysqli_query($conn, "SELECT * FROM option_values");
$produk3 = mysqli_query($conn, "SELECT * FROM  product_option");
$produk4 = mysqli_query($conn, "SELECT * FROM  product_varian");
$produk5 = mysqli_query($conn, "SELECT * FROM  varian_value");


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> menampilkan fungsi </title>
</head>

<body>

    <h2>Hallo di bawah ini merupakan tabel produk yang di pecah menjadi beberapa bagian sebagai berikut : </
    <br></br>
    <h3>product </h3>
    <table border="1" cellpading="10" cellspacing="0">
        <tr>
            <th>No</th>
            <th>id</th>
            <th>name</th>
        </tr>
        <?php $no = 1; ?>
        <?php foreach ($produk as $data) : ?>
            <tr>
                <td><?= $no; ?></td>
                <td><?= $data['product_id']; ?></td>
                <td><?= $data['product_name']; ?></td>
            </tr>
            <?php $no++; ?>
        <?php endforeach; ?>


    </table> <br>
    <h3> Option </h3>
<table border="1" cellpading="12" cellspacing="0">
        <tr>
            <th>No</th>
            <th>id</th>
            <th>name</th>
        </tr>
        <?php $no = 1; ?>
        <?php foreach ($produk1 as $data) : ?>
            <tr>
                <td><?= $no; ?></td>
                <td><?= $data['option_id']; ?></td>
                <td><?= $data['option_name']; ?></td>
            </tr>
            <?php $no++; ?>
        <?php endforeach; ?>


</table> <br>
<h3> Option_value </h3>
<table border="1" cellpading="12" cellspacing="0">
        <tr>
     
            <th>option_id</th>
            <th>values_id</th>
            <th>name</th>
        </tr>
  
        <?php foreach ($produk2 as $data) : ?>
            <tr>
       
                <td><?= $data['option_id']; ?></td>
                <td><?= $data['values_id']; ?></td>
                <td><?= $data['value_name']; ?></td>
            </tr>
 
        <?php endforeach; ?>


</table> <br> 
<h3> product_Option </h3>
<table border="1" cellpading="12" cellspacing="0">
        <tr>
            <th>product_id</th>
            <th>option_id</th>
        </tr>
        <?php foreach ($produk3 as $data) : ?>
            <tr>
                <td><?= $data['product_id']; ?></td>
                <td><?= $data['option_id']; ?></td>
            </tr>
        <?php endforeach; ?>


</table> <br>
<h3> product_varian </h3>
<table border="1" cellpading="12" cellspacing="0">
        <tr>

            <th>product_id</th>
            <th>variant_id</th>
            <th>sku_id</th>
        </tr>
        <?php foreach ($produk4 as $data) : ?>
            <tr>

                <td><?= $data['product_id']; ?></td>
                <td><?= $data['variant_id']; ?></td>
                <td><?= $data['sku_id']; ?></td>
            </tr>
        <?php endforeach; ?>

</table> <br> 
<h3> Variant_value </h3>
<table border="1" cellpading="12" cellspacing="0">
        <tr>

            <th>product_id</th>
            <th>variant_id</th>
            <th>option_id</th>
            <th>value_id</th>
            <th>price_id</th>

        </tr>
        <?php foreach ($produk5 as $data) : ?>
            <tr>

                <td><?= $data['product_id']; ?></td>
                <td><?= $data['variant_id']; ?></td>
                <td><?= $data['option_id']; ?></td>
                <td><?= $data['value_id']; ?></td>
                <td><?= $data['price_id']; ?></td>
            </tr>
        <?php endforeach; ?>

</body>

</html>
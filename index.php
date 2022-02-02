<!DOCTYPE html>
<html>
<head>
	<title>Basic CRUD</title>
</head>
<body>

<?php
include 'menu.php'; //include menu list from menu.php, you may edit accordingly

echo "<br><br>
	<h1> Selamat datang</h1>
	";

<?php
echo "
<a href='index.php' target='_self'>Rumah</a>
<a href='list.php' target='_self'>Senarai</a>
<a href='list2.php' target='_self'>Senarai 2 Table</a>
<a href='add.php' target='_self'>Tambah</a>
<a href='delete.php' target='_self'>Padam</a>
<a href='update.php' target='_self'>Kemaskini</a>
";
?>
include 'footer.php';
?>

</body>
</html>
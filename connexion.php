<?php  $date = date('d-m-Y');
 $date;

 $server_name ='localhost';
 $database = 'edap_isp_gombe';
 $username = 'root';
 $password = '';


 try{


		$conn = new PDO("mysql: host=$server_name; dbname=$database", $username, $password);

		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		//echo 'Connexion réussie';
	}

		catch(PDOException $e){
		//	echo "Erreur :".$e->getMessage();
		}
	


$conn2 = mysqli_connect("localhost","root","","edap_isp_gombe");
mysqli_set_charset($conn2,"utf8");
if(!$conn2){
   echo "connection Failed". mysqli_connect_error();
}

 ?>
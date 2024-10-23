<?php 
	//if (isset($_POST['save'])) {

	require('../config.php');

	 echo $id = $_POST['id'];
	 echo $noms = $_POST['noms'];
	 echo $sexe = $_POST['sexe'];
	 echo $email = $_POST['email'];
	 echo $pss = $_POST['pss'];
	 echo $tel = $_POST['tel'];
	 echo $priv = $_POST['priv'];
	 echo $signature = $_POST['signature'];

	 $kombo = explode(" ", $noms,3);

	  $kombo[0];
	  $kombo[1];
	  $kombo[2];

	$date1 = date('Y-m-d');
	$heure = date('H:m');


                  //$sqlx  = "SELECT * FROM enreg_client ";
                  //$rez  = mysqli_query($conn, $sqlx);
                  //$alors  = mysqli_fetch_assoc($rez);
                  //echo $alors['id_client'];


$maj = mysqli_query($conn, "UPDATE admin1 SET nom ='".$kombo[0]."', postnom ='".$kombo[1]."', prenom ='".$kombo[2]."', sexe = '".$sexe."', email ='".$email."', pss='".$pss."', tel='".$tel."', priv ='".$priv."', signature ='".$signature."' WHERE id ='".$id."' " );
//$edito = mysqli_query($conn, "UPDATE ges_prod_phon SET qte_entre ='".$alors3['qte_entre']."', stock_final ='".$stockfin."', pua ='".$alors3['pua']."', pvu ='".$alors3['pvu']."', ptsa = '".$alors3['pua'] * $alors3['stock_final']."', benef_pr_prod = '".$prx_vu - $alors3['pua']."', tpvs = '".$totpvs."', tbs ='".$beneftot."' WHERE full_name ='".$alors3['full_name']."' " );
	
	header('Location: ../index_a.php');
 exit();
//}

//}



	//$insertion2 = "INSERT INTO admin2 (nom,postnom,prenom,sexe,email,tel,pss,date1,heure) VALUES (?,?,?,?,?,?,?,?,?)";
	//$ely2 = $conn->prepare($insertion);
	//$ely2->execute([$nom_admin, $postnom_admin, $prenom_admin, $sexe_admin, $email_admin, $tel_admin, $pss_adminc, $date1, $heure ] );

	
?>

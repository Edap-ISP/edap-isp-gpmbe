<?php 
	//if (isset($_POST['save'])) {

	require('../config.php');

	 //$salle = $_POST['salle'];	
	 $id = $_POST['idft'];
	 $prom = $_POST['promotion'];
	 $section = $_POST['section'];
	 $mnt = $_POST['montant'];
	 $tranche = $_POST['tranche'];

	$date1 = date('Y-m-d');
	$heure = date('H:m');

$maj = mysqli_query($conn, "UPDATE frais_trim SET promotion ='".$prom."', section ='".$section."', montant ='".$mnt."', tranche ='".$tranche."'  WHERE id_ft ='".$id."' " );
//$edito = mysqli_query($conn, "UPDATE ges_prod_phon SET qte_entre ='".$alors3['qte_entre']."', stock_final ='".$stockfin."', pua ='".$alors3['pua']."', pvu ='".$alors3['pvu']."', ptsa = '".$alors3['pua'] * $alors3['stock_final']."', benef_pr_prod = '".$prx_vu - $alors3['pua']."', tpvs = '".$totpvs."', tbs ='".$beneftot."' WHERE full_name ='".$alors3['full_name']."' " );
	
	header('Location: ../modif_frais.php');
  exit();
//}

//}



	//$insertion2 = "INSERT INTO admin2 (nom,postnom,prenom,sexe,email,tel,pss,date1,heure) VALUES (?,?,?,?,?,?,?,?,?)";
	//$ely2 = $conn->prepare($insertion);
	//$ely2->execute([$nom_admin, $postnom_admin, $prenom_admin, $sexe_admin, $email_admin, $tel_admin, $pss_adminc, $date1, $heure ] );

	
?>

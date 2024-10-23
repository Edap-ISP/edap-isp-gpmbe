<?php 
	//if (isset($_POST['save'])) {

	require('../config.php');

	 echo $salle = $_POST['salle'];
	 echo $noms_eleve = $_POST['noms_eleve'];
	 echo $dt_naiss_eleve = $_POST['dt_naiss_eleve'];
	 echo $section_eleve = $_POST['section'];
	 echo $promotion = $_POST['promotion'];
	 echo $noms_parent = $_POST['noms_parent'];
	 echo $adress_tut = $_POST['adresse_tut'];
	 echo $section = $_POST['section'];
	 echo $sexe = $_POST['sexe_eleve'];
	 echo $tel = $_POST['tel'];

	 $kombo = explode(" ", $noms_eleve,3);

	  $kombo[0];
	  $kombo[1];
	  $kombo[2];

	$date1 = date('Y-m-d');
	$heure = date('H:m');


                  //$sqlx  = "SELECT * FROM enreg_client ";
                  //$rez  = mysqli_query($conn, $sqlx);
                  //$alors  = mysqli_fetch_assoc($rez);
                  //echo $alors['id_client'];


$maj = mysqli_query($conn, "UPDATE enreg_client SET nom_eleve ='".$kombo[0]."', postnom_eleve ='".$kombo[1]."', prenom_eleve ='".$kombo[2]."', dt_naiss_eleve = '".$dt_naiss_eleve."', promotion_eleve ='".$promotion."', section_eleve='".$section_eleve."', salle ='".$salle."', noms_parent ='".$noms_parent."' WHERE nom_eleve ='".$kombo[0]."' AND postnom_eleve='".$kombo[1]."' AND prenom_eleve='".$kombo[2]."' " );
//$edito = mysqli_query($conn, "UPDATE ges_prod_phon SET qte_entre ='".$alors3['qte_entre']."', stock_final ='".$stockfin."', pua ='".$alors3['pua']."', pvu ='".$alors3['pvu']."', ptsa = '".$alors3['pua'] * $alors3['stock_final']."', benef_pr_prod = '".$prx_vu - $alors3['pua']."', tpvs = '".$totpvs."', tbs ='".$beneftot."' WHERE full_name ='".$alors3['full_name']."' " );
	
	header('Location: ../index_list.php');
 exit();
//}

//}



	//$insertion2 = "INSERT INTO admin2 (nom,postnom,prenom,sexe,email,tel,pss,date1,heure) VALUES (?,?,?,?,?,?,?,?,?)";
	//$ely2 = $conn->prepare($insertion);
	//$ely2->execute([$nom_admin, $postnom_admin, $prenom_admin, $sexe_admin, $email_admin, $tel_admin, $pss_adminc, $date1, $heure ] );

	
?>

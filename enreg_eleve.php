<?php 
	
	require('connexion.php');



	$nom_eleve = $_POST['nom_eleve'];

	$utilisat = explode(" ", $nom_eleve);
	if (count($utilisat) > 0) {
			 $utilisat[0];
			 $utilisat[1];
			 $utilisat[2];
		}	


	echo $utilisat1 = $utilisat[0];
	echo $utilisat2 = $utilisat[1];
	echo $utilisat3 = $utilisat[2];

	echo $sexe_eleve = $_POST['sexe_eleve'];
	echo $dt_naiss_eleve = $_POST['dt_naiss_eleve'];
	echo $promotion_eleve = $_POST['promotion_eleve'];
	echo $section_eleve = $_POST['section_eleve'];
	echo $noms_parent = $_POST['noms_parent'];
	echo $adresse_tut = $_POST['adresse_tut'];
	echo $email_parent = $_POST['email_parent'];
	echo $tel = $_POST['tel'];
	echo $user_name = $_POST['user_name'];


	//$pss_admin2 = base64_encode($_POST['pss']);


	$pssw = $_POST['pssw'];
	//$priv_admin = $_POST['priv'];

	$date1 = date('Y-m-d');
	$heure = date('H:m');



   $query = "SELECT * FROM `enreg_client` WHERE nom_eleve='$utilisat[0]' AND postnom_eleve='$utilisat[1]' AND prenom_eleve='$utilisat[2]' ";
   $result = mysqli_query($conn2,$query) or die(mysql_error());
   $rows = mysqli_num_rows($result);
   if($rows==1){


   	echo $message = "


     <main id=\"main\" class=\"main\">
        <div class=\"pagetitle\">
            <div text-align:center>
             <div class=\"col-10\">
                 <div class=\"card\">
                  
                   <div class=\"card-body\">
                   <div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">
                       <h4 class=\"alert-heading\"><i>Cet élève  existe déjà dans votre liste .</i></h4>
                       <p>Dans le cadre de sécuriser vos enregistrements, le système vous rappelle en cas d'une tentative de double insertion des même données. <br>
                               Veuillez <a href=\"javascript:history.back()\">Ajouter un nouveau</a></p>
                       <hr>
                       <p class=\"mb-0\"><i>Cette alerte est parvenu à la direction de controle de <b>High Score</b></i>.</p>
                       <a href=\"javascript:history.back()\"><button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button></a>
                     </div>
                   </div>
                 <div>
              </div> 
            </div> 
        </div>
     </main>

     ";
	//$insertion = "INSERT INTO admin2 (nom,postnom,prenom,sexe,email,tel,pss,priv,date1,heure) VALUES (?,?,?,?,?,?,?,?,?,?)";
	//$ely = $conn->prepare($insertion);
	//$ely->execute([$nom_admin, $postnom_admin, $prenom_admin, $sexe_admin, $email_admin, $tel_admin, $pss_admin, $priv_admin, $date1, $heure ] );
     
    
   }else{

   	$nom_eleve = $_POST['nom_eleve'];

	$utilisat = explode(" ", $nom_eleve);
	if (count($utilisat) > 0) {
			 $utilisat[0];
			 $utilisat[1];
			 $utilisat[2];
		}	


	 
	$salle ="--";

	$insertion = "INSERT INTO enreg_client (nom_eleve,postnom_eleve,prenom_eleve,sexe_eleve,dt_naiss_eleve,promotion_eleve,section_eleve,adresse_tut,email_parent,user_name,pssw,noms_parent,tel,salle,date_c,heure) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	$ely = $conn->prepare($insertion);
	$ely->execute([$utilisat1, $utilisat2, $utilisat3, $sexe_eleve, $dt_naiss_eleve, $promotion_eleve, $section_eleve, $adresse_tut, $email_parent, $user_name, $pssw, $noms_parent, $tel, $salle, $date1, $heure ] );
	
	header('Location: ../login_eleve.php');
	
}




	//$insertion2 = "INSERT INTO admin2 (nom,postnom,prenom,sexe,email,tel,pss,date1,heure) VALUES (?,?,?,?,?,?,?,?,?)";
	//$ely2 = $conn->prepare($insertion);
	//$ely2->execute([$nom_admin, $postnom_admin, $prenom_admin, $sexe_admin, $email_admin, $tel_admin, $pss_adminc, $date1, $heure ] );

	
?>

<?php 
	
	require('connexion.php');

	$promotion = $_POST['promotion'];	
	$section = $_POST['section'];
	$montant = $_POST['montant'];
	$tranche = $_POST['tranche'];

	$date1 = date('Y-m-d');
	$heure = date('H:m');



   $query = "SELECT * FROM `frais_trim` WHERE promotion='$promotion' AND tranche ='$tranche' AND section ='$section' ";
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
                       <h4 class=\"alert-heading\"><i>Les données existent déjà.</i></h4>
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
   }else{

	$insertion = "INSERT INTO frais_trim (promotion,section,montant,tranche) VALUES (?,?,?,?)";
	$ely = $conn->prepare($insertion);
	$ely->execute([$promotion, $section, $montant, $tranche ] );
	
	header('Location: ../insert_frais.php');
	
}




	//$insertion2 = "INSERT INTO admin2 (nom,postnom,prenom,sexe,email,tel,pss,date1,heure) VALUES (?,?,?,?,?,?,?,?,?)";
	//$ely2 = $conn->prepare($insertion);
	//$ely2->execute([$nom_admin, $postnom_admin, $prenom_admin, $sexe_admin, $email_admin, $tel_admin, $pss_adminc, $date1, $heure ] );

	
?>

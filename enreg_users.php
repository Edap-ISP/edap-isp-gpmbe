<?php 
	
	require('connexion.php');

	$nom_admin = $_POST['nom'];	
	$postnom_admin = $_POST['postnom'];
	$prenom_admin = $_POST['prenom'];
	$sexe_admin = $_POST['sexe'];
	$tel_admin = $_POST['tel'];
	$email_admin = $_POST['email'];
	$pss_admin = $_POST['pss'];


	//$pss_admin2 = base64_encode($_POST['pss']);


	$pss_adminc = $_POST['pss'];
	$priv_admin = $_POST['priv'];

	$date1 = date('Y-m-d');
	$heure = date('H:m');



   $query = "SELECT * FROM `admin1` WHERE email='$email_admin' ";
   $result = mysqli_query($conn2,$query) or die(mysql_error());
   $rows = mysqli_num_rows($result);
   if($rows==1){


	$insertion = "INSERT INTO admin2 (nom,postnom,prenom,sexe,email,tel,pss,priv,date1,heure) VALUES (?,?,?,?,?,?,?,?,?,?)";
	$ely = $conn->prepare($insertion);
	$ely->execute([$nom_admin, $postnom_admin, $prenom_admin, $sexe_admin, $email_admin, $tel_admin, $pss_admin, $priv_admin, $date1, $heure ] );
     
     echo $message = "


     <main id=\"main\" class=\"main\">
        <div class=\"pagetitle\">
            <div text-align:center>
             <div class=\"col-10\">
                 <div class=\"card\">
                  
                   <div class=\"card-body\">
                   <div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">
                       <h4 class=\"alert-heading\"><i>Cet e-mail <b>".$email_admin."</b> existe déjà dans votre liste .</i></h4>
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

	$insertion = "INSERT INTO admin1 (nom,postnom,prenom,sexe,email,tel,pss,priv,date1,heure) VALUES (?,?,?,?,?,?,?,?,?,?)";
	$ely = $conn->prepare($insertion);
	$ely->execute([$nom_admin, $postnom_admin, $prenom_admin, $sexe_admin, $email_admin, $tel_admin, $pss_admin, $priv_admin, $date1, $heure ] );
	
	header('Location: ../crea_admin.php');
	
}




	//$insertion2 = "INSERT INTO admin2 (nom,postnom,prenom,sexe,email,tel,pss,date1,heure) VALUES (?,?,?,?,?,?,?,?,?)";
	//$ely2 = $conn->prepare($insertion);
	//$ely2->execute([$nom_admin, $postnom_admin, $prenom_admin, $sexe_admin, $email_admin, $tel_admin, $pss_adminc, $date1, $heure ] );

	
?>

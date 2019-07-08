<!DOCTYPE html>
<html lang="en">


<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Full Width Pics - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/full-width-pics.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="\projetfilrouge/accueil.php?id='$_SESSION['id']'">Retour sur le site</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">

      </div>
    </div>
  </nav>
  <?php 
  $leid = $_GET['id'] ; 
  
  try
  {
      // On se connecte à MySQL
      $bdd = new PDO('mysql:host=localhost;dbname=filrouge;charset=utf8', 'root', '');
  }
  catch(Exception $e)
  {
      // En cas d'erreur, on affiche un message et on arrête tout
          die('Erreur : '.$e->getMessage());
  }
  
  $reponse = $bdd->query('SELECT * FROM classification WHERE id='.$leid.'');
  $donnees = $reponse->fetch(); 

  ?>
  <!-- Header - set the background image for the header in the line below -->
 
  <!-- Content section -->
  <section class="py-5">
    <div class="container">
      <h1><?php echo($donnees['name']) ; ?></h1>
    </div>
  </section>

  
    

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Association l'Arche de Noé 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
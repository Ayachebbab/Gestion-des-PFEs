<?php 

$sname = "localhost";
$uname = "root";
$password = "";
$db_name = "pfe";

$conn = mysqli_connect($sname, $uname, $password, $db_name);

if (!$conn) {
	echo "connection failed";
}
?>

<?php
session_start();
include "db_connect.php";

$email=$_POST['email'];
$password=$_POST['password'];

if (isset($_POST['email']) && isset($_POST['password'])) {

	function validate($data){
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}

	$email = validate($_POST['email']);
	$pass = validate($_POST['password']);

	if (empty($email)) {
		header("Location: Login_jury.php?error=Email is required");
	exit();

	}
	else if (empty($pass)) {
		header("Location: Login_jury.php?error=password is required");
	exit();	
	}
	else{

		$sql = "SELECT * FROM jury WHERE mail_jury='$email' AND password='$password'";

		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) == 1) {

				$row = mysqli_fetch_assoc($result);
            if ($row['mail_jury'] == $email && $row['password'] == $pass) {
            	$_SESSION['id_jury'] = $row['id_jury'];
            	$_SESSION['mail_jury'] = $row['mail_jury'];
            	$_SESSION['password'] = $row['password'];
			
            	header("Location: profile_jury.php");
		        exit();}


		    
            }else{
            	header("Location: Login_jury.php?error=Incorrect User name or password");
		        exit();
		       }
	
      }


}else {
	header("Location: Login_jury.php");
	exit();
}

?>
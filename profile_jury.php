<?php 

session_start();
include 'db_connect.php';

$my_id = $_SESSION['id_jury'];

  if (isset($_SESSION['id_jury']) && isset($_SESSION['mail_jury']) && isset($_SESSION['password'])) {

    $sql = "SELECT id_enc FROM encadrant WHERE id_jury = '$my_id'";
    $result = mysqli_query($conn, $sql);

    $j = 1;

        while ($row = $result->fetch_assoc()) {

          
            $sql1 = "SELECT id_pfe FROM pfes WHERE id_enc = '".$row['id_enc']."' ";
            $result1 = mysqli_query($conn, $sql1);




                  while ($row1 = $result1->fetch_assoc()) {


                    $sql2 = "SELECT id_pfe, name FROM document WHERE type_doc = 1 AND id_pfe = '".$row1['id_pfe']."' AND  n_flag=0";
                    $result2 = mysqli_query($conn, $sql2);
                
                    
                    
  

                        while ($row2 = $result2->fetch_assoc()) {
 
      if ($j == 1 && isset($row2['name'])) {
          $smya = $row2['name'];
          $pfe = $row2['id_pfe'];
          $sql20 = "SELECT suj_pfe FROM pfes WHERE id_pfe = ".$pfe."";
          $result20 = mysqli_query($conn, $sql20);
          $row20=  $result20->fetch_assoc();  
      }

      if ($j == 2 && isset($row2['name'])) {
        
        $smya1 = $row2['name'];
        $pfe1 = $row2['id_pfe'];
        $sql21 = "SELECT suj_pfe FROM pfes WHERE id_pfe = ".$pfe1."";
          $result21 = mysqli_query($conn, $sql21);
          $row21=  $result21->fetch_assoc();  
        
      }
      if ($j == 3 && isset($row2['name'])) {
        $smya2 = $row2['name'];
        $pfe2 = $row2['id_pfe'];
        $sql22 = "SELECT suj_pfe FROM pfes WHERE id_pfe = ".$pfe2."";
          $result22 = mysqli_query($conn, $sql22);
          $row22 =  $result22->fetch_assoc();  
        
      }
      if ($j == 4 && isset($row2['name'])) {
        $smya3 = $row2['name'];
        $pfe3 = $row2['id_pfe'];
        $sql23 = "SELECT suj_pfe FROM pfes WHERE id_pfe = ".$pfe3."";
          $result23 = mysqli_query($conn, $sql23);
          $row23=  $result23->fetch_assoc();  
        
      }
      if ($j == 5 && isset($row2['name'])) {
        $smya4 = $row2['name'];
        $pfe4 = $row2['id_pfe'];
        $sql24 = "SELECT suj_pfe FROM pfes WHERE id_pfe = ".$pfe4."";
          $result24 = mysqli_query($conn, $sql24);
          $row24=  $result24->fetch_assoc();  
        
      }
      if ($j == 6 && isset($row2['name'])) {
        $smya5 = $row2['name'];
        $pfe5 = $row2['id_pfe'];
        $sql25 = "SELECT suj_pfe FROM pfes WHERE id_pfe = ".$pfe5."";
          $result25 = mysqli_query($conn, $sql25);
          $row25=  $result25->fetch_assoc();  
        
      }
$j++;

     
                        }

                    
                  }}
        }





?>

<!DOCTYPE html>
<html>
<head>
  <head>
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <link rel="stylesheet" href="style.css">
    <title>Profile</title>
  </head>
  

<style type="text/css">
  
 



   nav{
    display: flex;

    align-items: center;
 
color: black;
 
    font-family: Arial;
   font-size: 100%;
    float: right;
}
html{
     height: 20%;
     overflow-x: hidden;
   }
   *{
  padding: 0;
  margin: 0;

  box-sizing: border-box;
  list-style-type: none;
  text-decoration: none;
  font-family: 'Montserrat';
}
     

input[type=text] {
  width: 80%;
  display: flex;
  margin-left: 140px ;
    resize: horizontal; 
    justify-content: center;
  min-height: 100px;
  border-radius: 5px;
    text-align: center;
    font-weight: bold;
    font-size: 1em;

}
input[type=submit]:hover {
  background-color: #f2f2f2;
}
input[type=submit] {
   width: 60%;
    height: 40px;
    margin:3px auto;
    justify-content: center;
    display: block;
    color: black;
    background-color:#BED5D6 ;
    font-size: 1em;
    font-weight: bold;
    margin-top: 20px;
    outline: none;
    border: none;
    border-radius: 5px;
    transition: .2s ease-in-out;
    cursor: pointer;
    border: 0.1em solid #637E80;
    margin-left: 180px;
}

.logo{
    color: rgb(225, 225, 225);
    letter-spacing: 5px;
    font-size: 20px;
  
}
#logo {
  font-weight: bold;
  margin-right: 900px;

}
form {
  width: 100%;
  margin: 0 auto;
}
fieldset {
  background: #81c4eb;
  border: 5px solid #637E80;
  width: 100%

}
.fieldset1{
   background: white;
  
  width: 100%

}

div {
  margin-bottom: 10px;
  font-size: 20px;
  color: white;
}
legend {
  padding: 8px;
  background: #637E80;
  color: white;
  font-family :Alpha Geometrique; 
  font-size: 20px;

}
h3 {
    font-family:sans-serif;
    font-weight: bold;
    text-align: center;
    color: #374B4C;
}

</style>


 <body background="img/nn.jpg">

    <div class="wrapper">
        <nav>
              <div id="logo"><a href="logout.php" ><h3><span  class="fas fa-sign-out-alt"></span><span class="fieldset1">Se Deconnecter</span></h3></a></div>
            <div class="logo">
                <img src="img/ens.png" >
            </div>
            <div style="clear: both;"></div>
            
 
        </nav>
 </div>

<?php


$maghatkhdmch = 'http://localhost/pfea/uploads/';
if (isset($smya)) {
  
$file = $maghatkhdmch.$smya.'.pdf' ;

 
echo "<br><br><fieldset>
  <legend>Sujet concerné : " .$row20['suj_pfe'] ; 

echo "</legend>";
echo "<br><br><table>

  <tr>
    <td>
      <iframe src=$file width=800 height=600 align=middle></iframe>
    </td>
    <td>  &nbsp &nbsp &nbsp &nbsp </td><td>  &nbsp &nbsp &nbsp &nbsp </td>
    <td> <form action='noter.php' method='POST'>  
     &nbsp &nbsp &nbsp &nbsp <input type='text'  placeholder='Noter le rapport' name='1'> 
      <input type='text' placeholder='Noter le travail' name='12'> 
      <input type='text' placeholder='Noter la soutenance' name='13'> 
      <input type='submit' name='submit' value='Noter'/>
     
    </form>
    </td>
  </tr>
</table></fieldset> <br><br><br><br>";

}

if (isset($smya1)) {

$file1 = $maghatkhdmch.$smya1.'.pdf' ;


echo "<br><br><fieldset>
  <legend>Sujet concerné : " .$row21['suj_pfe'];
echo "</legend>";

echo $smya1;
echo "<br><br><table>


  <tr>
    <td>
      <iframe src=$file1 width=800 height=600 align=middle></iframe>
    </td>
    <td>  &nbsp &nbsp &nbsp &nbsp </td><td>  &nbsp &nbsp &nbsp &nbsp </td>
    <td>
    <form action='noter.php' method='POST'>
      <input type='text' placeholder='Noter le rapport' name='2' />
      <input type='text' placeholder='Noter le travail' name='22'> 
      <input type='text' placeholder='Noter la soutenance' name='23'> 
        <input type='submit' name='submit1' value='Noter'/>   
        </form>
    </td>
  </tr>
</table></fieldset> <br><br><br><br>";

}

if (isset($smya2)) {

  $file2 = $maghatkhdmch.$smya2.'.pdf' ;


echo "<br><br><fieldset>
  <legend>Sujet concerné : " .$row22['suj_pfe'];
  echo "</legend>";

echo "<br><br><table>

  <tr>
    <td>
      <iframe src=$file2 width=800 height=600 align=middle></iframe>
    </td>
    <td>  &nbsp &nbsp &nbsp &nbsp </td><td>  &nbsp &nbsp &nbsp &nbsp </td>
    <td>
     <form action='noter.php' method='POST'>
      <input type='text' placeholder='Noter le rapport' name='3' />
      <input type='text' placeholder='Noter le travail' name='32'> 
      <input type='text' placeholder='Noter la soutenance' name='33'> 
        <input type='submit' name='submit1' value='Noter'/>   
      </form>
    </td>
  </tr>
</table></fieldset> <br><br><br><br>";

}
    
if (isset($smya3)) {
  
$file3 = $maghatkhdmch.$smya3.'.pdf' ;

echo "<br><br><fieldset>
  <legend>Sujet concerné : " .$row23['suj_pfe'];
    echo "</legend>";
echo "<br><br><table>
  <tr>
    <td>
      <iframe src=$file3 width=800 height=600 align=middle></iframe>
    </td>
    <td>  &nbsp &nbsp &nbsp &nbsp </td><td>  &nbsp &nbsp &nbsp &nbsp </td>
    <td> 
    <form action='noter.php' method='POST'>
      <input type='text' placeholder='Noter le rapport' name='4' />
      <input type='text' placeholder='Noter le travail' name='42'> 
      <input type='text' placeholder='Noter la soutenance' name='43'> 
        <input type='submit' name='submit1' value='Noter'/> 
    </form>
    </td>
  </tr>
</table> </fieldset><br><br><br><br>";

}

if (isset($smya4)) {
  
$file4 = $maghatkhdmch.$smya4.'.pdf' ;

echo "<br><br><fieldset>
  <legend>Sujet concerné : " .$row24['suj_pfe'];
   echo "</legend>";
echo "<br><br><table>
  <tr>
    <td>
      <iframe src=$file4 width=800 height=600 align=middle></iframe>
    </td>
    <td>  &nbsp &nbsp &nbsp &nbsp </td><td>  &nbsp &nbsp &nbsp &nbsp </td>
    <td> 
    <form action='noter.php' method='POST'>
      <input type='text' placeholder='Noter le rapport' name='5' />
      <input type='text' placeholder='Noter le travail' name='52'> 
      <input type='text' placeholder='Noter la soutenance' name='53'> 
        <input type='submit' name='submit1' value='Noter'/> 
    </form>
    </td>
  </tr>
</table> </fieldset><br><br><br><br>";

}

if (isset($smya5)) {
  
$file5 = $maghatkhdmch.$smya5.'.pdf' ;

echo "<br><br><fieldset>
  <legend>Sujet concerné : " .$row25['suj_pfe'];
   echo "</legend>";
echo "<br><br><table>
  <tr>
    <td>
      <iframe src=$file5 width=800 height=600 align=middle></iframe>
    </td>
    <td>  &nbsp &nbsp &nbsp &nbsp </td><td>  &nbsp &nbsp &nbsp &nbsp </td>
    <td> 
    <form action='noter.php' method='POST'>
      <input type='text' placeholder='Noter le rapport' name='6' />
      <br><br> 
      <input type='text' placeholder='Noter le travail' name='62'>
      <br><br>
      <input type='text' placeholder='Noter la soutenance' name='63'> 
        <input type='submit' name='submit1' value='Noter'/> 
    </form>
    </td>
  </tr>
</table> </fieldset><br><br><br><br>";

}
?>


</body>
</html>
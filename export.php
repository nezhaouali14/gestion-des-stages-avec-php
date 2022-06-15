<?php  
//export.php  
$connect = mysqli_connect("localhost", "root", "", "projetstage");
$output = '';
if(isset($_POST["export"]))
{
 $query = "SELECT  nom,prenom,diplôme,noteFinal FROM etudiant,stage where stage.id_stage=etudiant.id_stage";
 $result = mysqli_query($connect, $query);
 if(mysqli_num_rows($result) > 0)
 {
  $output .= '
   <table class="table" bordered="1">  
                    <tr>  
                         <th>Nom</th>  
                         <th>Prenom</th>  
                         <th>diplôme</th>  
       <th>Notes Finales</th>
       
                    </tr>
  ';
  while($row = mysqli_fetch_array($result))
  {
   $output .= '
    <tr>  
                         <td>'.$row["nom"].'</td>  
                         <td>'.$row["prenom"].'</td>  
                         <td>'.$row["diplôme"].'</td>  
       <td>'.$row["noteFinal"].'</td>  
      
                    </tr>
   ';
  }
  $output .= '</table>';
  header('Content-Type: application/xls');
  header('Content-Disposition: attachment; filename=notes.xls');
  echo $output;
 }
}
?>




    
  






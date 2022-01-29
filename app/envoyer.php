<?php 
    $host = "localhost";
    $dbName = "cdn-form-isn";
    $userName = "root";
    $pass ="";

    $pdo = new PDO('mysql:dbname='. $dbName.';host=localhost',$userName,$pass);
    $pdo-> setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    $req = $pdo->prepare("
        INSERT INTO cgnformtable(nom, email, objet, message)
         VALUES(:nom, :email, :objet, :message)
    ");
    $req->execute(array(
        ':nom' => htmlspecialchars($_POST['nom']), 
        ':email' => htmlspecialchars($_POST['mail']), 
        ':objet' => htmlspecialchars($_POST['objet']), 
        ':message' => htmlspecialchars($_POST['message']) 
    ));



    /*
        if(isset($_POST['mailForm'])){ 
            $name= htmlspecialchars($_POST['nom']);
            $subject= htmlspecialchars($_POST['objet']);
            $mail = htmlspecialchars($_POST['mail']);
            $message= htmlspecialchars($_POST['message']);
            if(preg_match('#^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$#',$mail)){
                    $header="MINE-VERSION: 1.0\r\n";
                    $header.= 'From:""'. $name .'"<'. $mail.'>' ."\n";
                    $header.= 'Content-Type:text/html; charset="utf-8"'. "\n";
                    $header.='Content-Transfer-Encoding: 8bit';
            
                    $message='
                    <html>
                        <body>
                            <div align="center">
                                '.$message.'
                            </div>
                        </body>
                    </html>
                    ';
                   if (mail("karltrafi@gmail.com", $subject, $message, $header)){
                    echo"Message envoyez avec succès";
                   }
                   else{
                       echo"Ressayer";
                   }
            }
            else{
                echo"Adresse mail incorect";
            }
    } 
    */

?>
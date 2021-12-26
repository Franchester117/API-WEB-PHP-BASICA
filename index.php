<?php
    /*
        Métodos de la API CRUD de contactos
    */
    include "conexion.php";
    $conexion = new Conexion();    

    switch($_SERVER['REQUEST_METHOD']){
        case 'GET':
            if(isset($_GET['id'])){
                $stm = $conexion->prepare(
                    "SELECT * FROM contacts WHERE id =:id"
                );
                $stm->bindValue(':id',$_GET['id']);
                $stm->execute();
                $stm->setFetchMode(PDO::FETCH_ASSOC);
                header("HTTP/1.1 200 OK");
                echo json_encode($stm->fetchAll());
                exit();
            }else{
                $stm = $conexion->prepare(
                    "SELECT * FROM contacts"
                );
                $stm->execute();
                $stm->setFetchMode(PDO::FETCH_ASSOC);
                header("HTTP/1.1 200 OK");
                echo json_encode($stm->fetchAll());
                exit();
            }
        break;

        case 'POST':
            $stm = $conexion->prepare(
                "INSERT INTO contacts(name,email,tel) VALUES(:name,:email,:tel)"
            );
            $stm->bindValue(':name',$_POST['name']);
            $stm->bindValue(':email',$_POST['email']);
            $stm->bindValue(':tel',$_POST['tel']);
            $stm->execute();
            $id = $conexion->lastInsertId();
            if($id){
                $stm->setFetchMode(PDO::FETCH_ASSOC);
                header("HTTP/1.1 200 OK");
                echo json_encode($id);
            }
            exit();
        break;

        case 'PUT':
            $stm = $conexion->prepare(
                "UPDATE contacts SET name=:name, email=:email, tel=:tel WHERE id=:id"
            );
            $stm->bindValue(':id',$_GET['id']);
            $stm->bindValue(':name',$_GET['name']);
            $stm->bindValue(':email',$_GET['email']);
            $stm->bindValue(':tel',$_GET['tel']);
            $stm->execute();   
            header("HTTP/1.1 200 OK");         
            exit();
        break;

        case 'DELETE':
            $stm = $conexion->prepare(
                "DELETE FROM contacts WHERE id=:id"
            );
            $stm->bindValue(':id',$_GET['id']);            
            $stm->execute();   
            header("HTTP/1.1 200 OK");         
            exit();
        break;
        
        default:
            header("HTTP/1.1 400 BAD REQUEST");            
        break;
    }
?>
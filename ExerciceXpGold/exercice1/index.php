<?php
class User {
  // les proprietés de la class
  public $firstName;
 
  // Une méthode qui dit bonjour à l'utilisateur $firstName.
  public function __construct($firstName)
  {
    
   $this->$firstName = $firstName ;
 }
  
  public function hello()
  {
    echo "hello, " .  $this -> firstName;

    return $this;
  }
 
  // Une méthode pour enregistrer l'utilisateur.
  public function register()
  {
    echo " >> registered";
    return $this;
  }
 
  //Une méthode pour envoyer l'e-mail de bienvenue.
  public function mail()
  {
    echo " >> email sent";
  }
}
 function test(){
  $user1 = new User("Diarrassouba");
  $user1->firstName = "jane";
  $user1->hello() -> register() -> mail();

  
 }
 test();



 


?>
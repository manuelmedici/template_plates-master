<?php
//Questo è il controller

//Questa serve per il caricamento delle librerie
require 'vendor/autoload.php';

//L'oggetto che poi si occuperà di gestire il template
$templates = new League\Plates\Engine('templates','tpl');

//Qui ci sarebbe la parte di elaborazione sul modello,
//la M di MVC
//In questo esempio viene creato un vettore nel codice,
//generalmente saranno dei dati estratti da un database

//Accesso ai database con PDO

//Creazione della stringa dsn (Data Source Name)
$dsn = 'mysql:host=localhost;dbname=us_presidential_election';

//Creazione della connessione
$pdo = new PDO($dsn, 'root', '');


$stmt = $pdo->query('SELECT MAX(totalvotes) FROM election_data WHERE state = "ARKANSAS"');
$bestvotes = $stmt->fetchAll();
$maxvote = $bestvotes[0][0];

$sql = 'SELECT DISTINCT year, state FROM election_data WHERE totalvotes = :maxvote';
$stmt = $pdo ->prepare($sql);
$stmt -> execute(['maxvote' => $maxvote]);
//    $pdo->query('SELECT year, state FROM election_data WHERE totalvotes = :$maxvote  ');
$yearstate = $stmt->fetchAll();

//Per verificare il funzionamento della funzione escape (e) togliere il commento
//al codice qua sotto e togliere la chiamata $this->e($cognome), sostituendola con $cognome nel template
//$cognome = '<script>alert("Questo è un terribile attacco XSS")</script>';
$data = [
    'voti' => $bestvotes,
    'stati' => $yearstate,
];

echo $templates->render("bestvotation", $data);


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

$candidate = $_POST['candidates'];

$sql = 'SELECT DISTINCT party_detailed FROM election_data WHERE candidate = :candidate '; //Il FALSE sul writein serve a togliere i candidati non "reali"

$stmt = $pdo->prepare($sql);

$stmt->execute([
        'candidate' => $candidate,]
);

$party = $stmt->fetchAll();


$data = ['party' => $party,];

echo $templates->render("party", $data);
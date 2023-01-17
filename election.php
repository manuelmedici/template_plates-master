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

$stmt = $pdo->query('SELECT MAX( candidatevotes) FROM election_data WHERE year="2016" AND candidate ="TRUMP, DONALD J."');

$maxvotes = $stmt->fetchAll();

$stmt = $pdo->query('SELECT state FROM election_data WHERE year="2016" AND candidate ="TRUMP, DONALD J." AND candidatevotes = "4685047" ');

$states = $stmt->fetchAll();

//Per verificare il funzionamento della funzione escape (e) togliere il commento
//al codice qua sotto e togliere la chiamata $this->e($cognome), sostituendola con $cognome nel template
//$cognome = '<script>alert("Questo è un terribile attacco XSS")</script>';
$data = [
    'voti' => $maxvotes,
    'stati' => $states,
];

echo $templates->render("election", $data);


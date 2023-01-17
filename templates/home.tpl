<?php
/**
 * Questo commento serve solo a eliminare l'indicazione di errore
 * da parte di PHPStorm per la variabile $studenti
 * @var $titolo
 */
?>
<html lang="it">
<head>
<!--   <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-exp.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-icons.min.css">-->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.46.1/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <title><?=$this->e($titolo)?></title>
</head>

<body class="bg-primary-content" >
    <section class="navbar bg-base-100">
                <div class="indicator">
                <a class="btn btn-ghost normal-case text-xl" href="questions.php">Home</a>
                </div>
    </section>
    <?=$this->section('content')?>

</body>
</html>

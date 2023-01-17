<?php
/**
 * Questo commento serve solo a eliminare l'indicazione di errore
 * da parte di PHPStorm per la variabile $studenti
 * @var $candidati
 */
?>
<html lang="it">
<head>
    <style>
        body{
            background-image: url("./images/parties.jpg");
            background-repeat: no-repeat;
            background-attachment: fixed;

        }

    </style>


</head>
<body>
<?php $this->layout('home', ['titolo' => 'Stati']) ?>
<div class="border border-sky-500 bg-current opacity-70"  >
    <p class="font-serif text-6xl text-black"  style="text-align: center">
        Membership party:
    </p>
    <h1 class="font-serif text-8xl text-fuchsia-700"  style="text-align: center"><?=$party[0][0] ?></h1>
</div>
</body>
</html>

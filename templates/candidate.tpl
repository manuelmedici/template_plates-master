<?php
/**
 * Questo commento serve solo a eliminare l'indicazione di errore
 * da parte di PHPStorm per la variabile $studenti
 * @var $studenti
 */
?>

<?php $this->layout('home', ['titolo' => 'Stati']) ?>

<h1>Esempio con gli stati americani</h1>

    <?php for($i = 0; $i < strlen($candidate[0]); $i++) {
        if($candidate[0][$i] == ',')
        $candidate[0][$i] = " ";
    }
    ?>
        <?=$candidate[0]?> <?=$candidate[1]?>


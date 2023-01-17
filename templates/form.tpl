<?php
/**
 * Questo commento serve solo a eliminare l'indicazione di errore
 * da parte di PHPStorm per la variabile $studenti
 * @var $studenti
 */
?>

<?php $this->layout('home', ['titolo' => 'Elenco candidati']) ?>

<h1>Select a candidate</h1>

<form action="party_by_candidate.php" method="post">
  <select name="candidates">
    <?php sort($candidati);
    foreach ($candidati as $candidato):?>
    <option><?=$candidato['candidate']?></option>
    <?php endforeach;?>
  </select>
  <br>
  <input type="submit">
</form>

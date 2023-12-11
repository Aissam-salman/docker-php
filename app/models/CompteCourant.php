<?php
require_once __DIR__ . DIRECTORY_SEPARATOR . "Compte.php";
class CompteCourant extends Compte {
    private int $montant_decourvert;

    public function __construct(float $solde, int $montant_decourvert) {
        parent::__construct($solde);
        $this->montant_decourvert = $montant_decourvert;
    }
}
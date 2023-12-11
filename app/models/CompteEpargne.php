<?php
require_once __DIR__ . DIRECTORY_SEPARATOR . "Compte.php";
class CompteEpargne extends Compte {
    private float $taux_interet;
    public function __construct(float $solde, float $taux_interet) {
        parent::__construct($solde);
        $this->montant_decourvert = $taux_interet;
    }
}
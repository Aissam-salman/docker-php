<?php

class Compte {
    private int $id ;
    private float $solde;
    private DateTime $date;

    public function __construct(float $solde) {
        $this->solde = $solde;
        $this->date = new DateTime('YY-MM-DD HH:MM');
    }
}
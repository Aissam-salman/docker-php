<?php

class Operation {
    private int $id;
    private float $montant;
    private bool $type;
    private DateTime $date;
    private bool $statut;

    public function __construct(float $montant, bool $type, bool $statut) {
        $this->date = new DateTime("YY-MM-DD HH:MM");
        $this->montant = $montant;
        $this->type = $type;
        $this->statut = $statut;
    }
}
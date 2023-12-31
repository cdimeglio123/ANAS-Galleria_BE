namespace association_tables;

entity Copertura {
    key ID                           : Integer;
        AspettiGeologici_ZZSOAWE_EXT : String(20);
        daPk                         : String(20);
        aPk                          : String(20);
        CoperturaM                   : Int16
}

entity AltezzaBattenteAcqua {
    key ID                                   : Integer;
        CondizioniIdrogeologiche_ZZSOAWE_EXT : String(20);
        daPk                                 : String(20);
        aPk                                  : String(20);
        AltezzaBattenteAcqua                 : Int16
}

entity CaratteristicheAmmasso {
    key ID                    : Integer;
        AmmassoAttraversatoID : String(20);
        Description           : String;
}

entity DescrizioneRivestimento {
    key ID                           : Integer;
        PrimaFase_ZZSOAWE_EXT        : String(20);
        daPk                         : String(20);
        aPk                          : String(20);
        DescrizioneRivestimento      : String(100);
        TipologiaDiMassoAttraversato : String(100)
}


entity ClasseIRI {
    key ID                                  : Integer;
        DifettositaPianoViabile_ZZSOAWE_EXT : String(20);
        daPk                                : String(20);
        aPk                                 : String(20);
        ClasseIRI                           : String(100);
}

entity MetodologiaIspezione {
    key ID                    : Integer;
        Ispezioni_ZZSOAWE_EXT : String(20);
        Ispezione             : String(20);
        Data                  : Date

}


entity TipoDiManutenzione {
    key ID                     : Integer;
        Interventi_ZZSOAWE_EXT : String(20);
        Intervento             : String(20);
        Data                   : Date
//Allegato:

}

namespace main_tables;

using {domain_tables as dt} from '../db/domain_tables';
using {association_tables as at} from '../db/association_tables';

entity SedeTecnica {
    key ZZSOAWE_EXT                : String(20);
        TPLNR                      : String(30);
        PLTXT                      : String(40);
        ZZKMA                      : Decimal(9, 3);
        ZZKMDA                     : Decimal(9, 3);
        ZZESTESA                   : Decimal(9, 3);
        ZZIFLOT                    : String(30);
        ZZIFLOT_DESCR              : String(40);
        TPLMA                      : String(30);
        NUM_FORNICE                : Int16;
        TOT_FORNICE                : Int16;
        BI_UNI                     : Association to dt.BI_UNI;
        Proprietario               : String(40);
        Concessionario             : String(40);
        EnteVigilante              : String(40);
        localizzazione             : Association to Localizzazione
                                         on localizzazione.ZZSOAWE_EXT = ZZSOAWE_EXT;
        annoCostruzione            : Association to AnnoCostruzione
                                         on annoCostruzione.ZZSOAWE_EXT = ZZSOAWE_EXT;
        datiProgetto               : Association to DatiProgetto
                                         on datiProgetto.ZZSOAWE_EXT = ZZSOAWE_EXT;
        annoProgettazione          : Association to AnnoProgettazione
                                         on annoProgettazione.ZZSOAWE_EXT = ZZSOAWE_EXT;
        tipologiaOpera             : Association to TipologiaOpera
                                         on tipologiaOpera.ZZSOAWE_EXT = ZZSOAWE_EXT;
        aspettiGeologici           : Association to AspettiGeologici
                                         on aspettiGeologici.ZZSOAWE_EXT = ZZSOAWE_EXT;
        condizioniPericolosita     : Association to CondizioniPericolosita
                                         on condizioniPericolosita.ZZSOAWE_EXT = ZZSOAWE_EXT;
        condizioniIdrogeologiche   : Association to CondizioniIdrogeologiche
                                         on condizioniIdrogeologiche.ZZSOAWE_EXT = ZZSOAWE_EXT;
        pericolositaGeologica      : Association to PericolositaGeologica
                                         on pericolositaGeologica.ZZSOAWE_EXT = ZZSOAWE_EXT;
        gasTemperatura             : Association to GasTemperatura
                                         on gasTemperatura.ZZSOAWE_EXT = ZZSOAWE_EXT;
        ammassoAttraversato        : Association to AmmassoAttraversato
                                         on ammassoAttraversato.ZZSOAWE_EXT = ZZSOAWE_EXT;
        generali                   : Association to Generali
                                         on generali.ZZSOAWE_EXT = ZZSOAWE_EXT;
        caratteristicheGeometriche : Association to CaratteristicheGeometriche
                                         on caratteristicheGeometriche.ZZSOAWE_EXT = ZZSOAWE_EXT;
        primaFase                  : Association to PrimaFase
                                         on primaFase.ZZSOAWE_EXT = ZZSOAWE_EXT;
        rivestimentoDefinito       : Association to RivestimentoDefinito
                                         on rivestimentoDefinito.ZZSOAWE_EXT = ZZSOAWE_EXT;
        drenaggioRivestimento      : Association to DrenaggioRivestimento
                                         on drenaggioRivestimento.ZZSOAWE_EXT = ZZSOAWE_EXT;
        impermeabilizzazione       : Association to Impermeabilizzazione
                                         on impermeabilizzazione.ZZSOAWE_EXT = ZZSOAWE_EXT;
        drenaggioPiattaforma       : Association to DrenaggioPiattaforma
                                         on drenaggioPiattaforma.ZZSOAWE_EXT = ZZSOAWE_EXT;
        pavimentazioneStradale     : Association to PavimentazioneStradale
                                         on pavimentazioneStradale.ZZSOAWE_EXT = ZZSOAWE_EXT;
        difettositaPianoViabile    : Association to DifettositaPianoViabile
                                         on difettositaPianoViabile.ZZSOAWE_EXT = ZZSOAWE_EXT;
        datiTraffico               : Association to DatiTraffico
                                         on datiTraffico.ZZSOAWE_EXT = ZZSOAWE_EXT;
        reteStradale               : Association to ReteStradale
                                         on reteStradale.ZZSOAWE_EXT = ZZSOAWE_EXT;
        carattGeoInfStradale       : Association to CarattGeoInfStradale
                                         on carattGeoInfStradale.ZZSOAWE_EXT = ZZSOAWE_EXT;
        struttureSecondarie        : Association to StruttureSecondarie
                                         on struttureSecondarie.ZZSOAWE_EXT = ZZSOAWE_EXT;
        infSicurezzaServGalleria   : Association to InfSicurezzaServGalleria
                                         on infSicurezzaServGalleria.ZZSOAWE_EXT = ZZSOAWE_EXT;
        illuminazione              : Association to Illuminazione
                                         on illuminazione.ZZSOAWE_EXT = ZZSOAWE_EXT;
        ventilazione               : Association to Ventilazione
                                         on ventilazione.ZZSOAWE_EXT = ZZSOAWE_EXT;
        alimentazioneElettrica     : Association to AlimentazioneElettrica
                                         on alimentazioneElettrica.ZZSOAWE_EXT = ZZSOAWE_EXT;
        rilevatoriIncendio         : Association to RilevatoriIncendio
                                         on rilevatoriIncendio.ZZSOAWE_EXT = ZZSOAWE_EXT;
        componentiSicurezza        : Association to ComponentiSicurezza
                                         on componentiSicurezza.ZZSOAWE_EXT = ZZSOAWE_EXT;
        interventi                 : Association to Interventi
                                         on interventi.ZZSOAWE_EXT = ZZSOAWE_EXT;
        ispezioni                  : Association to Ispezioni
                                         on ispezioni.ZZSOAWE_EXT = ZZSOAWE_EXT;
        circolazione               : Association to Circolazione
                                         on circolazione.ZZSOAWE_EXT = ZZSOAWE_EXT;
        rivestimentoInterno        : Association to RivestimentoInterno
                                         on rivestimentoInterno.ZZSOAWE_EXT = ZZSOAWE_EXT;
}

entity Pianificazione {
    key QMNUM       : String(12);
        TPLNR       : String(30);
        ZZSOAWE_EXT : String(20);
        QMTXT       : String(40);
        ERDAT       : DateTime;
        AEDAT       : DateTime;
        State       : String(20);
        sedeTecnica : Association to SedeTecnica
                          on sedeTecnica.ZZSOAWE_EXT = ZZSOAWE_EXT;
        partner     : Association to many Partner
                          on partner.pianificazione = $self;
        messaggi    : Association to many Messaggi
                          on messaggi.pianificazione = $self;
}

entity Messaggi {
    key QMNUM            : String(12);
    key ID_MESSAGGIO     : String(12);
        DATA_MESSAGGIO   : Timestamp;
        AUTORE_MESSAGGIO : String(40);
        MESSAGGIO        : String(500);
        pianificazione   : Association to Pianificazione;
}

entity Partner {
    key QMNUM          : String(12);
    key RUOLO          : String(2);
    key CONTATORE      : Integer;
        PARTNER        : String(12);
        pianificazione : Association to Pianificazione;
}

entity Localizzazione {
    key ZZSOAWE_EXT           : String(20);
    key NUMCOM                : Integer;
    CoordinateGeografiche    : Association to dt.CoordinateGeografiche;
    Provincia                : String(40);
    Regione                  : String(40);
    Comune                   : String(40);
    Loc                      : String(40);
    QuotaIniziale            : Decimal(15, 10);
    LongitudineIniziale      : Decimal(15, 10);
    LatitudineIniziale       : Decimal(15, 10);
    QuotaFinale              : Decimal(15, 10);
    LongitudineFinale        : Decimal(15, 10);
    LatitudineFinale         : Decimal(15, 10);
}


entity AnnoCostruzione {
    key ZZSOAWE_EXT                                          : String(20);
        UltimazioneCostruzioneCollaudo                       : DateTime;
        EffettivoPresuntoUltimazioneCostruzione              : Association to dt.EffettivoPresunto;
        EventualeUltimoInterventoDiManutenzioneSignificativo : DateTime;
        EffettivoPresuntoUltimoInterventoManutenzione        : Association to dt.EffettivoPresunto;
        Progettista                                          : String(40);
        NormaDiProgetto                                      : String(40);
        AnnoDiApprovazione                                   : String(4);
        EnteApprovatore                                      : String(40);

}

entity DatiProgetto {
    key ZZSOAWE_EXT        : String(20);
        Progettista        : String(40);
        NormaDiProgetto    : String(40);
        AnnoDiApprovazione : String(4);
        EnteApprovatore    : String(40);
}

entity AnnoProgettazione {
    key ZZSOAWE_EXT                       : String(20);
        DataInizio                        : Date;
        EffettivoPresuntoDataInizio       : Association to dt.EffettivoPresunto;
        DataFine                          : Date;
        EffettivoPresuntoDataFine         : Association to dt.EffettivoPresunto;
        DataApprovazione                  : Date;
        EffettivoPresuntoDataApprovazione : Association to dt.EffettivoPresunto;
}

entity TipologiaOpera {
    key ZZSOAWE_EXT                : String(20);
        TipologiaOpera             : Association to dt.Opera;
        ClassificazioneUsoStradale : Association to dt.ClassificazioneStradale;
        VMAXProgetto               : Int16;
        CCRCurvatureChangeRate     : Int16;
}

entity AspettiGeologici {
    key ZZSOAWE_EXT          : String(20);
        PosizioneMorfologica : Association to dt.PosizioneMorfologica;
        CoperturaMassima     : Int16;
        Copertura            : Association to many at.Copertura
                                   on Copertura.AspettiGeologici_ZZSOAWE_EXT = $self.ZZSOAWE_EXT;
}


entity CondizioniPericolosita {
    key ZZSOAWE_EXT                     : String(20);
        AmbienteGeologico               : Association to dt.AmbienteGeologico;
        ProfiloGeologicoDiProgetto      : Boolean;
        AccelerazioneAttesaAlBedrock    : Decimal(6, 4);
        PresenzaDiFaglieCapaci          : Boolean;
        DistanzaInkm                    : Decimal(6, 4);
        PresenzaDiInstabilitaDiVersante : Boolean;
        Descrizione                     : String(250);
        PresenzaDiRocceAmiantifere      : Boolean;
        Progressive                     : String(250);
}

entity CondizioniIdrogeologiche {
    key ZZSOAWE_EXT                     : String(20);
        CondizioniIdrogeologiche        : Association to dt.CondizioniIdrogeologiche;
        GalleriaIntegralmenteSottoFalda : Boolean;
        GalleriaParzialmenteSottoFalda  : Boolean;
        AltezzaBattenteAcquam           : Int16;
        AltezzaBattenteAcqua            : Association to many at.AltezzaBattenteAcqua
                                              on AltezzaBattenteAcqua.CondizioniIdrogeologiche_ZZSOAWE_EXT = $self.ZZSOAWE_EXT;
        AcquePotabili                   : Boolean;
        AcquePotabilinote               : String(250);
        AcqueAggressive                 : Boolean;
        AcqueAggressivenote             : String(250);
        AcqueCarbonatiche               : Boolean;
        AcqueCarbonatichenote           : String(250);
        AltreTipologieDiAcqua           : Boolean;
        AltreTipologieDiAcquanote       : String(250);
}

entity PericolositaGeologica {
    key ZZSOAWE_EXT                     : String(20);
        ProfiloGeologicoDiProgetto      : Boolean;
        AccelerazioneAttesaAlBedrock    : String(30);
        PresenzaDiFaglieCapaci          : Boolean;
        DistanzaInkm                    : Decimal(6, 4);
        PresenzaDiInstabilitaDiVersante : Boolean;
        Descrizione                     : String(100);
        PresenzaDiRocceAmiantifere      : Boolean;
        Progressive                     : String(100);

}

entity GasTemperatura {
    key ZZSOAWE_EXT                  : String(20);
        PresenzaMetanoCH4            : Boolean;
        NotePresenzaMetano           : String(250);
        PresenzaAltriGas             : Boolean;
        NotePresenzaAltriGas         : String(250);
        //DatoNonDisponibile           : ?; da togliere?
        PresenzaDiTemperatureElevate : Boolean;
        NoteTemperatureElevate       : String(250);
}

entity AmmassoAttraversato {
    key ZZSOAWE_EXT                                       : String(20);
        AssettoLitoStrutturale                            : Association to dt.AssettoLitoStrutturale;
        CaratteristicheAmmassoAttraversato                : Association to many at.CaratteristicheAmmasso
                                                                on CaratteristicheAmmassoAttraversato.AmmassoAttraversatoID = ZZSOAWE_EXT;
        PresenzaDiMonitoraggioGeotecnicoInternoGalleria   : Boolean;
        PresenzaDiMonitoraggioGeotecnicoVersanteEImbocchi : Boolean;
        PresenzaDiMonitoraggioIdrogeologico               : Boolean;
}

entity Generali {
    key ZZSOAWE_EXT                                  : String(20);
        TipoDiGalleria                               : Association to dt.TipoGalleria;
        SviluppGalleriaNaturaleM                     : Int16;
        SviluppoGalleriaArtificialeM                 : Int16;
        SviluppoTrattiFinestratiM                    : Int16;
        Imbocco                                      : Boolean;
        LunghezzaImboccoM                            : Int16;
        Sbocco                                       : Boolean;
        LunghezzaSbocco                              : Int16;
        InfrastrutturePotenzialmenteInterferenti     : Association to dt.InfrastrutturePotenzialmenteInterferenti;
        InfrastrutturePotenzialmenteInterferentiNote : String(250)
}

entity CaratteristicheGeometriche {
    key ZZSOAWE_EXT                                    : String(20);
        LunghezzaTotaleM                               : Int16;
        LunghezzaTotaleConEventualeBeccoDiFlautoM      : Int16;
        AltezzaDellIntradossoAlCentroDellaPiattaformaM : Int16;
        LarghezzaTraPiedritti                          : Int16;
        LarghezzaPiattaforma                           : Int16;
        AreaSezioneLiberaMq                            : Int16;
        ProfiloLongitudinale                           : Association to dt.ProfiloLongitudinale;
        PendenzaLongitudinaleMassima                   : Decimal(3, 3);
        PendenzaLongitudinaleMedia                     : Decimal(3, 3);
        DeformazioniStabili                            : Boolean;
        DeformazioniStabiliNote                        : String(250);
        DeformazioniEvolutive                          : Boolean;
        DeformazioniEvolutiveNote                      : String(250);
        TipologiaDiFormaDellaSezione                   : Association to dt.FormaDellaSezione;
        TipologiaDiDormaDellaSezioneAltroSpecificare   : String(250);
        ArcoRovescio                                   : Boolean;
        TelaioChiuso                                   : Boolean;
        SpessoreArcoRovescio                           : Int16;
}


entity PrimaFase {
    key ZZSOAWE_EXT                      : String(20);
        SpessoreArcoRovescio             : Int16;
        RivestimentoDiPrimaFase          : Boolean;
        SpessoreRivestimentoDiPrimaFaseM : Int16;
        CarattersiticheRivestimento      : Association to dt.RivestimentoPrimaFase;
        Altro                            : String(250);
        PresenzaReteMetallica            : Boolean;
        DiametroMReteMetallica           : Int16;
        DimensioniMaglieLarghezzaM       : Int16;
        DimensioniMaglieAltezzaM         : Int16;
        PresenzaFibreMetalliche          : Boolean;
        Caratteristiche                  : String(250);
        PresenzaPreSostegno              : Boolean;
        TipologiaPreSostegno             : String(250);
        PresenzaConsolidamentiAlFronte   : Boolean;
        TipologiaConsolidamentiAlFronte  : String(250);
        PresenzaMiglioramentoRoccia      : Boolean;
        TipologiaMiglioramentoRoccia     : String(250);
        PresenzaBullonatureRadiali       : Boolean;
        DescrizioneRivestimento          : Association to many at.DescrizioneRivestimento
                                               on DescrizioneRivestimento.PrimaFase_ZZSOAWE_EXT = $self.ZZSOAWE_EXT;
}


entity RivestimentoDefinito {
    key ZZSOAWE_EXT                                          : String(20);
        SpessoreRivestimentoDefinitivoM                      : Int16;
        MaterialeRivestimentoDefinitivo                      : Association to dt.MaterialeRivestimentoDefinitivo;
        Armatura                                             : Boolean;
        DiametroMm                                           : Int16;
        CopriferroMm                                         : Int16;
        FibreMetalliche                                      : Boolean;
        Caratteristiche                                      : String(250);
        NumeroDiConciPrefabbricatiSePresenti                 : Int16;
        TipologiaDelleGuarnizioniGasketInPresenzaDiConciPref : String(250)
}


entity RivestimentoInterno {
    key ZZSOAWE_EXT                                  : String(20);
        PresenzaRivestimentoInterno                  : Boolean;
        TipologiaRivestimentoInterno                 : String(250);
        ModalitaDiAncoraggioAlRivestimentoDefinitivo : String(250);
        Sviluppo                                     : Boolean;
        SviluppoModalitaDiAncoraggioM                : Int16;
        AltezzaDalPianoViabile                       : Boolean;
        AltezzaDalPianoViabileM                      : Int16
}

entity DrenaggioRivestimento {
    key ZZSOAWE_EXT                      : String(20);
        TipologiaDiDrenaggio             : String(250);
        TipologiaAncoraggi               : String(250);
        SistemaDiMisuraDelleAcqueDrenate : Boolean;
        QuantitaDAcquaDrenataMcS         : Int16;
        ModalitaDiDrenaggio              : Association to dt.ModalitaDrenaggio;
        NoteModalitaDiDrenaggio          : String(250);
        Diametro                         : Int16;
        Pendenza                         : Int16;
        NumeroPozzetti                   : Int16;
        DistanzaTraPozzetti              : Int16
}

entity Impermeabilizzazione {
    key ZZSOAWE_EXT                       : String(20);
        Impermeabilizzazione              : Boolean;
        TipoImpermeabilizzazione          : Boolean;
        Materiale                         : String(250);
        TipologiaTelo                     : Boolean;
        SpessoreTeloImpermeabilizzazioneM : Int16
}

entity DrenaggioPiattaforma {
    key ZZSOAWE_EXT                                                       : String(20);
        TipoCaditoia                                                      : Boolean;
        InterdistanzaM                                                    : Int16;
        SuperficieDrenanteMq                                              : Int16;
        AltezzaFessuraCmSeAFessura                                        : Int16;
        SistemaTagliafiammaPozzettiSifonati                               : Boolean;
        SistemaTagliafiammeNote                                           : String(250);
        SistemaDiRaccoltaDeiLiquidiPericolosiDistintoDalleAcqueMeteoriche : Boolean;
        NumeroDiVascheDiRaccolta                                          : Int16;
        CapacitaComplessivaMc                                             : Int16
}

entity PavimentazioneStradale {
    key ZZSOAWE_EXT               : String(20);
        PavimentazioneStradale    : Association to dt.PavimentazioneStradale;
        TipologiaDiPavimentazione : Association to dt.TipologiaDiPavimentazione;
        SpessoreCm                : Int16;
        StatoDiManutenzione       : Association to dt.StatoDiManutenzione;
        StatoDiManutenzioneNote   : String(250)
}


entity DifettositaPianoViabile {
    key ZZSOAWE_EXT                                 : String(20);
        IndicatoreIRIInternationalRoughnessIndexMMm : Boolean;
        ClasseDiIndiceIRIPrevalente                 : String(250);
        ClasseIRI                                   : Association to many at.ClasseIRI
                                                          on ClasseIRI.DifettositaPianoViabile_ZZSOAWE_EXT = $self.ZZSOAWE_EXT;

}

entity DatiTraffico {
    key ZZSOAWE_EXT                                                   : String(20);
        FonteDatiTraffico                                             : Boolean;
        AnnoDiRiferimentoiMisuraDiStima                               : Int16;
        TrafficoMedioGiornalieroTGMveicoliGiornoSullInteraCarreggiata : Int16;
        ClassificazioneDelTGM                                         : Association to dt.ClassificazioneDelTGM;
        TrafficoMedioGiornalieroVeicolioCommerciali                   : Int16;
        veicoliGiornoSullInteraCarreggiata                            : Int16;
        PercVP                                                        : Int16;
        veicoliGiornoMedioPerSingolaCorsiaDiMarcia                    : Int16;
        TrafficoMedioGiornalieroVeicoliADR                            : Int16;
        veicoliGiornoSullInteraCarreggiataVP                          : Int16
}

entity ReteStradale {
    key ZZSOAWE_EXT                                          : String(20);
        ItinerarioInternazionale                             : Boolean;
        ReteTEN                                              : Boolean;
        ReteEmergenza                                        : Boolean;
        NdiFornici                                           : Int16;
        NCorsieCornice                                       : Int16;
        PresenzaDiAlternativeStradaliChius                   : Boolean;
        PresenzaDiAlternativeStradaliPrat                    : Boolean;
        LunghezzaDeviazionekm                                : Int16;
        DurataDeviazioneMin                                  : Int16;
        CategoriaDelPercorsoAlternativoIndividuato           : String(250);
        DisponibilitaDiStudiTrasportisticiSpecifici          : Boolean;
        DisponibilitaDiAnalisiDiRischioSuPercorsiAlternativi : Boolean;
        Allegati                                             : String(250)
}

entity CarattGeoInfStradale {
    key ZZSOAWE_EXT                  : String(20);
        LarghezzaCarreggiataM        : Int16;
        NumeroDiCorsie               : Int16;
        LarghezzaDelleCorsieM        : Int16;
        CorsiaDiEmergenza            : Boolean;
        BanchinaLateraleDestra       : Boolean;
        BanchinaLateraleSinistra     : Boolean;
        MarciapiedeInDestra          : Boolean;
        MarciapiedeInSinistra        : Boolean;
        ProfiloRedirettivoInDestra   : Boolean;
        LarghezzaCorsiaEmergenzaM    : Int16;
        LarghezzaBanchinaDxM         : Int16;
        LarghezzaBanchinaSxM         : Int16;
        LarghezzaMarciapiedeSxM      : Int16;
        LarghezzaMarciapiedeDxM      : Int16;
        ProfiloRedirettivoInSinistra : Boolean;
        AltezzaMinimaInPiattaformaM  : Int16;
        AltezzaMinimaInCarreggiataM  : Int16;
        TipologiaTracciato           : Association to dt.Tracciato
}

entity StruttureSecondarie {
    key ZZSOAWE_EXT                         : String(20);
        Controsofitto                       : Boolean;
        SpessoreM_1                         : Int16;
        MaterialeControsoffitto             : Association to dt.Materiali;
        SolettaSottopavimentazione          : Boolean;
        SpessoreM_2                         : Int16;
        MaterialeSolettaSottopavimentazione : Association to dt.Materiali;
        PareteCunicoloLaterale              : Boolean;
        SpessoreM_3                         : Int16;
        MaterialePareteCunicoloalterale     : Association to dt.Materiali

}


entity InfSicurezzaServGalleria {
    key ZZSOAWE_EXT                                : String(20);
        PiazzoleDiSostaCarreggiataDX               : Boolean;
        Numero_1                                   : Int16;
        VieDiFuga                                  : Boolean;
        NoteViaDiFuga                              : String(250);
        ViabileSINONoteCunicoloDiEsodoSottoIlPiano : String(250);
        CunicoloDiEsodoSottoIlPianoViabile         : Boolean;
        CunicoloDiEsodoSopraIlPianoViabile         : Boolean;
        ResistenzaAlFuocoDelleStrutture            : Boolean;
        RsistenzaAlFuocoNote                       : Boolean;
        ByPassUscitaDiEmergenza                    : Boolean;
        InterasseemdioM                            : Int16;
        Numero_2                                   : Int16;
        SuperficiePareteDivisoriaMq_1              : Int16;
        ResistenzaREI_1                            : Int16;
        LarghezzaPorteM_1                          : Int16;
        ResistenzaREI_2                            : Int16;
        Numerom                                    : Int16;
        InterasseMedioM_1                          : Int16;
        DimensioniLarXLunM_1                       : Int16;
        Numero_3                                   : Int16;
        InterasseMedioM_2                          : Int16;
        DimensionilarXLunM_2                       : Int16;
        PresenzaCompartimentazione                 : Boolean;
        Tipologia                                  : String(250);
        InterasseMedioM_3                          : Int16;
        Numero_4                                   : Int16;
        SuperficiePareteDivisoriaMq_2              : Int16;
        ResistenzaREI_3                            : Int16;
        LarghezzaPorteM_2                          : Int16;
        ResistenzaREI_4                            : Int16;
        Numero_5                                   : Int16;
        SuperficiePareteDivisoriaMq                : Int16;
        ResistenzaREI_5                            : Int16;
        LarghezzaPorteM_3                          : Int16;
        ResistenzaREI                              : Int16;
        InterasseMedioM_4                          : Int16;
        Numero_6                                   : Int16;
        InterasseMedioM_5                          : Int16;
        Numero_7                                   : Int16;
        CompartimentazioneAntincendio              : Boolean;
        VaniTecnici                                : Boolean;
        ByPassCarrabili                            : Boolean;
        Idranti                                    : Boolean;
        StazioniDiEmergenza                        : Boolean
}

entity Illuminazione {
    key ZZSOAWE_EXT           : String(20);
        PresenzaIlluminazione : Boolean;
        TecnologiaSAPLED      : Int16;
        PosizioneProiettori   : Boolean;
        NumeroFile            : Int16
}

entity Ventilazione {
    key ZZSOAWE_EXT                             : String(20);
        TipologiaVentilazione                   : Association to dt.Ventilazione;
        VentilatoriJetFanInVolta                : Boolean;
        DisposizioneVentilatori                 : Association to dt.DisposizioneVentilatori;
        ControlloVibrazione                     : Boolean;
        CatenaDiSicurezza                       : Boolean;
        TipDiAncoraggio                         : String(250);
        ProveDiCollaudoDistaccoVentilazione     : Boolean;
        CatenaDiSicurezzaNote                   : String(250);
        ProveDiCollaudoDistaccoVentilazioneNote : String(250)
}

entity AlimentazioneElettrica {
    key ZZSOAWE_EXT                                    : String(20);
        AlimentazioneElettrica                         : Boolean;
        AlimentazioneDiEmergenza                       : Boolean;
        AlimentazioneSicurezzaUPS                      : Boolean;
        DistribuzioneInVolta                           : Boolean;
        ProveDiCollaudoDistaccoVent                    : Boolean;
        ProveDiCollaudoDistaccoVentNote                : String(250);
        AutonomiaOreAlimentazioneDiEmergenza           : Int16;
        AutonomiaMinutiAlimentazioneSicurezzaUPS       : Int16;
        TipologiaDistribuzioneInVolta                  : String(250);
        ProveDiCollaudoDistaccoApparecchiElettrici     : Boolean;
        ProveDiCollaudoDistaccoApparecchiElettriciNote : String(250)
}

entity RilevatoriIncendio {
    key ZZSOAWE_EXT                         : String(20);
        RilevatoriLineariDIncendio          : Boolean;
        TipologiaRilevatoriLineariDIncendio : String(250);
        PresenzaErogazioneIdrica            : Boolean;
        TipologiaDistribuzioneIdrica        : Boolean
}

entity ComponentiSicurezza {
    key ZZSOAWE_EXT                                  : String(20);
        PresenzaStazioniDiEmergenza                  : Boolean;
        LocalizzazioneInNicchia                      : Boolean;
        DistanzaMassimaM                             : Int16;
        PresenzaSegnaleticaVerticale                 : Boolean;
        SegnaleticaLuminosa                          : Boolean;
        SegnaleticaSullaCarreggiata                  : Boolean;
        SuperficieCartelliMq                         : Int16;
        SegnaleticaEsternaAllaCarreggiata            : Boolean;
        DimensioniCartelliEsterniAltXLarXDiamCm      : Int16;
        SegnaleticaVerticaleAgliImbocchi             : Boolean;
        SegnaleticaDiEsodo                           : Boolean;
        SegnaleticaVerticaleAgliImbocchiNote         : String(250);
        SegnaleticaDiEsodoNote                       : String(250);
        PannelliAlfanumerici                         : Boolean;
        PannelliAPittogrammi                         : Boolean;
        IndicatoriDiCorsiaFrecciaCroce               : Boolean;
        PannelliAlfanumericiNumero                   : Int16;
        PannelliAPittogrammiNumero                   : Int16;
        IndicatoriDiCorsiaFrecciaCroceNumero         : Int16;
        SemaforiAgliImbocchi                         : Boolean;
        Barriere                                     : Boolean;
        PresenzaTelecamereInGalleria                 : Boolean;
        TelecamereInGalleriaNumero                   : Int16;
        CentroDiControllo                            : Boolean;
        OperativitaH24NumeroDiOreAlGiornoDiControllo : Int16;
        PresenzaVarcoSpartitrafficoImbocchi          : Boolean;
        VarcoSpartitrafficoImbocchiNote              : String(250)
}

entity Interventi {
    key ZZSOAWE_EXT                             : String(20);
        InterventiDiManutenzione                : Association to dt.InterventoManutenzione;
        PianoDiManutenzione                     : String(250);
        NumeroDiInterventiManutentiviEffettuati : Int16;
        DataUltimoIntervento                    : Date;
        Periodicita                             : Date;
        TipoDiManutenzione                      : Association to many at.TipoDiManutenzione
                                                      on TipoDiManutenzione.Interventi_ZZSOAWE_EXT = $self.ZZSOAWE_EXT;
}


entity Ispezioni {
    key ZZSOAWE_EXT                                       : String(20);
        IspezioniPregresse                                : Association to dt.IspezioniPregresse;
        ProgrammaDiIspezioni                              : String(250);
        NumeroDiInterventiManutentiviEffettuati           : Int16;
        DataUltimoIntervento                              : Date;
        Periodicita                                       : String(250);
        MetodologiaIspezione                              : Association to many at.MetodologiaIspezione
                                                                on MetodologiaIspezione.Ispezioni_ZZSOAWE_EXT = $self.ZZSOAWE_EXT;
        IspezioniPregresseIlManualeIspezioniDelleGallerie : Association to dt.IspezioniPregresse;
        NumeroDiIspezioniEffettuate                       : Int16;
        DataUltimaIspezione                               : Date;
        PeriodicitASePiUDi1Ispezione                      : Int16;
        RisultatiSignificativi_1                          : String(250);
        TipoRilevamento                                   : String(250);
        DataInizio                                        : String(250);
        MetodologiaMonitoraggio                           : Date;
        DataUltimoAggiornamento                           : String(250);
        DataFine                                          : Date;
        TipologiaStrumentazione                           : String(250);
        GrandezzeMisurate                                 : Int16;
        RisultatiSignificativi_2                          : String(250);
        LivelloAllerta                                    : Int16;
        DocumentazioneRelativa                            : String(250)
}


entity Circolazione {
    key ZZSOAWE_EXT                                                          : String(20);
        CondizioniDiCircolazioneTGMEstivo                                    : String(250);
        TrafficoDOraDiPunta3                                                 : Int16;
        LimiteDiVelocitALocalizzato                                          : Boolean;
        VelocitaMassimaConsentitakmH                                         : Int16;
        DivietoDiSorpassoPerGliAutocarri                                     : Boolean;
        DistanziamentoMinimoObbligatorio                                     : Boolean;
        DistanzaMinimaImpostaM                                               : Int16;
        LimitazioneDiSagomaNessunLimitePresente                              : Boolean;
        LimitazioneDiSagomaAltezzaMassimaConsentitaM                         : Int16;
        TransitoDiVeicoliTrasportantiMerciPericoloseAmmesso                  : Association to dt.MerciPericoloseAmmesse;
        RestrizioniAlTransitoDiVeicoliTrasportantiMerciPericoloseADRCap86    : Association to dt.TrasportoMerciPericolose;
        ClassiDiConseguenza                                                  : Association to dt.ClassiDiConseguenza;
        InCasoDiClasseDiConseguenzaMinoreDiCC3FornireAdeguataGiustificazione : String(250)
}

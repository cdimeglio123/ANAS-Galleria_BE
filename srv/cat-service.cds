using {main_tables as m} from '../db/main_tables';
using {domain_tables as d} from '../db/domain_tables';
using {association_tables as a} from '../db/association_tables';

service CatalogService @(requires: [
    'authenticated-user',
    'system-user'
]) {
    entity SedeTecnica                              as projection on m.SedeTecnica;
    entity Pianificazione                           as projection on m.Pianificazione;
    entity Messaggi                                 as projection on m.Messaggi;
    entity Partner                                  as projection on m.Partner;
    entity Localizzazione                           as projection on m.Localizzazione;
    entity AnnoCostruzione                          as projection on m.AnnoCostruzione;
    entity DatiProgetto                             as projection on m.DatiProgetto;
    entity AnnoProgettazione                        as projection on m.AnnoProgettazione;
    entity TipologiaOpera                           as projection on m.TipologiaOpera;
    entity AspettiGeologici                         as projection on m.AspettiGeologici;
    entity CondizioniPericolosita                   as projection on m.CondizioniPericolosita;
    entity CondizioniIdrogeologiche                 as projection on m.CondizioniIdrogeologiche;
    entity PericolositaGeologica                    as projection on m.PericolositaGeologica;
    entity GasTemperatura                           as projection on m.GasTemperatura;
    entity AmmassoAttraversato                      as projection on m.AmmassoAttraversato;
    entity Generali                                 as projection on m.Generali;
    entity TipiDiGalleria                           as projection on m.TipiDiGalleria;
    entity CaratteristicheGeometriche               as projection on m.CaratteristicheGeometriche;
    entity PrimaFase                                as projection on m.PrimaFase;
    entity RivestimentoDefinito                     as projection on m.RivestimentoDefinito;
    entity RivestimentoInterno                      as projection on m.RivestimentoInterno;
    entity DrenaggioRivestimento                    as projection on m.DrenaggioRivestimento;
    entity Impermeabilizzazione                     as projection on m.Impermeabilizzazione;
    entity DrenaggioPiattaforma                     as projection on m.DrenaggioPiattaforma;
    entity PavimentazioneStradale                   as projection on m.PavimentazioneStradale;
    entity DifettositaPianoViabile                  as projection on m.DifettositaPianoViabile;
    entity DatiTraffico                             as projection on m.DatiTraffico;
    entity ReteStradale                             as projection on m.ReteStradale;
    entity CarattGeoInfStradale                     as projection on m.CarattGeoInfStradale;
    entity StruttureSecondarie                      as projection on m.StruttureSecondarie;
    entity InfSicurezzaServGalleria                 as projection on m.InfSicurezzaServGalleria;
    entity Illuminazione                            as projection on m.Illuminazione;
    entity Ventilazione                             as projection on m.Ventilazione;
    entity AlimentazioneElettrica                   as projection on m.AlimentazioneElettrica;
    entity RilevatoriIncendio                       as projection on m.RilevatoriIncendio;
    entity ComponentiSicurezza                      as projection on m.ComponentiSicurezza;
    entity Interventi                               as projection on m.Interventi;
    entity Ispezioni                                as projection on m.Ispezioni;
    entity Circolazione                             as projection on m.Circolazione;
    entity BI_UNI                                   as projection on d.BI_UNI;
    entity CoordinateGeografiche                    as projection on d.CoordinateGeografiche;
    entity EffettivoPresunto                        as projection on d.EffettivoPresunto;
    entity Opera                                    as projection on d.Opera;
    entity ClassificazioneStradale                  as projection on d.ClassificazioneStradale;
    entity PosizioneMorfologica                     as projection on d.PosizioneMorfologica;
    entity AmbienteGeologico                        as projection on d.AmbienteGeologico;
    entity AssettoLitoStrutturale                   as projection on d.AssettoLitoStrutturale;
    entity TipoGalleria                             as projection on d.TipoGalleria;
    entity InfrastrutturePotenzialmenteInterferenti as projection on d.InfrastrutturePotenzialmenteInterferenti;
    entity ProfiloLongitudinale                     as projection on d.ProfiloLongitudinale;
    entity FormaDellaSezione                        as projection on d.FormaDellaSezione;
    entity RivestimentoPrimaFase                    as projection on d.RivestimentoPrimaFase;
    entity MaterialeRivestimentoDefinitivo          as projection on d.MaterialeRivestimentoDefinitivo;
    entity ModalitaDrenaggio                        as projection on d.ModalitaDrenaggio;
    entity StatoDiManutenzione                      as projection on d.StatoDiManutenzione;
    entity TipologiaDiPavimentazione                as projection on d.TipologiaDiPavimentazione;
    entity ClassificazioneDelTGM                    as projection on d.ClassificazioneDelTGM;
    entity Tracciato                                as projection on d.Tracciato;
    entity Materiali                                as projection on d.Materiali;
    entity DisposizioneVentilatori                  as projection on d.DisposizioneVentilatori;
    entity InterventoManutenzione                   as projection on d.InterventoManutenzione;
    entity IspezioniPregresse                       as projection on d.IspezioniPregresse;
    entity MerciPericoloseAmmesse                   as projection on d.MerciPericoloseAmmesse;
    entity TrasportoMerciPericolose                 as projection on d.TrasportoMerciPericolose;
    entity ClassiDiConseguenza                      as projection on d.ClassiDiConseguenza;
    entity CondizioniIdrogeologicheDominio          as projection on d.CondizioniIdrogeologicheDominio;
    entity PavimentazioneStradaleDominio            as projection on d.PavimentazioneStradaleDominio;
    entity VentilazioneDominio                      as projection on d.VentilazioneDominio;
    entity CaratteristicheAmmassoDominio            as projection on d.CaratteristicheAmmassoDominio;
    entity TipoImpermeabilizzazione                 as projection on d.TipoImpermeabilizzazione;
    entity TipologiaTelo                            as projection on d.TipologiaTelo;
    entity TipoCaditoia                             as projection on d.TipoCaditoia;
   
   
    entity Copertura                                as projection on a.Copertura;
    entity AltezzaBattenteAcqua                     as projection on a.AltezzaBattenteAcqua;
    entity DescrizioneRivestimento                  as projection on a.DescrizioneRivestimento;
    entity ClasseIRI                                as projection on a.ClasseIRI;
    entity MetodologiaIspezione                     as projection on a.MetodologiaIspezione;
    entity TipoDiManutenzione                       as projection on a.TipoDiManutenzione;
    
}

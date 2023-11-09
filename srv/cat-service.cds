using { main_tables as db} from '../db/main_tables';

service CatalogService {
    entity SedeTecnica as projection on db.SedeTecnica;
    entity Pianificazione as projection on db.Pianificazione;
    entity Messaggi as projection on db.Messaggi;
    entity Partner as projection on db.Partner;
    entity Localizzazione as projection on db.Localizzazione;
    entity AnnoCostruzione as projection on db.DatiProgetto;
    entity DatiProgetto as projection on db.DatiProgetto;
    entity AnnoProgettazione as projection on db.DatiProgetto;
    entity TipologiaOpera as projection on db.DatiProgetto;
    entity AspettiGeologici as projection on db.DatiProgetto;
    entity CondizioniPericolosita as projection on db.DatiProgetto;
    entity CondizioniIdrogeologiche as projection on db.DatiProgetto;
    entity PericolositaGeologica as projection on db.DatiProgetto;
    entity GasTemperatura as projection on db.DatiProgetto;
    entity AmmassoAttraversato as projection on db.DatiProgetto;
    entity Generali as projection on db.DatiProgetto;
    entity CaratteristicheGeometriche as projection on db.CaratteristicheGeometriche;
    entity PrimaFase as projection on db.PrimaFase;
    entity RivestimentoDefinito as projection on db.RivestimentoDefinito;
    entity RivestimentoInterno  as projection on db.RivestimentoInterno;
    entity DrenaggioRivestimento  as projection on db.DrenaggioRivestimento;
    entity Impermeabilizzazione  as projection on db.Impermeabilizzazione;
    entity DrenaggioPiattaforma as projection on db.DrenaggioPiattaforma;
    entity PavimentazioneStradale as projection on db.PavimentazioneStradale;
    entity DifettositaPianoViabile as projection on db.DifettositaPianoViabile;
    entity DatiTraffico as projection on db.DatiTraffico;
    entity ReteStradale as projection on db.ReteStradale;
    entity CarattGeoInfStradale as projection on db.CarattGeoInfStradale;
    entity StruttureSecondarie as projection on db.StruttureSecondarie;
    entity InfSicurezzaServGalleria as projection on db.InfSicurezzaServGalleria;
    entity Illuminazione as projection on db.Illuminazione;
    entity Ventilazione as projection on db.Ventilazione;
    entity AlimentazioneElettrica as projection on db.AlimentazioneElettrica;
    entity RilevatoriIncendio as projection on db.RilevatoriIncendio;
    entity ComponentiSicurezza as projection on db.ComponentiSicurezza;
    entity Interventi as projection on db.Interventi;
    entity Ispezioni as projection on db.Ispezioni;
    entity Circolazione as projection on db.Circolazione;
}
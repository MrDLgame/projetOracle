/* question 2*/

Declare
    V_identifiant CIRCUIT.IDENTIFIANT%TYPE;
    V_nbEtape CIRCUIT.NOMBREETAPE%TYPE;
    V_villeDepart CIRCUIT.VILLEDEPART%TYPE;
    V_date CIRCUIT.DATEDEPART%TYPE;
    V_villeArrivee CIRCUIT.VILLEARRIVEE%TYPE;
    V_description CIRCUIT.DESCRIPTIF%TYPE;

BEGIN
    Select IDENTIFIANT, NOMBREETAPE, VILLEDEPART, DATEDEPART, VILLEARRIVEE, DESCRIPTIF into V_identifiant, V_nbEtape, V_villeDepart, V_date, V_villeArrivee, V_description
    from CIRCUIT
    where IDENTIFIANT= 7;
    DBMS_OUTPUT.PUT_LINE( 'Le circuit numéro ' || V_identifiant || ' comporte ' || V_nbEtape || ' etapes. Départ à ' || V_villeDepart || ' le ' ||  V_date || ' jusqu à ' || V_villeArrivee || '. Description: ' || V_description);
    

END;

CONFIGUREZ MARKUP HTML SUR SPOOL SUR PREFORMAT OFF ENTMAP SUR -
TÊTE « <TITLE>Department Report</TITLE> -
<STYLE type='text/css'> -
<!-- CORPS {fond: blanc} --> -
</STYLE> » -
 CORPS « TEXT='black' » -
 TABLEAU « LARGEUR='90%' BORDER='5' »
SPOOL sqlemploitime.html
SÉLECTIONNEZ DISTINCT C.codeCours, T.jourCoursDate,T. TRANCHE,C.VOLUMEH FROM Cours C
REJOIGNEZ Typehoraire T
ON C.codeCours= T.crsCodeCours
REJOIGNEZ Jourcours J
ON J.dateJourCours=T.jourCoursDate
REJOIGNEZ Coursdeclasse cls
ON T.crsCodeCours=cls.crsCodeCours
REJOIGNEZ Classe Cl
ON cl.specialiteNomSpec=cls.classSpecialiteNomspec
 OÙ T.jourCoursDate
 IN ('lundi', 'mardi','mercredi', 'jeudi','vendredi','samedi') ET cls.classNiveauidNiveau=001;
 SPOOL OFF;
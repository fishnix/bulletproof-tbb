<?php # $Id: lang_cz.inc.php 1.1 2008/01/20 01:53:00 VladaAjgl $

/**
 *  @version $Revision: 1.1 $
 *  @author Vladimir Ajgl <vlada@ajgl.cz>
 *  EN-Revision: Revision of lang_en.inc.php
 *  Translated on 2007/12/07 
 *  Revision on 2008/02/28 
 */
 
 // Colorsets
@define('THEME_COLORSET',               'Barevn� sada');
@define('USER_STYLESHEET',              'Pou��t dopl�uj�c� u�ivatelsk� soubor s css styly. U�ivatel mus� tento soubor ru�n� vytvo�it v adres��i �ablony bulletproof. Tento soubor mus� b�t pojmenov�m user.css a m��e b�t pou�it k nahrazen� n�kter�ch styl�.');
// Layout
@define('LAYOUT_TYPE',                  'Uspo��d�n� blogu (B = T�lo blogu, S = Sloupec (postrann�), ON = Obsah nejd��ve)');
@define('LAYOUT_SBS',                   'T�i sloupce, S-B-S');
@define('LAYOUT_BSS',                   'T�i sloupce, B-S-S, ON');
@define('LAYOUT_SSB',                   'T�i sloupce, S-S-B');
@define('LAYOUT_SB',                    'Dva sloupce, S-B');
@define('LAYOUT_BS',                    'Dva sloupce, B-S, ON');
@define('LAYOUT_SC',                    'Jeden sloupec, Postrann� sloupec pod n�m, ON');
@define('LAYOUT_SBF',                   'Dva sloupce, dva postrann� sloupce - na stran� a pod t�lem');
@define('LAYOUT_BSF',                   'Dva sloupce, dva postrann� sloupce - na stran� a pod t�lem, ON');
@define('JAVASCRIPT_COLUMNS',           'Vytvo� stejn� vysok� sloupce pomoc� javascriptu (trochu zpomal� vykreslov�n� str�nky).');
// Custom header
@define('BP_CUSTOM_HEADER',             'Vlastn� obr�zek v z�hlav� str�nky');
@define('BP_HEADER_IMAGE',              'Vyber obr�zek');
@define('BP_HEADER_TYPE',               'Opakov�n� obr�zku v z�hlav�');
@define('BP_HEADER_BANNER',             'Banner (neopakovat)');
@define('BP_HEADER_HTILED',             'Vodorovn� opakovan�');
@define('BP_HEADER_VTILED',             'Svisle opakovan�');
@define('BP_HEADER_BTILED',             'Vodorovn� i svisle opakovan�');
@define('BP_HEADER_POSHOR',             'Vodorovn� zarovn�n�');
@define('BP_HEADER_POSVER',             'Svisl� zarovn�n�');
@define('BP_CENTER',                    'na st�ed');
@define('BP_TOP',                       'naho�e');
@define('BP_BOTTOM',                    'dole');
// Fahrner Image Replacement
@define('FIR_BTITLE',                   'Zobrazovat n�zev blogu v z�hlav�');
@define('FIR_BDESCR',                   'Zobrazovat popis (podnadpis) blogu v z�hlav�');
// Date format
@define('BP_DATE_FORMAT',               'Form�t data');
// Entry footer
@define('ENTRY_FOOTER_POS',             'Um�st�n� pati�ky/z�hlav� p��sp�vku (takov� to s informacemi o autoru, datu vyd�n�, za�azen� do kategori�; rozd�len� pati�ky = kategorie p��sp�vku nad, zbytek pod p��sp�vkem)');
@define('BELOW_ENTRY',                  'Pati�ka = pod p��sp�vkem');
@define('BELOW_TITLE',                  'Z�hlav� = pod nadpisem p��sp�vku');
@define('SPLIT_FOOTER',                 'Rozd�lit pati�ku/z�hlav�');
@define('FOOTER_AUTHOR',                'Zobrazit v pati�ce autora');
@define('FOOTER_CATEGORIES',            'Zobrazit v pati�ce kategorie');
@define('FOOTER_TIMESTAMP',             'Zobrazit v pati�ce �as zve�ejn�n�');
@define('FOOTER_COMMENTS',              'Zobrazit v pati�ce po�et koment���');
@define('FOOTER_TRACKBACKS',            'Zobrazit v pati�ce po�et odezev');
@define('ALT_COMMTRACK',                'Pou��t alternativn� zobrazen� po�tu koment��� a odezev (nap�. "��dn� koment��e" nebo "1 koment��" m�sto "Koment��� (0)" nebo "Koment��� (1)")');
@define('SHOW_STICKY_ENTRY_FOOTER',     'Zobrazit pati�ku u st�l�ch (p�ilepen�ch) p��sp�vk� (vy�aduje nainstalov�n� pluginu ud�lost� "Roz���en� vlastnosti p��sp�vk�")');
@define('SHOW_STICKY_ENTRY_HEADING',    'Zobraz nadpis u st�l�ch (p�ilepen�ch) p��sp�vk� (vy�aduje nainstalov�n� pluginu ud�lost� "Roz���en� vlastnosti p��sp�vk�")');
// Page footer next page  and previous page links
@define('PREV_NEXT_STYLE',              'Zobrazit pati�ku "dal��/p�edchoz� p��sp�vek" ve tvaru');
@define('PREV_NEXT_TEXT',               'Text');
@define('PREV_NEXT_TEXT_ICON',          'Text a ikonka');
@define('PREV_NEXT_ICON',               'Ikonka');
// coComment support
@define('COCOMMENT_ACTIVE',             'Vlo�it coComment (http://www.cocomment.com) do formul��e koment���');
// Counter code
@define('COUNTER_CODE',                 'Vlo�it k�d po��tadla p��stup� a/nebo statistik webu');
@define('USE_COUNTER',                  'Pou��t v��e zadan� k�d po��tadla/statistik?');
// Additional footer text
@define('FOOTER_TEXT',                  'N�sleduj�c� text bude vlo�en do pati�ky p��sp�vk�');
@define('USE_FOOTER_TEXT',              'Vlo�it v��e zadan� text do pati�ky?');
//Sitenav
@define('SITENAV_POSITION',             'Poloha naviga�n� li�ty');
@define('SITENAV_NONE',                 '��dn� naviga�n� li�ta');
@define('SITENAV_ABOVE',                'Nad obr�zkem v z�hlav� str�nky');
@define('SITENAV_BELOW',                'Pod obr�zkem v z�hlav� str�nky');
@define('SITENAV_LEFT',                 'Na za��tku LEV�HO postrann�ho sloupce');
@define('SITENAV_RIGHT',                'Na za��tku PRAV�HO postrann�ho sloupce');
@define('SITENAV_FOOTER',               'Zobraz naviga�n� li�tu v pati�ce str�nky (pokud je v p�edchoz� volb� vybr�no "��dn� naviga�n� li�ta", nebude zobrazena nikdy bez ohledu na tuto volbu)');
@define('SITENAV_QUICKSEARCH',          'Zobrazit pol��ko rychl�ho vyhled�v�n� v naviga�n� li�t� (zobrazuje se pouze v naviga�n� li�t� nad nebo pod obr�zkem v z�hlav� str�nky. Je-li naviga�n� li�ta v postrann�ch sloupc�ch, vyhled�vac� pol��ko nen� nikdy zobrazeno.)');
@define('SITENAV_TITLE',                'Nadpis pro naviga�n� li�tu/menu (pouze pokud je zobrazena na za��tku postrann�ho sloupce)');
@define('SITENAV_TITLE_TEXT',           'Hlavn� menu');
@define('NAVLINK_AMOUNT',               'Zadejte po�et odkaz� naviga�n� li�ty (ihned po zad�n� t�to volby klikn�te na "Ulo�i" a obnovte str�nku)');
@define('NAV_LINK_TEXT',                'Test odkazu');
@define('NAV_LINK_URL',                 'URL adresa odkazu');

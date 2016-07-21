Child-Theme zu Flow einrichten
==============================

Fork https://github.com/OXID-eSales/flow_theme  

cd source/application/views

Child Theme Dateien:  
git clone https://github.com/grasshoppermedia/flow_theme.git flow_child --branch b-1.0

mv flow_child/out/flow flow_child/out/flow_child

Achtung, anders als in der Doku wird application klein geschrieben.
ln -s ../application/views/flow_child/out/flow_child ../../out/flow_child

theme.php für Childtheme anpassen
```
$aTheme = array(
    'id'             => 'flow_child',
    'title'          => 'Child of Flow',
    'description'    => 'Child of Flow. Flow is OXID`s official responsive theme based on the CSS framework Bootstrap 3.',
    'thumbnail'      => 'theme.jpg',
    'version'        => '1.0.0-beta.2',
    'author'         => '<a href="http://www.oxid-esales.com" title="OXID eSales AG">OXID eSales AG</a>',
    'parentTheme'    => 'flow',
    'parentVersions' => array('1.0.0-beta.2'),
);
```

Ggf. config Dateien kopieren
```sql
-- Kopiert Theme-Einstellungen von Flow Theme zu eigenem Theme (Oxid-Kochbuch) 
SET @sourceTheme='theme:flow';
SET @targetTheme='theme:flow_child';
INSERT INTO oxconfig (OXID, OXSHOPID, OXMODULE, OXVARNAME, OXVARTYPE, OXVARVALUE )
(SELECT UUID(), OXSHOPID, @targetTheme, OXVARNAME, OXVARTYPE, OXVARVALUE FROM oxconfig WHERE OXMODULE = @sourceTheme);
INSERT INTO oxconfigdisplay (OXID, OXCFGMODULE, OXCFGVARNAME, OXGROUPING, OXVARCONSTRAINT, OXPOS)
(SELECT UUID(), @targetTheme,OXCFGVARNAME, OXGROUPING, OXVARCONSTRAINT, OXPOS FROM oxconfigdisplay WHERE OXCFGMODULE = @sourceTheme);
```

Alle Dateien unter folgenden Ordnern löschen und wer will auch die Ordner:
[Shoproot]/application/views/[Theme]/tpl/  
[Shoproot]/application/views/[Theme]/out/[Theme]/img/  
[Shoproot]/application/views/[Theme]/de/  
[Shoproot]/application/views/[Theme]/en/  

Installation der notwendigen Programme und Plugins:
https://github.com/OXID-eSales/flow_theme/blob/master/README.md#development

In alle Dateien in application/views/flow_child/grunt/*.js ersetzen von flow zu flow_child 

cd flow_child
grunt
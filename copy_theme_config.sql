-- Kopiert Theme-Einstellungen von Flow Theme zu eigenem Theme (Oxid-Kochbuch) 
SET @sourceTheme='theme:flow';
SET @targetTheme='theme:flow_child';
INSERT INTO oxconfig (OXID, OXSHOPID, OXMODULE, OXVARNAME, OXVARTYPE, OXVARVALUE )
(SELECT UUID(), OXSHOPID, @targetTheme, OXVARNAME, OXVARTYPE, OXVARVALUE FROM oxconfig WHERE OXMODULE = @sourceTheme);
INSERT INTO oxconfigdisplay (OXID, OXCFGMODULE, OXCFGVARNAME, OXGROUPING, OXVARCONSTRAINT, OXPOS)
(SELECT UUID(), @targetTheme,OXCFGVARNAME, OXGROUPING, OXVARCONSTRAINT, OXPOS FROM oxconfigdisplay WHERE OXCFGMODULE = @sourceTheme);
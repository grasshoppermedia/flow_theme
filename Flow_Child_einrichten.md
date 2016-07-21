Child-Theme zu Flow einrichten
==============================

Fork https://github.com/OXID-eSales/flow_theme  

cd source/application/views
git clone https://github.com/grasshoppermedia/flow_theme.git flow_child --branch b-1.0

mv flow_child/out/flow flow_child/out/flow_child

ln -s ../application/views/flow_child/out/flow_child ../../out/flow_child

theme.php für Childtheme anpassen

Templates löschen


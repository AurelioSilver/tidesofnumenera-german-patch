rem Das Language tool gibt es auf: https://languagetool.org/
rem Installiere das Tool z. B. nach: D:\test_tton
rem 
rem 
rem Ersetze <drive_letter> mit dem Laufwerkbuchstaben, wo die Texte von "Torment: Tides of Numenera" liegen z. B.: d
rem Ersetze <text_source> mit dem Pfad, wo die Texte fuer "Torment: Tides of Numenera" liegen: z. B.: tton_git
rem Ersetze <drive_letter_helper> mit dem Laufwerkbuchstaben, wo die Helper Dateien liegen: z. B.: d
rem Ersetze <helper_source> mit dem Pfad, wo die Helper Dateien liegen: z. B.: test_tton
rem
rem Beispiel:
rem java -jar saxon9he.jar -s:d:/tton_git/language.xml -xsl:d:/test_tton/stringextract.xsl -threads:4
rem java -jar languagetool-commandline.jar -r -l de-DE -c UTF-8 -d DE_CASE,UPPERCASE_SENTENCE_START d:\tton_translation_bare > tton_text_fehler.txt 2>&1
rem
rem In der Datei stringextract.xsl muss text_source noch angepasst werden. Es muss der gleiche Pfad wie hier in dieser Batch Datei sein. Also z. B.: tton_git
rem Die erste Zeile erzeugt ein neues Verzeichnis tton_translation_bare auf dem Laufwerk <drive_letter_helper>. Also hier im Beispiel dann auf d.



java -jar saxon9he.jar -s:<drive_letter>:/<text_source>/language.xml -xsl:<drive_letter_helper>:/<helper_source>/stringextract.xsl -threads:4
java -jar languagetool-commandline.jar -r -l de-DE -c UTF-8 -d DE_CASE,UPPERCASE_SENTENCE_START <drive_letter_helper>:\tton_text_fehler_translation_bare > tton_text_fehler.txt 2>&1

pause
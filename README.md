# GraphReader
Reader für das DH-Modul Graphentechnologien in den digitalen Geisteswissenschaften an der Fernuni Hagen

Die Github-Pages-Version findet sich unter https://kuczera.github.io/GraphReader/

Die PDF-Version findet sich unter https://github.com/kuczera/GraphReader/raw/master/docs/downloads/Graphreader.pdf (sie weicht in einigen Punkten von der Github-Pages-Version ab).

Datenbank zum testen der GraphGists:

`http://134.176.70.65:11000/browser/`

Befehl für das Beispiel GraphGist:

`:play http://134.176.70.48:8001/html/fiii.htm`

Um dem Browser zu erlauben Guides von beliebigen Quellen zu laden, muss in conf/neo4j.conf folgende Zeile hinzugefügt werden (ist bei der Testdatenbank bereits eingerichtet):

`browser.remote_content_hostname_whitelist=*`

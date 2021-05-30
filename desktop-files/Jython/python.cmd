@echo off

set jython_jar=C:\PortableApps\Jython\2.7.2\jython-standalone-2.7.2.jar

call "C:\PortableApps\Java\env.bat"

call java -jar "%jython_jar%" %*

<?xml version="1.0" encoding="UTF-8" standalone="yes"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Repertoire</title>
        </head>
        <body>
            <xsl:for-each select="repertoire/personne">
            <p>
                Personne: <xsl:value-of select="nom"/> <xsl:value-of select="prenom"/>
            </p>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Repertoire</title>
        </head>
        <body>
            <p>
                Type du numero: <xsl:value-of select="repertoire/personne[nom='POPPINS']/telephones/telephone/@type">
                                </xsl:value-of>
            </p>
            <p>
                Numero: <xsl:value-of select="repertoire/personne[nom='POPPINS']/telephones/telephone">
                        </xsl:value-of>
            </p>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>
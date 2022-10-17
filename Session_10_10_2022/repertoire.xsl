<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet  version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
      <body>
            <h1>Personne</h1>
            <table>
                <tr>
                    <th>Prénom</th>
                    <th>Nom</th>
                    <th>adresse</th>
                    <th>telephones</th>
                    <th>emails</th>
                </tr>
                <xsl:for-each select="repertoire/personne">
                    <tr>
                        <td><xsl:value-of select="prenom" /></td>
                        <td><xsl:value-of select="nom" /></td>
                        <td><xsl:value-of select="adresse" /></td>
                        <td>
                        <xsl:for-each select="telephones/telephone">
                        <xsl:value-of select="." />
                        <xsl:text> </xsl:text>                        
                        </xsl:for-each>
                        </td>
                        
                        <td>
                            <xsl:for-each select="emails/email">
                                <xsl:value-of select="@type" />
                                <xsl:text> </xsl:text>
                                
                                <xsl:value-of select="." />
                            </xsl:for-each>
                        </td>
                        <xsl:for-each select="adresses" />
                    </tr>
                </xsl:for-each>
            </table>
        </body>
  </html>
</xsl:template>
</xsl:stylesheet>
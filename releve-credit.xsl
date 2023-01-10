<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>les operation de catégorie CREDIT</title>
            </head>
            <body>
                <h2>Opérations de type CREDIT:</h2>
                <table border="1" width="75%">
                    <tr>
                        <th>Type</th>
                        <th>Date</th>
                        <th>Montant</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="/releve/operations/operation[@type='CREDIT']" >
                        <tr>
                            <td><xsl:value-of select="@type" /></td>
                            <td><xsl:value-of select="@date" /></td>
                            <td><xsl:value-of select="@montant" /></td>
                            <td><xsl:value-of select="@description" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>
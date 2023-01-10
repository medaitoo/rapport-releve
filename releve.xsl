<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Relevé Bancaire</title>
            </head>
            <body>
                <xsl:for-each select="/releve">
                    
                    <h2>Relevé num : <xsl:value-of select="@RIB" /></h2>
                    <h2>Date Relevé : <xsl:value-of select="/releve/dateReleve" /></h2>
                    <h2>Solde : <xsl:value-of select="/releve/solde" /></h2>
                    <h2>Date du relevé entre le <xsl:value-of select="/releve/operations/@dateDebut" /> et le <xsl:value-of select="/releve/operations/@dateFin"/>.</h2>
                    
                    <table border="1" width="75%">
                        <tr>
                            <th>type</th>
                            <th>date</th>
                            <th>montant</th>
                            <th>description</th>
                        </tr>
                        <xsl:for-each select="/releve/operations/operation">
                            <tr>
                                <td><xsl:value-of select="@type" /></td>
                                <td><xsl:value-of select="@date" /></td>
                                <td><xsl:value-of select="@montant" /></td>
                                <td><xsl:value-of select="@description" /></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
    

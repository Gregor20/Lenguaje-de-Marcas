<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Raquetas</h1>
                <table border="1">
                <thead>
                    <tr>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Año</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="tienda/raqueta[marca='Babolat']">
                        <tr>
                            <td>
                                <xsl:value-of select="marca"/>
                            </td>
                            <td>
                                <xsl:value-of select="modelo"/>
                            </td>
                            <td>
                                <xsl:value-of select="anio"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </tbody>
                </table>
            </body>
        </html>
    
    </xsl:template>

</xsl:stylesheet>
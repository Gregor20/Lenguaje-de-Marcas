<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="/">
            <html>
                <body>
                    <h3>CATALOGO DE DISCOS</h3>
                    <table border="1">
                        <thead>
                            <tr bgcolor="#3377ff">
                                <th>Título</th>
                                <th>Artista</th>
                                <th>Anio</th>
                                <th>Precio</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="catalogo/disco">
                                
                                    <tr bgcolor="green">
                                        <td><xsl:value-of select="titulo"/></td>
                                        <td><xsl:value-of select="artista"/></td>
                                        <td><xsl:value-of select="anio"/></td>
                                        <xsl:choose>
                                        <xsl:when test="precio > 10">
                                            <td bgcolor="green"><xsl:value-of select="precio"/></td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td bgcolor="yellow"><xsl:value-of select="precio"/></td>
                                        </xsl:otherwise>
                                        </xsl:choose>
                                    </tr>
                                
                            </xsl:for-each>
                        </tbody>
                    </table>
                </body>
            </html>           
        </xsl:template>            
    </xsl:stylesheet>

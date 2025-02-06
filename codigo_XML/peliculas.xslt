<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Películas</h1>
                <table border="1">
                <thead>
                    <tr>
                        <th>Título</th>
                        <th>Director</th>
                        <th>Año</th>
                        <th>Reparto</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="peliculas/pelicula">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="director"/>
                            </td>
                            <td>
                                <xsl:value-of select="año"/>
                            </td>
                            <td>
                                <xsl:value-of select="reparto"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Inventario</h1>
                <ul>
                    <xsl:for-each select="inventario/producto">
                        <li>
                            <p>Elemento P<xsl:value-of select="position()"/></p>
                            <ul>
                                <li>Nombre:
                                    <xsl:value-of select="nombre"/>
                                </li>
                                <li>Peso: 
                                    <xsl:value-of select="concat(peso, 'g')"/>
                                </li>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
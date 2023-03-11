<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1> Table view</h1>
            <hr/> <br/> <br/>
            <table border="1" align="center">
                <tr>
                    <th align="center"><h2>Name</h2></th>
                    <th align="center"><h2>Age</h2></th>
                    <th align="center"><h2>Phone</h2></th>
                    <th align="center"><h2>Address</h2></th>
                </tr>
                <xsl:for-each select="bookstore/book">
                    <tr>
                        <td><xsl:value-of select="name"/></td>
                        <xsl:choose>
                            <xsl:when test="price &gt; 30">
                                <td><xsl:value-of select="age"/></td>
                            </xsl:when>
                            <xsl:when test="price &gt; 10">
                                <td><xsl:value-of select="age"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="age"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="price &gt; 30">
                                <td><xsl:value-of select="phone"/></td>
                            </xsl:when>
                            <xsl:when test="price &gt; 10">
                                <td><xsl:value-of select="phone"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="phone"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="price &gt; 30">
                                <td><xsl:value-of select="address"/></td>
                            </xsl:when>
                            <xsl:when test="price &gt; 10">
                                <td><xsl:value-of select="address"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="address"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
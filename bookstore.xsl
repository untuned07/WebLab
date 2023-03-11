<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h2> My Books collection</h2>
            <table border="1" align="center">
                <tr>
                    <th align="center"><h2>Title</h2></th>
                    <th align="center"><h2>Author</h2></th>
                    <th align="center"><h2>ISBN</h2></th>
                    <th align="center"><h2>Publisher</h2></th>
                    <th align="center"><h2>Edition</h2></th>
                    <th align="center"><h2>Price</h2></th>
                </tr>
                <xsl:for-each select="bookstore/book">
                    <tr>
                        <td><xsl:value-of select="title"/></td>
                        <xsl:choose>
                            <xsl:when test="price &gt; 30">
                                <td><xsl:value-of select="author"/></td>
                            </xsl:when>
                            <xsl:when test="price &gt; 10">
                                <td><xsl:value-of select="author"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="author"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="price &gt; 30">
                                <td><xsl:value-of select="isbn"/></td>
                            </xsl:when>
                            <xsl:when test="price &gt; 10">
                                <td><xsl:value-of select="isbn"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="isbn"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="price &gt; 30">
                                <td><xsl:value-of select="publisher"/></td>
                            </xsl:when>
                            <xsl:when test="price &gt; 10">
                                <td><xsl:value-of select="publisher"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="publisher"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="price &gt; 30">
                                <td><xsl:value-of select="edition"/></td>
                            </xsl:when>
                            <xsl:when test="price &gt; 10">
                                <td><xsl:value-of select="edition"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="edition"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="price &gt; 30">
                                <td><xsl:value-of select="price"/></td>
                            </xsl:when>
                            <xsl:when test="price &gt; 10">
                                <td><xsl:value-of select="price"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="price"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
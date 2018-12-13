<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
<html>
    <head>
        <meta charset="UTF-8"/>
        <link rel="stylesheet" type="text/css" href="mystyle.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="script.js"></script>
    </head>
    <body>
        <div id="header">
            <div id="top">
                <img src="logo.png"/>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="#news">Nowości</a></li>
                    <li><a href="#books">Książki</a></li>
                    <li><a href="#category">Kategorie</a></li>
                    <li><a href="#about">O serwisie</a></li>
                </ul>
            </div>
        </div>
        <div id="content">
            <div id="news">
                <div class="slajdy">
                    <table style="border-spacing: 10px">
                        <tr>
                            <td><xsl:value-of select="books/book/tytul"/></td>
                            <td rowspan="3"><img src="{books/book/image}" style="width:100px; height:150px"/></td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="books/book/autor"/></td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="books/book/wydawnictwo"/></td>
                        </tr>
                    </table>
                </div>
                <div class="slajdy">
                    <table style="border-spacing: 10px">
                        <tr>
                            <td><xsl:value-of select="books/book/tytul"/></td>
                            <td rowspan="3"><img src="{books/book/image}" style="width:100px; height:150px"/></td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="books/book/autor"/></td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="books/book/wydawnictwo"/></td>
                        </tr>
                    </table>
                </div>
                <div class="slajdy">
                    <table style="border-spacing: 10px">
                        <tr>
                            <td><xsl:value-of select="books/book/tytul"/></td>
                            <td rowspan="3"><img src="{books/book/image}" style="width:100px; height:150px"/></td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="books/book/autor"/></td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="books/book/wydawnictwo"/></td>
                        </tr>
                    </table>
                </div>
                <div class="slajdy">
                    <table style="border-spacing: 10px">
                        <tr>
                            <td><xsl:value-of select="books/book/tytul"/></td>
                            <td rowspan="3"><img src="{books/book/image}" style="width:100px; height:150px"/></td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="books/book/autor"/></td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="books/book/wydawnictwo"/></td>
                        </tr>
                    </table>
                </div>
                <div class="slajdy">
                    <table style="border-spacing: 10px">
                        <tr>
                            <td><xsl:value-of select="books/book/tytul"/></td>
                            <td rowspan="3"><img src="{books/book/image}" style="width:100px; height:150px"/></td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="books/book/autor"/></td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="books/book/wydawnictwo"/></td>
                        </tr>
                    </table>
                </div>

                <a class="prev" onclick="plusSlides(1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>

            </div>
            <div id="books">
            </div>
            <div id="category">

            </div>
            <div id="about">

            </div>
        </div>
        <div id="footer">
            <p>Kamil Buczek &#xA9; 2018</p>
        </div>
    </body>
</html>
    </xsl:template>
</xsl:stylesheet>
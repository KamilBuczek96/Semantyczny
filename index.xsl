<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
<html>
    <head>
        <meta charset="UTF-8"/>
        <link rel="stylesheet" type="text/css" href="mystyle.css"/>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="script.js"></script>
    </head>
    <body>
        <div id="header">
            <div id="top">
                <img src="Images/logo.png"/>
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
                <h2 style="text-align:center; font-family:georgia; padding-top: 7px;" >Nowości</h2>
                <a class="prev" onclick="minusSlides(1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
                <xsl:for-each select="books/book">
                    <xsl:if test="contains(./@category, 'new')"> <!-- sprawdza czy category elementu book to news-->
                        <div class="slajdy">
                            <table style="border-spacing: 10px">
                                <tr>
                                    <td><xsl:value-of select="tytul"/></td>
                                    <td rowspan="5"><img src="{image}" style="width:200px; height:250px ; border:1px solid black"/></td>
                                </tr>
                                <tr><td><xsl:value-of select="autor"/></td></tr>
                                <tr><td><xsl:value-of select="wydawnictwo"/></td></tr>
                                <tr><td><xsl:value-of select="liczba_stron"/></td></tr>
                                <tr><td><xsl:value-of select="okladka"/></td></tr>
                            </table>
                        </div>
                    </xsl:if>
                </xsl:for-each>
            </div>

            <div id="books">
                <h2 style="text-align:center; font-family:georgia; padding-top: 7px;">Wszystkie książki</h2>
                <xsl:for-each select="books/book">
                <div class="all">
                    <img src="{image}" style ="width: 100% ; height: 100%"/>
                    <p style="font-weight:bold;">Autor:</p><p><xsl:value-of select="autor"/></p>
                    <p style="font-weight:bold;">Wydawnictwo:</p><p><xsl:value-of select="wydawnictwo"/></p>
                    <p style="font-weight:bold;">Liczba stron:</p><p><xsl:value-of select="liczba_stron"/></p>
                    <p style="font-weight:bold;">Rodzaj okładki:</p><p><xsl:value-of select="okladka"/></p>
                </div>
                </xsl:for-each>
            </div>

            <div id="category">
                <p id="button_fantasy" class="button" style="float:left">Fantasy</p>
                <p id="button_informatyka" class="button" style="float:left">Informatyka</p>
                <p id="button_przygodowe" class="button" style="float:right;">Przygodowe</p>
                <p id="button_science_fiction" class="button" style="float:right">Science Fiction</p>
                <p id="button_wojenne" class="button" style="float:left">Wojenne</p>
                <p id="button_dramat" class="button" style="float:right">Dramat</p>


                <h2 style="text-align:center; font-family:georgia; padding-top: 7px;">Kategorie</h2>
                <xsl:for-each select="books/book">
                    <xsl:if test="contains(./@category2, 'fantasy')">
                        <div class="fantasy">
                            <img src="{image}" style ="width: 100% ; height: 100%"/>
                            <p style="font-weight:bold;">Autor:</p><p><xsl:value-of select="autor"/></p>
                            <p style="font-weight:bold;">Wydawnictwo:</p><p><xsl:value-of select="wydawnictwo"/></p>
                            <p style="font-weight:bold;">Liczba stron:</p><p><xsl:value-of select="liczba_stron"/></p>
                            <p style="font-weight:bold;">Rodzaj okładki:</p><p><xsl:value-of select="okladka"/></p>
                        </div>
                    </xsl:if>
                </xsl:for-each>
                <xsl:for-each select="books/book">
                    <xsl:if test="contains(./@category2, 'informatyka')">
                        <div class="informatyka">
                            <img src="{image}" style ="width: 100% ; height: 100%"/>
                            <p style="font-weight:bold;">Autor:</p><p><xsl:value-of select="autor"/></p>
                            <p style="font-weight:bold;">Wydawnictwo:</p><p><xsl:value-of select="wydawnictwo"/></p>
                            <p style="font-weight:bold;">Liczba stron:</p><p><xsl:value-of select="liczba_stron"/></p>
                            <p style="font-weight:bold;">Rodzaj okładki:</p><p><xsl:value-of select="okladka"/></p>
                        </div>
                    </xsl:if>
                </xsl:for-each>
                <xsl:for-each select="books/book">
                    <xsl:if test="contains(./@category2, 'dramat')">
                        <div class="dramat">
                            <img src="{image}" style ="width: 100% ; height: 100%"/>
                            <p style="font-weight:bold;">Autor:</p><p><xsl:value-of select="autor"/></p>
                            <p style="font-weight:bold;">Wydawnictwo:</p><p><xsl:value-of select="wydawnictwo"/></p>
                            <p style="font-weight:bold;">Liczba stron:</p><p><xsl:value-of select="liczba_stron"/></p>
                            <p style="font-weight:bold;">Rodzaj okładki:</p><p><xsl:value-of select="okladka"/></p>
                        </div>
                    </xsl:if>
                </xsl:for-each>
                <xsl:for-each select="books/book">
                    <xsl:if test="contains(./@category2, 'przygodowe')">
                        <div class="przygodowe">
                            <img src="{image}" style ="width: 100% ; height: 100%"/>
                            <p style="font-weight:bold;">Autor:</p><p><xsl:value-of select="autor"/></p>
                            <p style="font-weight:bold;">Wydawnictwo:</p><p><xsl:value-of select="wydawnictwo"/></p>
                            <p style="font-weight:bold;">Liczba stron:</p><p><xsl:value-of select="liczba_stron"/></p>
                            <p style="font-weight:bold;">Rodzaj okładki:</p><p><xsl:value-of select="okladka"/></p>
                        </div>
                    </xsl:if>
                </xsl:for-each>
                <xsl:for-each select="books/book">
                    <xsl:if test="contains(./@category2, 'science_fiction')">
                        <div class="science_fiction">
                            <img src="{image}" style ="width: 100% ; height: 100%"/>
                            <p style="font-weight:bold;">Autor:</p><p><xsl:value-of select="autor"/></p>
                            <p style="font-weight:bold;">Wydawnictwo:</p><p><xsl:value-of select="wydawnictwo"/></p>
                            <p style="font-weight:bold;">Liczba stron:</p><p><xsl:value-of select="liczba_stron"/></p>
                            <p style="font-weight:bold;">Rodzaj okładki:</p><p><xsl:value-of select="okladka"/></p>
                        </div>
                    </xsl:if>
                </xsl:for-each>
                <xsl:for-each select="books/book">
                    <xsl:if test="contains(./@category2, 'wojenne')">
                        <div class="wojenne">
                            <img src="{image}" style ="width: 100% ; height: 100%"/>
                            <p style="font-weight:bold;">Autor:</p><p><xsl:value-of select="autor"/></p>
                            <p style="font-weight:bold;">Wydawnictwo:</p><p><xsl:value-of select="wydawnictwo"/></p>
                            <p style="font-weight:bold;">Liczba stron:</p><p><xsl:value-of select="liczba_stron"/></p>
                            <p style="font-weight:bold;">Rodzaj okładki:</p><p><xsl:value-of select="okladka"/></p>
                        </div>
                    </xsl:if>
                </xsl:for-each>
            </div>
            <div id="about">
                <h2 style="text-align:center; font-family:georgia; padding-top: 50px;">O serwisie</h2>
                <p>Strona ta jest projektem końcowych dla przedmiotu Semantyczny Internet w semestrze zimowym 2018/2019</p>
                <p>Strona ta wykorzystuje technologie takie jak: XML, DTD, XSL, HTML, CSS oraz Java Script </p>
                <p><a href="Opis_projektu.pdf" style="text-decoration:none">Link do opisu projektu w pliku pdf</a></p>
                <p><a href="Diagram_DTD.pdf" style="text-decoration:none">Diagram DTD</a></p>
            </div>
        </div>
        <div id="footer">
            <p>Kamil Buczek &#xA9; 2018</p>
        </div>
    </body>
</html>
    </xsl:template>
</xsl:stylesheet>
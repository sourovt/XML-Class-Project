<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="5.0" />
    <!-- Start of the root template -->
    <xsl:template match="/">
    <html>
        <head>
            <script>
                function unhide(divID) {
                    var unhidden = document.getElementsByClassName('unhidden');
                    for (var k in unhidden) {
                        unhidden[k].className='hidden';
                    }
                
                    var item = document.getElementById(divID);
                    if (item) {
                        item.className='unhidden';
                    }
                }
            </script>
            <link rel="stylesheet" type="text/css" href="tour.css" />
            <title>CST 3519: XML Term Project</title>
        </head>
        <body>
            <table border="5">
                <tr>
                    <th colspan="4" id="headerid"><img src="logo.png" />Robert Chen's World Tour China, Inc.</th>
                </tr>
                <tr>
                    <td><a href="javascript:unhide('page1');"><xsl:value-of select="tours/tour[1]/tourName" /></a></td>
                    <td><a href="javascript:unhide('page2');"><xsl:value-of select="tours/tour[2]/tourName" /></a></td>
                    <td><a href="javascript:unhide('page3');"><xsl:value-of select="tours/tour[3]/tourName" /></a></td>
                    <td><a href="javascript:unhide('page4');"><xsl:value-of select="tours/tour[4]/tourName" /></a></td>
                </tr>
            </table>
            <div id="page1" class="unhidden">
                <table border="2">
                    <tr>
                        <td>
                        Tour Name: <xsl:value-of select="tours/tour[1]/tourName" />
                        <img src="Lake.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        Tour Description: <xsl:value-of select="tours/tour[1]/description" />
                        </td>
                    </tr>
                    <tr>
                        <td>                            
                        Tour Guide: <xsl:value-of select="tours/tour[1]/tourGuide" />
                        Email: <xsl:value-of select="tours/tour[1]/tdEmail" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        Tour Start Date: <xsl:value-of select="tours/tour[1]/tourStart" />
                        Tour End Date: <xsl:value-of select="tours/tour[1]/tourEnd" />
                        </td>
                    </tr>
                </table>
                <table border="3">
                    <tr>
                        <xsl:apply-templates select="tours/tour[1]/itinerary/day" />
                    </tr>
                </table>
            </div>
            <div id="page2" class="hidden">
                <table border="2">
                    <tr>
                        <td>
                        Tour Name: <xsl:value-of select="tours/tour[2]/tourName" />
                        <img src="hebrides.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        Tour Description: <xsl:value-of select="tours/tour[2]/description" />
                        </td>
                    </tr>
                    <tr>
                        <td>                            
                        Tour Guide: <xsl:value-of select="tours/tour[2]/tourGuide" />
                        Email: <xsl:value-of select="tours/tour[2]/tdEmail" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        Tour Start Date: <xsl:value-of select="tours/tour[2]/tourStart" />
                        Tour End Date: <xsl:value-of select="tours/tour[2]/tourEnd" />
                        </td>
                    </tr>
                </table>
                <table border="3">
                    <tr>
                        <xsl:apply-templates select="tours/tour[2]/itinerary" />
                    </tr>
                </table>
            </div>
            <div id="page3" class="hidden">
                <table border="2">
                    <tr>
                        <td>
                        Tour Name: <xsl:value-of select="tours/tour[3]/tourName" />
                        <img src="highland.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        Tour Description: <xsl:value-of select="tours/tour[3]/description" />
                        </td>
                    </tr>
                    <tr>
                        <td>                            
                        Tour Guide: <xsl:value-of select="tours/tour[3]/tourGuide" />
                        Email: <xsl:value-of select="tours/tour[3]/tdEmail" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        Tour Start Date: <xsl:value-of select="tours/tour[3]/tourStart" />
                        Tour End Date: <xsl:value-of select="tours/tour[3]/tourEnd" />
                        </td>
                    </tr>
                </table>
                <table border="3">
                    <tr>
                        <xsl:apply-templates select="tours/tour[3]/itinerary" />
                    </tr>
                </table>
            </div>
            <div id="page4" class="hidden">
                <table border="2">
                    <tr>
                        <td>
                        Tour Name: <xsl:value-of select="tours/tour[4]/tourName" />
                        <img src="castles.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        Tour Description: <xsl:value-of select="tours/tour[4]/description" />
                        </td>
                    </tr>
                    <tr>
                        <td>                            
                        Tour Guide: <xsl:value-of select="tours/tour[4]/tourGuide" />
                        Email: <xsl:value-of select="tours/tour[4]/tdEmail" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        Tour Start Date: <xsl:value-of select="tours/tour[4]/tourStart" />
                        Tour End Date: <xsl:value-of select="tours/tour[4]/tourEnd" />
                        </td>
                    </tr>
                </table>
                <table border="3">
                    <tr>
                        <xsl:apply-templates select="tours/tour[4]/itinerary" />
                    </tr>
                </table>
            </div>
        </body>
    </html>
    </xsl:template>
    <!-- End of the root template -->
    
    <!-- Start of the itinerary template -->
    <xsl:template match="day">
        <tr>
            <td>
                Day Number: <xsl:value-of select="dayNumber" />
            </td>
            <td>
                Day Plan: <xsl:value-of select="plan" />
            </td>
        </tr>
    </xsl:template>
    <!-- End of the itinerary template -->
</xsl:stylesheet>
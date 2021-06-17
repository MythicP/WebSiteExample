<?xml version='1.0' encoding='UTF-8'?>
						
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" />
	
	<xsl:template match="accommodation">

		
	   <html>
		 <head>	
		 
			<title>Accomidations</title>		
			<meta charset="UTF-8"/>
			<link rel="stylesheet" type="text/css" href="style.css" />
			<style>
				ul {list-style-type:disc}
			</style>
			
		 </head>
		 <body>
		  <div id="total">
			<h1>Listings for <xsl:value-of select="room/quality"/> Rooms</h1>
			<div id="room1"><xsl:apply-templates select="room[1]"/></div><br/>
			<div id="room2"><xsl:apply-templates select="room[2]"/></div><br/>
			<div id="room3"><xsl:apply-templates select="room[3]"/></div><br/>
		  </div>
		 </body>
	   </html>
	</xsl:template>
	
	<xsl:template match="room">
		<span style="font-family:courier">
		<h2><xsl:value-of select="name"/></h2>
		<ul>
			<li><xsl:value-of select="@stairs"/><xsl:text> Stairs</xsl:text></li>
			<li><xsl:text>Living area for </xsl:text><xsl:value-of select="size"/><xsl:text> people</xsl:text></li>
			<li><xsl:text>A short stay will cost: </xsl:text><xsl:value-of select="cost/short"/></li>
			<li><xsl:text>A Long stay will cost: </xsl:text><xsl:value-of select="cost/long"/></li>
			<li><xsl:text>A Long stay will cost: </xsl:text><xsl:value-of select="view"/></li><br/>
			<li><img src="{photo}"/></li>
			<li><xsl:value-of select="links"/></li>
			<li><xsl:text>Couryard: </xsl:text><xsl:value-of select="courtyard"/></li>
			<li><xsl:text>Bathroom: </xsl:text><xsl:value-of select="bathroom"/></li>
			<li><xsl:text>lighting: </xsl:text><xsl:value-of select="lighting"/></li>
			<li><xsl:text>air-con: </xsl:text><xsl:value-of select="air-con"/></li>
			<li><xsl:text>tv: </xsl:text><xsl:value-of select="tv"/></li>
		</ul>
		</span>
	</xsl:template>

</xsl:stylesheet>
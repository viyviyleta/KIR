<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="labs">
		<html>
			<head>
    		<meta charset="utf-8" />
        <title>1</title>
      </head>
			<body>
				<h2>Students</h2>
				<table border="1">
					<tr bgcolor="aqua">
						<th>Имя</th>
						<th>Фамилия</th>
						<th>Универ</th>
						<th>Любимый предмет</th>
						<th>Оценки матан</th>
						<th>Оценки англ</th>
					</tr>
					<xsl:for-each select="student">
            <xsl:sort select="name" order="ascending"/>
            <xsl:sort select="surname" order="ascending"/>
            <xsl:sort select="CML" order="ascending"/>
            <xsl:sort select="BAaP" order="ascending"/>
            <xsl:sort select="SDT" order="ascending"/>
            <xsl:sort select="SPL" order="ascending"/>        	 
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="surname"/></td>
						<td><xsl:value-of select="CML"/></td>
						<td><xsl:value-of select="BAaP"/></td>
						<td><xsl:value-of select="SDT"/></td>
						<td><xsl:value-of select="SPL"/></td>
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
		<html>
			<body>
				<h1>Сериалы</h1>
				<style>
					table {
					border-color: #000000;
					border-style: solid; 
					border-width:5px;
					}
					td {
					background: lightblue;
					padding: 5px;
					}
				</style>
				<table>
					<tr bgcolor="#800080">
						<th>ID</th>
						<th>tv_show</th>
						<th>Director</th>
						<th>MainActor</th>
						<th>Genre</th>
						<th>Year</th>
						<th>Status</th>
					</tr>				
					<xsl:for-each select="dataroot/Table/Element">
						<xsl:sort select="tv_show" order="descending"/>
						
						<tr>
							<td><xsl:number value="position()" format="1."/></td>
							<td><xsl:value-of select="tv_show"/></td>
							
							<td><xsl:value-of select="Director"/></td>
							<td><xsl:value-of select="MainActor"/></td>
							<td><xsl:value-of select="@Genre"/></td>
							<td><xsl:value-of select="@yearb"/></td>
							<td><xsl:value-of select="@status"/></td>
						</tr>
						</xsl:for-each>		
					</table>
					<table>
					<xsl:for-each select="dataroot/Table/Element">
						<xsl:if test = "@yearb =2016"> 
						<tr>
							
							<td><xsl:value-of select="tv_show"/></td>
							<td><xsl:value-of select="@yearb"/></td>
							
						</tr>
						</xsl:if>
					</xsl:for-each>		
				</table>
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:plat="http://www.elliemae.com/encompass/platform" >

     
<xsl:strip-space elements="*" />

	<xsl:output method="xml" indent="yes" />

<!-- The identity transform. Copy all nodes -->
	<xsl:template match="/ | @* | node()">
	   <xsl:copy>
	     <xsl:apply-templates select="*| node()"/>
	   </xsl:copy>
	</xsl:template>

<!-- Add prefix "ell:" to all nodes -->
	<xsl:template match="*[ancestor::plat:Licenses/*]">
		<xsl:element name="ell:{local-name()}"			namespace="http://schemas.datacontract.org/2004/07/EllieMae.EMLite.RemotingServices">
			<xsl:apply-templates select="node()|@*" />
		</xsl:element>
	</xsl:template>

<xsl:template
		match="plat:TPOContact">
		<xsl:element name="plat:TPOContactUpdateContract">
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>


    
</xsl:stylesheet>
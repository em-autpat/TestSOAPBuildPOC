<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://www.elliemae.com/services/loanactions"
	xmlns:loan="http://www.elliemae.com/services/loanactions" xmlns:plat="http://www.elliemae.com/encompass/platform">
	<xsl:output method="xml" />

	<xsl:template match="loan:Entities/loan:Entity">
		<xsl:element name="plat:Item">
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>


	<!-- Add prefix "plat:" to all nodes -->
	<xsl:template match="tns:*">
		<xsl:element name="plat:{local-name()}"
			namespace="http://www.elliemae.com/encompass/platform">
			<xsl:apply-templates select="node()|@*" />
		</xsl:element>
	</xsl:template>


</xsl:stylesheet>
<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" />


<xsl:template match="/">
	
	 <Contacts>
			
					
			<!-- Provider Contact List -->
			<xsl:for-each select="Loan/Contacts/Contact">
				<Contact>
					<xsl:choose>
						
						<xsl:when test="ContactType = 'LOAN_OFFICER'">
						<FullName>
							<xsl:value-of select="Name" />
						</FullName>
						<BusinessPhone>
							<xsl:value-of select="BusinessPhone" />
						</BusinessPhone>
						<Cell>
							<xsl:value-of select="Cell" />
						</Cell>
						<ContactName>
							<xsl:value-of select="ContactName" />
						</ContactName>
						<Email>
							<xsl:value-of select="Email" />
						</Email>
						<Fax>
							<xsl:value-of select="Fax" />
						</Fax>
							<ContactTypeName>LoanOfficer</ContactTypeName>
							<ContactId>
						<xsl:value-of select="concat('Provider.',Id)" />
					</ContactId>
					<ContactType>Provider</ContactType>
						</xsl:when>
						
						<xsl:when test="ContactType = 'LOAN_PROCESSOR'">
						<FullName>
							<xsl:value-of select="Name" />
						</FullName>
						<BusinessPhone>
							<xsl:value-of select="BusinessPhone" />
						</BusinessPhone>
						<Cell>
							<xsl:value-of select="Cell" />
						</Cell>
						<ContactName>
							<xsl:value-of select="ContactName" />
						</ContactName>
						<Email>
							<xsl:value-of select="Email" />
						</Email>
						<Fax>
							<xsl:value-of select="Fax" />
						</Fax>
						
							<ContactTypeName>LoanProcessor</ContactTypeName>
							<ContactId>
						<xsl:value-of select="concat('Provider.',Id)" />
					</ContactId>
					<ContactType>Provider</ContactType>
						</xsl:when>
					</xsl:choose>
					</Contact>
					
			</xsl:for-each>
			<!-- TPO  LoanOfficer Contact List -->
 			<xsl:for-each select="Loan/TPO">
 				<Contact>
 					<xsl:if test="LOBusinessPhone">
 						<BusinessPhone>
 							<xsl:value-of select="LOBusinessPhone" />
 						</BusinessPhone>
 					</xsl:if>
 					<xsl:if test="LOCellPhone">
 						<Cell>
 							<xsl:value-of select="LOCellPhone" />
 						</Cell>
 					</xsl:if>		
 						
 					<xsl:if test="LOName">
 						<FullName>
							<xsl:value-of select="LOName" />
 						</FullName>
 						<ContactType>Role</ContactType>
 						<ContactTypeName>TPOLoanOfficer</ContactTypeName>
 						<RoleName>Loan Officer</RoleName>
 					</xsl:if>
 					<xsl:if test="LOBusinessFax">
						<Fax>
 							<xsl:value-of select="LOBusinessFax" />
 						</Fax>
 					</xsl:if>
 					<xsl:if test="LOEmail">
 						<Email>
 							<xsl:value-of select="LOEmail" />
 						</Email>
 					</xsl:if>		
 			</Contact>
 			</xsl:for-each>
			<!-- TPO  Loan Processor Contact List -->
			<xsl:for-each select="Loan/TPO">
 				<Contact>
 					<xsl:if test="LPBusinessPhone">
 						<BusinessPhone>
 							<xsl:value-of select="LPBusinessPhone" />
 						</BusinessPhone>
 					</xsl:if>
 					<xsl:if test="LPCellPhone">
 						<Cell>
							<xsl:value-of select="LPCellPhone" />
 						</Cell>
 					</xsl:if>		
 
 					<xsl:if test="LPName">
 						<FullName>
 							<xsl:value-of select="LPName" />
						</FullName>
 						<ContactType>Role</ContactType>
 						<ContactTypeName>TPOLoanProcessor</ContactTypeName>
 						<RoleName>Loan Processor</RoleName>
 					</xsl:if>
 					<xsl:if test="LPBusinessFax">
 						<Fax>
							<xsl:value-of select="LPBusinessFax" />
 						</Fax>
 					</xsl:if>
 					<xsl:if test="LPEmail">
 						<Email>
 							<xsl:value-of select="LPEmail" />
 						</Email>
 					</xsl:if>
				</Contact>
			</xsl:for-each>
		</Contacts>
	</xsl:template>

</xsl:stylesheet>
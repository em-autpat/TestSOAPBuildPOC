<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" />


<xsl:template match="/">
	
	 <Contacts>
			
			<!-- Role Contact List -->
			<xsl:for-each select="Loan/MilestoneLogs/MilestoneLog">
			<xsl:if test="LoanAssociate/RoleName">
				<Contact>
					<xsl:choose>
						
						<xsl:when test="translate(normalize-space(LoanAssociate/RoleName),' ','') = 'LoanOfficer'">
						<FullName>
								<xsl:value-of select="LoanAssociate/Name" />
							</FullName>
						<Phone>
								<xsl:value-of select="LoanAssociate/Phone" />
							</Phone>
						<Cell>
								<xsl:value-of select="LoanAssociate/CellPhone" />
							</Cell>
						<ContactName>
							<xsl:value-of select="ContactName" />
						</ContactName>
						<Email>
								<xsl:value-of select="LoanAssociate/Email" />
							</Email>
						<Fax>
								<xsl:value-of select="LoanAssociate/Fax" />
							</Fax>
							<RoleName>
							<xsl:value-of select="LoanAssociate/RoleName" />
						</RoleName>
							<ContactTypeName>
							<xsl:value-of
								select="translate(normalize-space(LoanAssociate/RoleName),' ','')" />
						</ContactTypeName>
							<ContactId>
							<xsl:value-of select="concat('Role.',Guid)" />
						</ContactId>
					<ContactType>Role</ContactType>
					<Stage>
								<xsl:value-of select="Stage" />
							</Stage>
							<xsl:choose>
								<xsl:when test="LoanAssociate/WriteAccess = 'Y'">
									<WriteAccess>true</WriteAccess>
								</xsl:when>
								<xsl:otherwise>
									<WriteAccess>false</WriteAccess>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						</xsl:choose>			
					</Contact>
					<Contact>
					<xsl:choose>
						
						<xsl:when test="translate(normalize-space(LoanAssociate/RoleName),' ','') = 'LoanProcessor'">
						<FullName>
								<xsl:value-of select="LoanAssociate/Name" />
							</FullName>
						<Phone>
								<xsl:value-of select="LoanAssociate/Phone" />
							</Phone>
						<Cell>
								<xsl:value-of select="LoanAssociate/CellPhone" />
							</Cell>
						
						<Email>
								<xsl:value-of select="LoanAssociate/Email" />
							</Email>
						<Fax>
								<xsl:value-of select="LoanAssociate/Fax" />
							</Fax>
							<RoleName>
							<xsl:value-of select="LoanAssociate/RoleName" />
						</RoleName>
							<ContactTypeName>
							<xsl:value-of
								select="translate(normalize-space(LoanAssociate/RoleName),' ','')" />
						</ContactTypeName>
							<ContactId>
							<xsl:value-of select="concat('Role.',Guid)" />
						</ContactId>
					<ContactType>Role</ContactType>
					<Stage>
								<xsl:value-of select="Stage" />
							</Stage>
							<xsl:choose>
								<xsl:when test="LoanAssociate/WriteAccess = 'Y'">
									<WriteAccess>true</WriteAccess>
								</xsl:when>
								<xsl:otherwise>
									<WriteAccess>false</WriteAccess>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						</xsl:choose>			
					</Contact>
				
				</xsl:if>
			</xsl:for-each>
			
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
			
		</Contacts>
	</xsl:template>

</xsl:stylesheet>
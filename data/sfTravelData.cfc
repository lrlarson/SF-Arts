<cfcomponent output="false">

	<cffunction name="getLiveEvents" access="remote"  returnFormat="JSON" returntype="any">
		<cfstoredproc procedure="[procGetAllLiveEvens_TRAVEL2]" datasource="SFARTS_CFX" >
			<cfprocresult name="resultSet" >
		</cfstoredproc>
		<cfreturn resultSet>
	</cffunction>

		<cffunction name="getEditorialFeatures" access="remote"  returnFormat="JSON" returntype="any">
		<cfstoredproc procedure="[procEditorialGetItems_v4_sftravel]" datasource="SFARTS_CFX" >
			<cfprocresult name="resultSet" >
		</cfstoredproc>
		<cfreturn resultSet>
	</cffunction>

	
</cfcomponent>
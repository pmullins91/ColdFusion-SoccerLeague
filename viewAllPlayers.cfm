<html>
	<head>
		<style type="text/css">	
			.redFont {color: #FF0000;}
			.blueFont {color: #3333CC;}
		</style>.
		
		<title>ColdFusion SoccerLeague</title>
		<h1>List of all Players Registered</h1>
	</head>
		<body>

			<cfquery name="displayAllPlayers" datasource="soccerLeague">
				select * from player;
			</cfquery>

			<cfoutput query="displayAllPlayers">
				<cfif (displayAllPlayers.age lt 20)>
					<cfset myColorClass = "redFont">
				<cfelse>
					<cfset myColorClass = "blueFont">
				</cfif>
				<div id="allPlayers#displayAllPlayers.currentRow#" class="#myColorClass#">
					#displayAllPlayers.firstname#
					#displayAllPlayers.lastname#
					#displayAllPlayers.age#
				</div>
			</cfoutput> 

		</body>
</html>

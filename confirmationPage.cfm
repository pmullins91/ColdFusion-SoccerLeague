<html>
	<head>
		<title>ColdFusion SoccerLeague</title>
		<h1>Thank you for submitting your information.</h1>
		<body>
		
			<cfinsert dataSource = "soccerLeague"
        			tableName = "player"
        			formFields = "firstname,lastname,age">
			<cfquery name="soccerLeague" datasource="soccerLeague">
					select * from player ORDER BY player_id DESC limit 1;
			</cfquery>
			
			<cfoutput query="soccerLeague">
				<div id="playerEntry#soccerLeague.currentRow#">	
					#soccerLeague.firstname#
					#soccerLeague.lastname#
					#soccerLeague.age#
				</div>
			</cfoutput>
			
			<form action = "viewAllPlayers.cfm" method = "post">
				View All:<input type="submit">
			</form>
		</body>
	</head>
</html>



<html>
	<head>
		<title>ColdFusion SoccerLeague</title>
		<h1>Thank you for submitting your information.</h1>
		<body>
			<cfquery name="soccerLeague" datasource="soccerLeague">
					select * from player ORDER BY player_id DESC limit 1;
			</cfquery>

			<cfinsert dataSource = "soccerLeague"
        			tableName = "player"
        			formFields = "firstname,lastname,age">

			<cfoutput query="soccerLeague">
				<div id="playerEntry#soccerLeague.currentRow#">	
					#soccerLeague.firstname#
					#soccerLeague.lastname#
					#soccerLeague.age#
				</div>
			</cfoutput>
		</body
	</head>
</html>



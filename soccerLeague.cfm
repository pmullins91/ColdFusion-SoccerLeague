<html>
	<head>
		<title>ColdFusion SoccerLeague</title>
		<h1>ColdFusion SoccerLeague</h1>
			<body>
				<cfquery name="soccerLeague" datasource="soccerLeague">
					SELECT * FROM player
				</cfquery>
				<cfinsert dataSource = "soccerLeague"
        			tableName = "player"
        			formFields = "firstname,lastname,age">

				<form action = "soccerLeague.cfm" method = "post">
					First Name:<input name="firstname"type"text"><br>
					Last Name:<input type "text" name="lastname"><br>
					Age:<input  type"number" name="age"><br>
					Submit:<input type="submit">
				</form>

				<cfoutput query="soccerLeague">
					<div id="soccerLeagueDB#soccerLeague.currentRow#">	
						#soccerLeague.firstname#
						#soccerLeague.lastname#
						#soccerLeague.age#
					</div>
				</cfoutput>
		</body>
	</head>
</html>
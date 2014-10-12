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

				<p>
					<cfset soccerVar = "2">	
					<cfoutput query="soccerLeague">
						#soccerLeague.firstname#
						#soccerLeague.lastname#
						#soccerLeague.age#
					</cfoutput>
				</p>
				<form action = "soccerLeague.cfm" method = "post">
				First Name:<input name="firstname"type"text"><br>
				Last Name:<input type "text" name="lastname"><br>
				Age:<input  type"number" name="age"><br>
				Submit:<input type="submit">
				</form>
		</body>
	</head>
</html>
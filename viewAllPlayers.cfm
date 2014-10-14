<html>
	<head>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script>	
			$(document).ready(function(){
			  $("#button1").click(function(){
			    $("#allPlayers2").toggle();	
			  });
			});
		</script>
		<style type="text/css">	
			.redFont {color: #FF0000;}
			.blueFont {color: #3333CC;}
		</style>
		
		<script typ		e="text/javascript">
			function hideBlueResults(){

			}

		</script>

		<title>ColdFusion SoccerLeague</title>
		<h1>List of all Players Registered</h1>
	</head>
		<body>

			<cfquery name="displayAllPlayers" datasource="soccerLeague">
				select * from player;
			</cfquery>
			<table border="1" style="width:100%"
			<cfoutput query="displayAllPlayers">
				<cfif (displayAllPlayers.age lt 20)>
					<cfset myColorClass = "redFont">
				<cfelse>
					<cfset myColorClass = "blueFont">
				</cfif>
				<tr>
				<td id="allPlayers#displayAllPlayers.currentRow#" class="#myColorClass#">#displayAllPlayers.firstname#</td>
				<td id="allPlayers#displayAllPlayers.currentRow#" class="#myColorClass#">#displayAllPlayers.lastname#</td>
				<td id="allPlayers#displayAllPlayers.currentRow#" class="#myColorClass#">#displayAllPlayers.age#</td>
				</tr>
			</cfoutput>

			<button id="button1" onclick="">Toggle</button>


		</body>
</html>

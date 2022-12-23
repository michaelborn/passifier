<cfoutput>
<html>
<head>
	#wireStyles()#

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" referrerpolicy="no-referrer" />
</head>
<body class="p-0">
	<header class="bg-green-800 p-8 mb-8 ">
		<h1 class="text-3xl text-white">pStrong</h1>
	</header>
	<div class="container mx-auto">
		#renderView()#
	</div>
	#wireScripts()#
</body>
</html>
</cfoutput>
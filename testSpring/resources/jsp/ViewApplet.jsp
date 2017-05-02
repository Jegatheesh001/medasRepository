<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Emirates Id Scanner</title>
<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>
<script>
	var filePath = "C:/Users/jegatheesh/Desktop/test_read.txt";
	$(function() {
		scan = document.getElementById("scanner");
		scan.getUserDetails(filePath);
	});
	function scanId() {
		// invoke public applet method
		scan = document.getElementById("scanner");
		var results = scan.getUserDetails(filePath);
		results = results.replace(/\n/g, "<br />");
		$("#display").html(results);
	}
</script>
</head>
<body>
	<object id="scanner" type="application/x-java-applet" height="1"
		width="1" name="scannerApplet">
		<param name="code"
			value="com.medasuae.applets.EmiratesIdScanner.class" />
		<param name="archive"
			value="${pageContext.request.contextPath}/resources/applets/applets.jar" />
		failed to run code. No Java plug-in was found.
	</object>

	<input id="b" type="button" value="Get Id" onclick="scanId()" />
	<div id="display"></div>
	<!-- <img alt="One pixel transparent GIF"
		src="data:image/gif;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAUDBAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIChwLCAgQCggIDRUNDh0dHx8fCAsWGBceGBAeHx4BBQUFCAcIDwkJDxcVEBUXFhUXFxcZFRUYGBIVFxIVFRIVFRUSFRUVFRUVFRUSFRIVFRUVFRUVFRUVFRUVFRUVFf/AABEIAWgB4AMBIgACEQEDEQH/xAAdAAEAAgIDAQEAAAAAAAAAAAAABwgFBgMECQEC/8QAXxAAAQQBAgMFAgYLCAwKCwAAAQACAwQRBRIGEyEHCBQxQSJRFSMyQmFxJDM2UnN1gZGxsrQWJTVicnShsyY0Q1NUY2SCkrXB0RcYRIOTlJXU1eFVVmWEhaKkpcPS0//EABoBAQADAQEBAAAAAAAAAAAAAAACAwQBBQb/xAAyEQACAgEDAwEHAwQCAwAAAAAAAQIDEQQSMRMhQVEUIiMyYXGBBTPwQpGhwbHhFdHx/9oADAMBAAIRAxEAPwCAkRF9QeCEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREARfHOA6kgenUgdfQfWt94N7HuJNW2mtpc8ULjjxN4eBgAxkPHiMSys8usTXf0KMpxjyzqi5cGhr49wAySAPeTgKx1Tu8aVpUbLHFXEdeq04Ir1XxVw5w6uYyzcBksA4xiNjT0OPo5WdqXA3DxH7ndBdqFpgOy9YY6LqT7QFzUA64wdM7WMA8sLP7Sn8ib/wCC7oY+Z4Ii4O7KeItW2up6VZ5TsfZNlop19pGQ9slkjnN+mIOXT4y7O9c0fcdR0u1XibkmwGCeoAD0LrdYuhZnzAeQfoW6cZd4ribUNzYbMWlwHOI6EQEpafIPtTl0m4ffR7PqXb4N7yvEdHay26tq0I8xajEFnGOjW2awDR9b2uP0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iLoOZ9qV0bIHSyugjcXxwukeYY3u3bnxxE7GOO53UD5x964URMYAXNStywO5kEssDy0s3wSviftdjc3fGQdpwOn0BcKI0AAiIgC3zs87I9d16tLc06vE6vFIYeZPYZBzZWtDnsha7q7aHNy44HtYByDjQ1IvZb2za1w5A+rRNSaq+Uzci7DJK2ORwaJHQvhma+PdtGWkkeZAyTmq3ft9zknXtz73BZnuu9ks/DsFuzqPK+Ebpjj2RP5ra1SLLmx8zGDK+RznO29PYiHzVA/e+4zbqmveEheH1tHjfUaQQWuuSOa+85pB6hrmQQkHyNWT3rj4p7yXE16GSBj6WntkBaZaEEzLIaQA4NnsWHcs+ftMAIz0IIyodWajTz3uyzkvtujt2Q4C+OaCMEAg+YPUEe7qvqLcZTInXr+zlePvcrG3leMs8rbjG3l8zbjHTCx0Y242+ztILdvTaQcgjHkQevREXEkhk5rlqWd/MnllnkIa0yTSPlkLW52tL5CXEDJwPpK4URdwDmktyujZC6aV0Mbi+OF0r3QxuOcujiJ2Md7TuoHzj71woi4kAPNrvJzSHNcOha4dQ5p8wQfULu3NXuTs5U9y3NFjHKmszyx4HUDlyPLceX5l0kRpDIAA6AeXkhCIug57dyabZzppZuWzlx82WSXls6exHvd7DOg9ke4LgRFxA5m2pRE6ASyiB7g98AkeIXvbja98IOxzxtbhxHzR7lwoiYAREXQEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBEW/8AYJ2et4l1fwEs8lavDVluWJYWtMpZHJDC2KIyAsZI587TucD0jf0yozmoxy+DsYuTwjQEUod4rsuj4Xu1Iq1mazUuwSSQus8vxDJK72MmZI6Fgje3EsJDgB8pwI6ZMXrlc1OO5cHZxcXhhFOHdz7EK3EtO3fvXLdaGG0acEdMQNe+RkMM0kskliJzTF8exoa0Dqx/XyUXdonDbtH1W/pb5BMaU5iEobt5kbmMlheW/NcYpIyR6HIyVGN0ZScVyjsq5KKl4MAiIrSAREQBERAEREARbx2Rdl+pcS2Hx0wyGtAWi1enDuRCXdRGxres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yThsTck9VVrbITSiuclmlhKL3Pgr/wB9ri3xWr1tJjdmLS4ObO0HobtxrXhr2+9lcQkH/K3hQAshxJrE2oXLd+ycz3LEtmXqXBrpXl/LaT15bQQxv0MaPRY9bqK+nBRMtk90mwiIrSAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAIB6EfQQf8AatxodqfEkEQgi1zUmxNG1rXWDK5rR5BsswMjQM4GD7h6LTkUZQUuUdUmuDsajdnsyvnszzWZ5MGSexLJPNIQMAvllcXv6ADqfQLroiklg4EREAREQBERAEREAREQBERAEREAREQBERAEREBsHC3G2saUHN07UrlONztzoopncgvOMv5D8xbyAAXYz0AzgLg4o4q1PVHNdqOoW7uw5jbYne+ON2C0uihzy43kEgloHmsMijsjnOO53c8YyERFI4EREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREB//2Q==" /> -->
</body>
</html>
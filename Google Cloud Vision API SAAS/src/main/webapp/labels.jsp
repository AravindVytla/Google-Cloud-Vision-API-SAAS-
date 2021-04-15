<%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>


<%@ page import="com.google.cloud.vision.v1.EntityAnnotation"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<%
	BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Label Detection</title>
  </head>
<body style="background-color:#e85b38;">

	<table>
		<tr>
			<td align="center"><h1><span>Label Extraction</span></h1></td></br>
		</tr>
		<tr>
			<td><br></td>
		</tr>

	</table>


			<h3><span>IMAGE</span></h3></br>
			<img src="<%=request.getAttribute("imageUrl")%>" class="center"></br>

		<%
			List<EntityAnnotation> imageLabels = (List<EntityAnnotation>) request.getAttribute("imageLabels");
		%>
		
			</br><h3><span>Labels from Google Cloud Vision API</span></h3></br>
				<table class="table table-dark">
				<thead>
    
					<tr>
						<th scope="col">LABEL</th>
						<th scope="col">SCORE</th>

					</tr>
</thead>
 <tbody>
					<c:forEach items="${imageLabels}" var="label">
						<tr>
							<td>${label.getDescription()}</td>
							<td>${label.getScore()}</td>
						</tr>
					</c:forEach>
</tbody>
				</table>

			</td>
		</tr>
		<tr>
			<td align="right"><a href="/">Upload a New Image</a></td>
		</tr>
	</table>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
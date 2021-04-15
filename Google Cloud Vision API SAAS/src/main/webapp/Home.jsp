<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>


<html>
    <head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>Upload Test</title>
        <style>

        </style>
    </head>
    <body style="background-color:#e85b38;">
	  <h1><span>Google Cloud Vision API SaaS</span></h1>
        <form action="<%= blobstoreService.createUploadUrl("/upload") %>" method="post" enctype="multipart/form-data">
           
              
              
              
              <div class="form-group files">
               
                <input type="file" name="myFile" class="form-control" multiple="">
              </div>
              
             <input type="submit" class="" value="Click here to Submit">
          </form>
        
    </body>
</html>
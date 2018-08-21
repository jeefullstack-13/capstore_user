<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html lang="en">
<head>
  <title>CapStore</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href=".\resource\css\footer.css">
  <link rel="stylesheet" href=".\resource\css\header.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<%@ include file="header.jsp" %>   
</head>
<body onload="updateSize();">
<form:form name="uploadingForm" enctype="multipart/form-data" action="/" modelAttribute="product" method="POST">
            <center><p>
                 <input id="fileInput" type="file" name="uploadingFiles" onchange="updateSize();" multiple required>
              
                selected files: <span id="fileNum">0</span>;
                total size: <span id="fileSize">0</span>
            </p></center>
            <table>
            <tr>
            <td>
            <p>
            	AttractionName: <form:input path="attractionName" required="required"/>
            </p></td>
            <td>
            <p>
            	AttractionStatus: <form:input path="status" required="required"/>
            </p></td>
            <td>
            <p>
            	AttractionDescription: <form:input path="description" required="required"/>
            </p>
            </td>
            </tr>
            </table>
                <p style="margin: 30px"><input type="submit" value="Upload files"></p>
            
        </form:form>
       <%--  <div>
            <div>Uploaded files:</div>
            <#list files as file>
            <div>
            ${file.getName()}
            </div>
            </#list>

        </div> --%>
        <script>
            function updateSize() {
                var nBytes = 0,
                        oFiles = document.getElementById("fileInput").files,
                        nFiles = oFiles.length;
                for (var nFileId = 0; nFileId < nFiles; nFileId++) {
                    nBytes += oFiles[nFileId].size;
                }

                var sOutput = nBytes + " bytes";
                // optional code for multiples approximation
                for (var aMultiples = ["KiB", "MiB", "GiB", "TiB", "PiB", "EiB", "ZiB", "YiB"], nMultiple = 0, nApprox = nBytes / 1024; nApprox > 1; nApprox /= 1024, nMultiple++) {
                    sOutput = nApprox.toFixed(3) + " " + aMultiples[nMultiple] + " (" + nBytes + " bytes)";
                }
                // end of optional code

                document.getElementById("fileNum").innerHTML = nFiles;
                document.getElementById("fileSize").innerHTML = sOutput;
            }
        </script>

<%@  include file="footer.jsp" %>

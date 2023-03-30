<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/PBL3/upload-avatar" method="post" enctype="multipart/form-data">
		<input type="file" name="avatar" value="Upload" id="avatar" accept="image/*"/>
		<input type="submit" value="Submit" name="usubmit">
	</form>
	
	<form action="/PBL3/edit-profile" method="get"> <br><br>
<table>
  <tr>
             <td>Upload: </td>
             <td width='10px'></td>
             <td><input type="text" name="firstName"> </td>    
             <td><input type="text" name="lastName"> </td>    
             <td><input type="date" name="dateOfBirth"> </td>
  </tr>
  <tr>
      <td><input type="submit" value="Submit" name="usubmit"></td>
  </tr>
</table>
</form>
</body>
</html>
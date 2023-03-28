<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="uploadimg" method="post" enctype="multipart/form-data"> <br><br>
<table>
  <tr>
             <td>Upload: </td>
             <td width='10px'></td>
             <td><input type="file" name="avatar" value="Upload"/></td>
  </tr>
  <tr>
      <td><input type="submit" value="Submit" name="usubmit"></td>
  </tr>

</table>
</form>
</body>
</html>
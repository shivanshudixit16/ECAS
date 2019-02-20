<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.ArrayList,database.DatabaseConnection"%>
    <%String email=(String)request.getAttribute("email");
    ArrayList<String> copycodes = (ArrayList<String>)request.getAttribute("copycodes");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="submitcopycodesforteachers">
Teacher Email<input type="text" name="email" value="<%=email%>" readonly><br>
<select name="copycodes" id="demoSel" size="4" multiple=""  required>
<%for(String cc:copycodes){%><option value="<%=cc%>"><%=cc%></option><%}%>
</select> <br>

<textarea name="display" id="display" placeholder="view select list value(s) " cols="10" rows="4" readonly=""></textarea><br>
<input type="submit">
</form>
<script type="text/javascript">
					(function() {

						function getSelectedOptions(sel, fn) {
							var opts = [], opt;

							// loop through options in select list
							for (var i = 0, len = sel.options.length; i < len; i++) {
								opt = sel.options[i];
								if (opt.selected) {
									opts.push(opt);
									if (fn) {

										fn(opt);
									}
								}
							}
							return opts;
						}
						document.getElementById('demoSel').onchange = function(
								e) {
							var display = document.getElementById('display');
							display.innerHTML = '';
							getSelectedOptions(this, callback);
							var str = display.innerHTML.slice(0, -2);
							display.innerHTML = str;
						};
						function callback(opt) {
							var display = document.getElementById('display');
							display.innerHTML += opt.value+'  -  '+opt.innerHTML + ' \n';
						}
					}());
				</script>
</body>
</html>
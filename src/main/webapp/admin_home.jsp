<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");
%>

<html>
<head>
</head>
<body>
<div><a href="logout.jsp">Logout</a></div><br>
<h3><a href="teacher_reg.jsp">Add Teachers></a></h3><br>
<h3><a href="generate_rolls.jsp">Generate Roll No.></a></h3><br>
<h3><a href="assign_exam_center.jsp">Assign Exam Center></a></h3><br>
<h3><a href="assign_exam_dates.jsp">Assign Exam Dates</a></h3><br>
<h3><a href="release_admit_cards.jsp">Release Admit Cards</a></h3>
<h3><a href="release_result_cards.jsp">Release Result Cards</a></h3>
<h3><a href="confirm_start_session.jsp">Start New Session</a></h3>
<h3><a href="confirm_start_semester.jsp">Start New Semester</a></h3><br>
<h6><a href="assign_subjects_to_session.jsp">Assign Subjects for this session all semesters</a></h6>
<h3><a href="external_marks_choose_roll.jsp">Fill External marks</a></h3>
</body>
</html>
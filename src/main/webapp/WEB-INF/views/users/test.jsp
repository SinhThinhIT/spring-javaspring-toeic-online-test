<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- tag-libs -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fom" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <title>SB Admin 2 - Blank</title>
    <%@include file="../template/users/head.jsp"%>

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <%@include file="../template/users/sidebar.jsp"%>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <%@include file="../template/users/top.jsp"%>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-4 text-gray-800">Đề thi 1</h1>
                <p>
                    <form:form action="" method="post">
                        <c:forEach items="${exams}" var="exam">
<%--                            <form:input path="id_exam" name="id_exam" value="${exam.id_exam}" />--%>
                            <h3>${exam.question}</h3>
                            <c:forEach items="${exam.answers}" var="answer" varStatus="arr">
                                    <input type="radio" name="answer_${answer.exam.id_exam}" value="${answer.id_answer}"/>
                                <label>${answer.name}</label>
                            </c:forEach>
                        </c:forEach>
                        <br />
                        <button type="submit">Submit</button>
                     </form:form>
                </p>
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->
    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->
<%@include file="../template/users/script.jsp"%>
</body>

</html>
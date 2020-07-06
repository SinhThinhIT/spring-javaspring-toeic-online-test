<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- tag-libs -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="vi">

<head>
    <title>Admin - Toeic</title>
    <%@include file="../../template/admin/head.jsp" %>
</head>

<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
    <%@include file="../../template/admin/top.jsp"%>
    <div class="app-main">
        <%@include file="../../template/admin/sidebar.jsp"%>
        <div class="app-main__outer">
            <div class="app-main__inner">

                <div class="tab-content">
                    <div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-body">
                                        <h5 class="card-title">Create Exam:</h5>
                                        <form:form action="/admin/exam/editExam" method="post" modelAttribute="examModel" enctype="multipart/form-data">
                                            <form:hidden path="id_exam" name="id_exam" value="${examModel.id_exam}"/>
                                            <div class="position-relative form-group">
                                                <label for="exampleEmail" class="">Question</label>
                                                <form:input path="question" id="exampleEmail" placeholder="Enter question" type="text" cssClass="form-control" />
                                            </div>
                                            <div class="position-relative form-group">
                                                <label for="exampleSelect" class=""> Select Level: </label>
                                                <form:select path="levelToeic" id="exampleSelect" cssClass="form-control">
                                                    <form:options items="${levelToeics}" itemValue="id_level" itemLabel="title"/>
                                                </form:select>
                                            </div>
                                            <div class="position-relative form-group">
                                                <label for="exampleFile" class="">File</label>
                                                <form:input path="image" id="exampleFile" type="file" cssClass="form-control-file" />
                                            </div>
                                            <button type="submit" class="mt-1 btn btn-primary">Submit</button>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../../template/admin/script.jsp" %>
</body>

</html>
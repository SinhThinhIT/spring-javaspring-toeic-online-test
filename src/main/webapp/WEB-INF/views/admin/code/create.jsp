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
                                        <h5 class="card-title">Create Answer:</h5>
                                        <form:form action="/admin/code/save" method="post" modelAttribute="examCode" >
                                            <div class="position-relative form-group">
                                                <label for="examplePassword" class="">Code:</label>
                                                <form:input path="code" id="examplePassword" placeholder="Enter code" type="text" cssClass="form-control" />
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
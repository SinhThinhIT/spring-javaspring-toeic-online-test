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
                                    <div class="card-body"><h5 class="card-title">Post</h5>
                                        <form:form modelAttribute="postModel" action="/admin/post/created" method="post" enctype="multipart/form-data">
                                            <div class="position-relative form-group">
                                                <label for="exampleEmail" class="">Title</label>
                                                <form:input path="title" id="exampleEmail" placeholder="Title" type="text" cssClass="form-control" />
                                            </div>
                                            <div class="position-relative form-group">
                                                <label for="exampleEmail" class="">Descrition</label>
                                                <form:input path="description" id="exampleEmail" placeholder="Descrition" type="text" cssClass="form-control" />
                                            </div>
                                            <div class="position-relative form-group">
                                                <label for="category" class="">Category: </label>
                                                <form:select path="category" cssClass="form-control">
                                                    <form:options items="${categoryList}" itemValue="id_category" itemLabel="title"/>
                                                </form:select>
                                            </div>
                                            <div class="position-relative form-group">
                                                <label for="paragraph" class="">Paragraph</label>
                                                <form:textarea path="paragraph" id="paragraph" cssClass="form-control" />
                                            </div>
                                            <div class="position-relative form-group">
                                                <label for="exampleFile" class="">File</label>
                                                <form:input path="image" id="exampleFile" type="file" cssClass="form-control-file" />
                                                <%--<small class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>--%>
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
<script type="text/javascript">

    // ::: for richtext editor
    $(document).ready(function() {
        $('#paragraph').summernote();
    });

</script>
</body>

</html>
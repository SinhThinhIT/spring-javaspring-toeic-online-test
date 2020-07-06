<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="vi">

<head>
    <title>Admin - Toeic</title>
    <%@include file="../template/admin/head.jsp" %>
</head>

<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
    <%@include file="../template/admin/top.jsp"%>
    <div class="app-main">
        <%@include file="../template/admin/sidebar.jsp"%>
        <div class="app-main__outer">
            <div class="app-main__inner">

                <div class="tab-content">
                    <div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-body"><h5 class="card-title">Controls Types</h5>
                                        <form class="">
                                            <div class="position-relative form-group"><label for="exampleEmail" class="">Email</label><input name="email" id="exampleEmail" placeholder="with a placeholder" type="email" class="form-control"></div>
                                            <div class="position-relative form-group"><label for="examplePassword" class="">Password</label><input name="password" id="examplePassword" placeholder="password placeholder" type="password" class="form-control"></div>
                                            <div class="position-relative form-group"><label for="exampleSelect" class="">Select</label><select name="select" id="exampleSelect" class="form-control">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select></div>
                                            <div class="position-relative form-group"><label for="exampleSelectMulti" class="">Select Multiple</label><select multiple="" name="selectMulti" id="exampleSelectMulti" class="form-control">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select></div>
                                            <div class="position-relative form-group"><label for="exampleText" class="">Text Area</label><textarea name="text" id="exampleText" class="form-control"></textarea></div>
                                            <div class="position-relative form-group"><label for="exampleFile" class="">File</label><input name="file" id="exampleFile" type="file" class="form-control-file">
                                                <small class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
                                            </div>
                                            <button class="mt-1 btn btn-primary">Submit</button>
                                        </form>
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
<%@include file="../template/admin/script.jsp" %>
</body>

</html>
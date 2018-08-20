
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="form-gap"></div>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Forgot Password?</h2>
                  <p>You can reset your password after Verification</p>
                  <div class="panel-body">
    				<fieldset>
                    <form:form id="register-form" role="form" autocomplete="off" class="form" method="post" action="verify" modelAttribute="customer">
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                          <form:input id="email" path="emailId" placeholder="email address" class="form-control"  type="email"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Verify" type="submit">
                      </div>
                      <c:if test="${!empty error}">
                      <input type="hidden" class="hide" name="token" id="token" style="color:red;" value="${error}"> 
                      </c:if>
                    </form:form>
    				</fieldset>
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
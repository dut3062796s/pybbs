<#include "../common/layout.ftl"/>
<@html page_tab="user">
<div class="row">
  <div class="col-md-9">
    <div class="panel panel-default">
      <div class="panel-heading">
        ${pageTitle!}
      </div>
      <div class="panel-body">
        <#include "../components/user_collects.ftl"/>
        <@user_collect collects=page.getContent()/>
        <#include "../components/paginate.ftl"/>
        <@paginate currentPage=(page.getNumber() + 1) totalPage=page.getTotalPages() actionUrl="/user/collects/${currentUser.nickname!}" urlParas=""/>
      </div>
    </div>
  </div>
  <div class="col-md-3 hidden-sm hidden-xs"></div>
</div>
</@html>
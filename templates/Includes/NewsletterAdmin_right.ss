<div class="title"><div>Edit Content</div></div>

<% include Editor_toolbar %>

<div id="form_actions_right" class="ajaxActions">
</div>


<form class="actionparams" id="action_send_options" style="display:none" action="admin/newsletter/sendnewsletter">
	<fieldset>
	<input type="hidden" name="NewsletterID" />
	<ul class="optionset">
		<li><input name="SendType" id="SendTypeTest" value="Test" checked="checked" type="radio" /> Send test to <input name="TestEmail" type="text" /></li>
		<li><input name="SendType" id="SendTypeList" value="List" type="radio" /> Send to the mailing list</li>
	</ul>
	$SendProgressBar
	</fieldset>
	
	<p class="actions">
		<input type="submit" value="Send newsletter" />
	</p>
</form>

<% if EditForm %>
	$EditForm
<% else %>
	<form id="Form_EditForm" action="admin/newsletter?executeForm=EditForm" method="post" enctype="multipart/form-data">
		<p>Welcome to the $ApplicationName newsletter admininistration section.  Please choose a folder from the left.</p>
	</form>
<% end_if %>

<p id="statusMessage" style="visibility:hidden"></p>
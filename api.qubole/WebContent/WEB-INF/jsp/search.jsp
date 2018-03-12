
<head>
<meta charset='utf-8'>
<meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
<meta content='Qubole' name='description'>
<meta content='Qubole' name='author'>
<meta content='width=device-width' name='viewport'>
<meta content='default' name='referrer'>

<link href='https://fonts.googleapis.com/css?family=Open+Sans:400italic,400' rel='stylesheet' type='text/css'>
<link href="https://d3gd5cbndit7oj.cloudfront.net/favicon_v1.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
<title>
Search
&nbsp;- Qubole Data Services (QDS)
</title>
<link href="https://d3gd5cbndit7oj.cloudfront.net/assets/_scss/v1-application-0bbd97bd8284e85d5fe7cc3dfc1ee824.css" media="screen" rel="stylesheet" type="text/css" />
<link href="https://d3gd5cbndit7oj.cloudfront.net/assets/jobs-14c38be573d173cd706787525b9687a3.css" media="screen" rel="stylesheet" type="text/css" />
<link href="https://d3gd5cbndit7oj.cloudfront.net/assets/qpal-59e9f7c6ee17e80a04764c4bdaac06e8.css" media="screen" rel="stylesheet" type="text/css" />

<style>
/* .input-group.input-group-unstyled input.form-control { */
/*     -webkit-border-radius: 4px; */
/*        -moz-border-radius: 4px; */
/*             border-radius: 4px; */
/* } */
/* .input-group-unstyled .input-group-addon { */
/*     border-radius: 4px; */
/*     border: 0px; */
/*     background-color: transparent; */
/* } */

input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

#searchTable {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#searchTable td, #searchTable th {
    border: 1px solid #ddd;
    padding: 8px;
}

#searchTable tr:nth-child(even){background-color: #f2f2f2;}

#searchTable tr:hover {background-color: #ddd;}

#searchTable th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>

</head>
<iframe class='hide' name='downloader'></iframe>
<body>
<div aria-hidden='true' class='modal fade' data-invoke='' id='mdlTutorials' role='dialog' tabindex='-1'>
<div class='modal-dialog' role='document'>
<div class='modal-content'>
<div class='modal-header'>
<button aria-hidden='true' class='close' data-dismiss='modal' type='button'>&times;</button>
<div class='modalTitle'>
<h4 class='modal-title-head'>
<span>Tutorials</span>
<span id='tutorial-pagename'></span>
</h4>
</div>
</div>
<div class='modal-body'>
<div class='clearfix'></div>
<div id='list-tutorials'>
<i class='q-loader'></i>
Please wait ...
</div>
</div>
</div>
</div>
</div>

<div aria-hidden='true' class='modal fade v2-help-center' data-backdrop='static' data-keyboard='false' id='help-modal' role='dialog' tabindex='-1'>
<div class='modal-dialog' role='document'>
<div class='modal-content'>
<div class='modal-header'>
<button aria-hidden='true' class='close' data-dismiss='modal' title='Click to close' type='button'>×</button>
<div class='hc hc-index-header'>
<h5>
<span class='help-title-link hc-btn' data-widget='hc-index-menu'>
Help Center
</span>
</h5>
<div class='search-container'>
<div class='input-append'>
<input id='txtSearchKeywordHc' placeholder='Search a topic' type='text'>
<button class='btn btn-primary search-btn'>
<i class='qi-search'></i>
</button>

</div>
</div>
<div class='hide' id='results-container-zendesk-qubole-docs'>
<span class='small-text-hc'>
Results:
</span>
<span class='small-text-hc padding-md anchor-fade results-section-btn hide' data-trigger='documentation' id='section-documentation-results'>
<a href="#">Documentation Results</a>
(<span class='results'></span>)
</span>
<span class='small-text-hc padding-md anchor-fade results-section-btn hide' data-trigger='zendesk' id='section-zendesk-results'>
<a href="#">Knowledge Base Results</a>
(<span class='results'></span>)
</span>
<span class='small-text-hc padding-md anchor-fade results-section-btn hide' data-trigger='forums' id='section-forums-results'>
<a href="#">Qubole Forums</a>
(<span class='results'></span>)
</span>
<span class='small-text-hc padding-md anchor-fade results-section-btn hide' data-trigger='education' id='section-education-results'>
<a href="#">Qubole Education</a>
(<span class='results'></span>)
</span>
<span class='small-text-hc padding-md anchor-fade results-section-btn hide' data-trigger='blog' id='section-blog-results'>
<a href="#">Qubole Blog</a>
(<span class='results'></span>)
</span>
</div>

</div>
<div class='hc hc-form-header hide'>
<h5>
<span class='help-title-link hc-btn' data-widget='hc-index-menu' id='hc-forms-title'>
Help Center
</span>
</h5>

</div>
<div class='clearfix'></div>
</div>
<div class='modal-body'>
<div class='alert hide alert-success' id='help-alert'>
<a class='close' data-dismiss='alert2' onclick="$(this).closest('.alert').hide()">×</a>
<span id='help-alert-text'>Your ticket was created successfully.</span>
<div class='clearfix'></div>
</div>
<div class='hc hc-index-menu'>
<div class='help-center-content'>
<div class='section-header'>
<span class='resources'>ANNOUNCEMENTS</span>
</div>
<div class='section-articles'>
<span class='articles-loader hide'>
<span class='q-loader-blue'></span>
Fetching announcements ...
</span>
<span class='articles-event-messages hide'></span>
<ul id='article-list'></ul>
</div>
<div class='section-header'>
<span class='resources'>RESOURCES</span>
</div>
<div class='section-inline'>
<a class='btn section-btn' href='https://qubole.zendesk.com/hc/en-us/categories/200340129-Qubole-Data-Services' target='_blank'>
<i class='qi-external-link'></i>
<i class='qi qi-knowledge-base'></i>
Knowledge Base
</a>
<a class='btn section-btn' href='https://qubole.zendesk.com' target='_blank'>
<i class='qi-external-link'></i>
<i class='qi qi-support-portal'></i>
Support Portal
</a>
<a class='btn section-btn' href='http://docs.qubole.com' target='_blank'>
<i class='qi-external-link'></i>
<i class='qi qi-documentation'></i>
Documentation
</a>
</div>
<div class='section-inline'>
<button class='btn section-btn walk-through-btn'>
<i class='qi qi-walkthrough'></i>
Walk Through
</button>
<a class='btn section-btn' href='http://docs.qubole.com/en/latest/video-tutorials/index.html' target='_blank'>
<i class='qi-external-link'></i>
<i class='qi qi-video-tutorial'></i>
Video Tutorials
</a>
<button class='btn section-btn quick-tour'>
<i class='qi qi-quick-tour'></i>
Quick Tour
</button>
</div>
<div class='section-inline'>
<a class='btn section-btn' href='http://docs.qubole.com/en/latest/admin-guide/use-qubole-drivers/index.html' target='_blank'>
<i class='qi-external-link'></i>
<i class='qi qi-driverdownload'></i>
Download Drivers
</a>
<a class='btn section-btn' href='https://www.qubole.com/education/' target='_blank'>
<i class='qi-external-link'></i>
<i class='qi qi-education'></i>
Education
</a>
</div>
<div class='section-header'>
<span class='support'>SUPPORT</span>
</div>
<div class='section-inline'>
<a class='btn section-btn' href='https://qubole.zendesk.com/hc/en-us/community/posts/new' target='_blank'>
<i class='qi-external-link'></i>
<i class='qi qi-ask-in-forum'></i>
Ask the Community
</a>
</div>
<button class='btn section-btn hc-btn' data-widget='hc-submit-ticket-form' disabled>
<i class='qi qi-support-ticket qi-rotate-90'></i>
Submit Support Ticket
</button>
<div class='upgrade-label'>
Upgrade
</div>
<button class='btn section-btn hc-btn' data-widget='hc-feedback-form'>
<i class='qi qi-send-feedback'></i>
Send Feedback
</button>
<div class='section-header'>
<span class='version'></span>
</div>
<div class='section-inline version'>
QDS Version:
50.42.0
</div>
<!-- * Articles listing template */ -->
<script id='articles-listing-template' type='text/x-handlebars-template'>
<li>
<a href='{{articleLink}}' target='_blank'>{{articleTitle}}</a>
</li>
</script>
</div>

</div>
<div class='hc hc-submit-to-forum-form hide'>
<form class='hc-form' id='hcfrmPost2Forum'>
<div class='post2Forum-form-container'>
<div class='form-horizontal'>
<div class='control-group formRow'>
<label for='txtForumSubject'>
Subject
</label>
<div class='formRight'>
<input class='hc-input span4' id='txtForumSubject' maxlength='60' name='txtForumSubject' title='Subject' type='text'>
</div>
</div>
</div>
<div class='form-horizontal'>
<div class='control-group formRow'>
<label for='txtForumDesc'>
Description
</label>
<div class='formRight'>
<textarea class='hc-input span4' id='txtForumDesc' name='txtForumDesc' rows='7'></textarea>
</div>
</div>
</div>
<div class='form-horizontal margin-top-md'>
<div class='control-group formRow'>
<button class='btn btn-primary pull-right margin-left-sm' id='btnPost2Forum' title='Click to submit the ticket'>
<i class='fa fa-spin fa-refresh frmSubmitLoader hide'></i>
Submit
</button>
<button class='btn back pull-right hc-btn' data-widget='hc-index-menu' title='Click to cancel' type='button'>Cancel</button>
</div>
</div>
</div>
</form>
<div class='post-forum-success-container hc-form-submit-success-msg hide'>
<div class='forum-post-message-container'>
<p>
Question has been posted to forum successfully.
</p>
</div>
<div class='form-horizontal margin-top-xlg'>
<div class='control-group formRow'>
<button class='btn btn-primary pull-right hc-btn' data-widget='hc-index-menu'>
Done
</button>
</div>
</div>
</div>

</div>
<div class='hc hc-submit-ticket-form hide'>
<form class='hc-form' id='hcfrmSubmitTicket'>
<div class='form-horizontal'>
<div class='control-group formRow'>
<label for='txtTicketSubject'>
Subject
</label>
<div class='formRight'>
<input class='hc-input span4' id='txtTicketSubject' name='txtTicketSubject' title='Subject' type='text'>
</div>
</div>
</div>
<div class='form-horizontal'>
<div class='control-group formRow'>
<label for='txtTicketDescription'>
Description
</label>
<div class='formRight'>
<textarea class='hc-input span4' id='txtTicketDescription' name='txtTicketDescription' rows='8' title='Description'></textarea>
</div>
</div>
</div>
<div class='form-horizontal'>
<div class='control-group formRow'>
<label for='txtCommandId'>
Command ID
</label>
<div class='formRight'>
<input class='hc-input input-small' id='txtCommandId' name='txtCommandId' title='Command ID' type='text'>
</div>
</div>
</div>
<div class='form-horizontal'>
<div class='control-group formRow'>
<label for='txtTicketSeverity'>
Severity
</label>
<div class='formRight'>
<select class='hc-input input-small' id='txtTicketSeverity' name='txtTicketSeverity' title='Severity - Business Impact' type='text'>
<option value='low'>Low - No Data Impact</option>
<option value='normal'>Normal - Issues Affecting Few Users</option>
<option value='high'>High - Significant Impact</option>
<option value='urgent_business_stopped'>Urgent - Cluster Outage / Data Loss</option>
</select>
</div>
</div>
</div>
<div class='form-horizontal margin-top-md'>
<div class='control-group formRow'>
<button class='btn btn-primary pull-right margin-left-sm' id='btnSubmitTicket' title='Click to submit the ticket'>
<i class='qi-spin qi-refresh frmSubmitLoader hide'></i>
Submit
</button>
<button class='btn back pull-right hc-btn' data-widget='hc-index-menu' title='Click to cancel' type='button'>Cancel</button>
</div>
</div>
</form>
<div class='submit-ticket-success-container hc-form-submit-success-msg hide'>
<div class='ticket-message-container'>
<p>
Thanks for submitting the support ticket. You will also receive a confirmation through email. We will try to get back to you as soon as possible.
</p>
</div>
<div class='form-horizontal margin-top-xlg'>
<div class='control-group formRow'>
<button class='btn btn-primary pull-right hc-btn' data-widget='hc-index-menu'>
Done
</button>
</div>
</div>
</div>

</div>
<div class='hc hc-feedback-form hide'>
<form class='hc-form' id='hcfrmGiveFeedback'>
<div class='feedback-form-container'>
<div class='form-horizontal'>
<div class='control-group formRow'>
<label for='feedbackSubject'>
Subject
</label>
<div class='formRight'>
<input class='hc-input' id='feedbackSubject' name='feedbackSubject' title='Subject' type='text'>
</div>
</div>
</div>
<div class='form-horizontal'>
<div class='control-group formRow'>
<label for='feedbackComment'>
Comment
</label>
<div class='formRight'>
<textarea class='hc-input' id='feedbackComment' name='feedbackComment' rows='5' title='Comment'></textarea>
</div>
</div>
</div>
<div class='form-horizontal margin-top-md'>
<div class='control-group formRow'>
<button class='btn btn-primary pull-right margin-left-sm' id='btnSubmitFeedback' title='Click to submit feedback'>
<i class='qi-spin qi-refresh frmSubmitLoader hide'></i>
Submit
</button>
<button class='btn back pull-right hc-btn' data-widget='hc-index-menu' title='Click to cancel' type='button'>Cancel</button>
</div>
</div>
</div>
</form>
<div class='submit-feedback-success-container hc-form-submit-success-msg hide'>
<div class='feedback-message-container'>
<p>
Thanks for sharing your valuable feedback. We are constantly trying to make the Qubole platform experience the best in the industry.
</p>
</div>
<div class='form-horizontal margin-top-xlg'>
<div class='control-group formRow'>
<button class='btn btn-primary pull-right hc-btn' data-widget='hc-index-menu'>
Done
</button>
</div>
</div>
</div>

</div>
<div class='hc hc-search-zendesk hide'>
<div class='zendesk-search-results-container'>
<div class='hide' id='zendesk-empty-search-result'>
<span class='no-results-msg'>Sorry we could not find any results.</span>
<span>
<p>
You can find answers immediately through our
<a class='btn btn-link no-padding' href='https://qubole.zendesk.com/hc/en-us/community/posts/new' target='_blank'>
<b>
"Ask in forums"
</b>
</a>
</p>
</span>
</div>
<div id='zendesk-search-loader'>
<span class='q-loader-blue'></span>
</div>
<div id='search-result-container-hc'></div>
<div class='hide' id='template-zendesk-article'>
<!--
<li>
<a href='{0}' target='_blank'>
<div class='article-results-text text-ellipsis'>
<i class='{2}' title='{1}'></i>
{3}
</div>
<i class='qi-external-link results'></i>
</a>
</li>
-->
</div>
<script id='results-listing-template' type='text/x-handlebars-template'>
<div class='results-list-header {{isEmpty}}' id='{{ulID}}'>
<span>
<span class='heading-inner'>
{{heading}}
</span>
</span>
</div>
<ul class='list-results'>
{{{results}}}
</ul>
</script>
</div>

</div>
</div>
</div>
</div>
</div>

<div class='modal hide fade' id='quick-tour-modal'>
<div class='quicktour-header clearfix'>
<h3>Export</h3>
<h4> and Import Your Data</h4>
<i class='qi-close close-quicktour'></i>
</div>
<div class='modal-body quicktour-body'>
<div class='img-container'>
<img data-header='Main Navigation' data-src='/assets/v2/quick-tour/qt-page-1-new-oval.png'>
<img data-header='Product Offerings' data-src='/assets/v2/quick-tour/qt-menu.png'>
<img data-header='Explore and Import Your Data' data-src='/assets/v2/quick-tour/qt-explore.png'>
<img data-header='Analyze Your Data' data-name='analyze' data-src='/assets/v2/quick-tour/qt-analyze.png'>
</div>
</div>
<div class='modal-footer'>
<span class='left-quicktour prev'>
<i class='qi-chevron-left'></i>
<span class='arrow-name'>Previous Section</span>
</span>
<span class='right-quicktour next'>
<span class='arrow-name'>Next Section</span>
<i class='qi-chevron-right'></i>
</span>
</div>
</div>


<div class='metadata-partitions'>
<div class='partition-sub-container'></div>
</div>
</form>
</div>
<div class='modal-footer'>
<a class='btn' data-dismiss='modal' href='javascript:void(0)'>Close</a>
<a class='btn btn-primary btn-save-metadata' href='javascript:void(0)'>Save</a>
</div>
</div>

<div class='ui-layout-north' id='header'>
<div class='hide' id='current_qbol_user_status'>
OK
</div>
<div border='0' style='width:100%;'>
<div class='html-element-overlay' hidden id='bodyOverlay'>
</div>
<!-- BEGIN HEADER -->
<div id='header' role='banner'>
<!-- Logo -->
<div id='header-logo-container'>
<a class='new-logo' href='/home' title='Qubole'></a>
</div>
<!-- Main Nav -->
<div class='top-menu dropdown'>
<a class='dropdown-toggle' data-toggle='dropdown' href='#'>
<div class='menu-label'>
<span class='pull-left' data-tag='templates'>
Search
</span>
<i class='qi-chevron-down pull-right'></i>
</div>
</a>
<div class='dropdown-menu fat-menu'>
<div class='menu-col'>
<div class='menu-item'>
<a href='${pageContext.request.contextPath}/home'>
<i class='qi-homeNav'></i>
<span>Home</span>
</a>
</div>
<div class='menu-item'>
<a href='/v2/explore' title='View your data tables, add datastores and set up data exchange'>
<i class='qi-exploreNav'></i>
<span>Explore</span>
</a>
</div>
<div class='menu-item'>
<a href='/v2/analyze' title='Run ad-hoc queries on your data set'>
<i class='qi-analyzeNav'></i>
<span>Analyze</span>
</a>
</div>
<div class='menu-item'>
<a href='/v2/smart-query' title='Don’t know the syntax? We have you covered. Use form fields to create and execute queries'>
<i class='qi-smartqueryNav'></i>
<span>Smart Query</span>
</a>
</div>
<div class='menu-item'>
<a href='/command_templates' title='Reusing queries have never been easier. Plug in variables and run variations of the same query '>
<i class='qi-templatesNav'></i>
<span>Templates</span>
</a>
</div>
</div>
<div class='menu-col'>
<div class='menu-item'>
<a href='/notebooks' title='Ideal for Data science. Use spark based notebooks for creating spark workflows'>
<i class='qi-notebooksNav'></i>
<span>Notebooks</span>
</a>
<div class='menu-sub-items'>
<a href='/notebooks#recent'>
<span>Recent</span>
</a>
<a href='/notebooks#common'>
<span>Common</span>
</a>
<a href='/notebooks#users'>
<span>Users</span>
</a>
</div>
</div>
<div class='menu-item'>
<a href='/dashboards' title='Dashboards provide an interface for sharing your explorations.'>
<i class='qi-dashboards'></i>
<span>Dashboards</span>
</a>
</div>
<div class='menu-item'>
<a href='/v2/scheduler' title='Easily schedule queries to run automatically at specified intervals'>
<i class='qi-schedulerNav'></i>
<span>Scheduler</span>
</a>
</div>
<div class="menu-item">
<a href="${pageContext.request.contextPath}/search" title="Search">
<i class="qi-analyzeNav"></i>
<span>Search</span>
</a>
</div>
</div>
<div class='menu-col'>
<div class='menu-item'>
<a href='/clusters' title='Manage your clusters'>
<i class='qi-clusters'></i>
<span>Clusters</span>
</a>
</div>
<div class='menu-item'>
<a href='/v2/' title='Track your cluster and query usage, including performance, uptime and historical usage'>
<i class='qi-usageNav'></i>
<span>Usage</span>
</a>
</div>
<div class='menu-item'>
<a href='/v2/control-panel' title='The one page to configure the platform for your needs'>
<i class='qi-controlpanelNav'></i>
<span>Control Panel</span>
</a>
<div class='menu-sub-items'>
<a href='/v2/control-panel#account-settings'>
<span>Account Settings</span>
</a>
<a href='/v2/control-panel#manage-users'>
<span>Manage Users</span>
</a>
<a href='/v2/control-panel#my-profile'>
<span>My Profile</span>
</a>
<a href='/v2/control-panel#manage-accounts'>
<span>My Accounts</span>
</a>
</div>
</div>
</div>
</div>
</div>
<!-- White label powered by -->
<div class='pull-right'>
<!-- Cluster box -->
<div class='dropdown top-right-item' id='cluster-nav-link'>
<a aria-expanded='false' aria-haspopup='true' class='dropdown-toggle' data-toggle='dropdown' href='javascript: void(0);'>
<span id='cluster-status' title='Clusters'>
Clusters
</span>
<i class="qi-angle-down"></i>
</a>
<ul aria-labelledby='Clusters' class='dropdown-menu dropdown-menu-right' id='cluster-dropdown'>
<li class='manage-clusters'>
<a class='cluster-manage-btn' href='/clusters'>
<i class='qi-clusters'></i>
<span>Manage Clusters</span>
</a>
</li>
</ul>

<!-- Cluster item template -->
<script id='cluster-manage-buttons-template' type='text/x-handlebars-template'>
<a class='cluster-tiny-btn' href='{{clusterManageBtnHref}}' title='{{clusterManageBtnTitle}}'>
<i class='fa {{clusterManageBtnIcon}}'></i>
</a>
</script>
<!-- Cluster button template -->
<script id='cluster-toggle-buttons-template' type='text/x-handlebars-template'>
<button class='btn cluster-tiny-btn cluster-toggle-btn {{isBtnDisabled}}' data-clusteraction='{{clusterToggleBtnAction}}' data-clusterid='{{clusterId}}' data-clusterlabel='{{clusterLabelData}}' title='{{clusterToggleBtnTitle}}'>
<i class='fa {{clusterToggleBtnIcon}}'></i>
</button>
</script>
</div>
<!-- Cluster end -->
<!-- Account box -->
<div class='dropdown top-right-item' id='account-nav-link'>
<a aria-expanded='false' aria-haspopup='true' class='dropdown-toggle' data-toggle='dropdown' href='javascript: void(0);' title='Current Account'>
<span class='account-username text-ellipsis'>
Account: snayak
</span>
<i class='qi-angle-down'></i>
</a>
<ul aria-labelledby='Accounts' class='dropdown-menu dropdown-menu-right' id='account-navigation'>
<li>
<a class='text-ellipsis' href='/user/select_account/?id=1' title='dev-perftest'>
<i class='qi-angle-right'></i>
<span>dev-perftest</span>
</a>
</li>
<li>
<a class='selected text-ellipsis' href='/user/select_account/?id=9005' title='snayak'>
<i class='qi-angle-right'></i>
<span>snayak</span>
</a>
</li>
</ul>
</div>
<!-- Account box end -->
<!-- Help Start -->
<div class='top-right-item' id='help-nav-link'>
<a href='javascript: void(0);' id='help-menu-icon' title='Help'>
<i class='qi-help'></i>
<span>Help</span>
</a>
</div>
<!-- Help End -->
<!-- profile box -->
<div class='dropdown pull-left top-right-item' id='profile'>
<a aria-expanded='false' aria-haspopup='true' class='dropdown-toggle' data-toggle='dropdown' href='javascript: void(0);' title='Sabyasachi'>
<i class='qi-avatar-default'></i>
<i class='qi-angle-down'></i>
</a>
<ul aria-labelledby='Profile' class='dropdown-menu dropdown-menu-right' id='profile-navigation'>
<li>
<a href='/v2/control-panel#my-profile'>
<i class='qi-my-profile'></i>
My Profile
<span id='profile-email'>
snayak@qubole.com
</span>
</a>
</li>
<li class='last-child'>
<a href='https://api.qubole.com/users/sign_out' rel='nofollow'>
<i class='qi-logout'></i>
Logout
</a>
</li>
</ul>
<div class='clearfix'></div>
</div>
<!-- profile box end -->
<!-- White label Links -->

</div>
</div>
<!-- END HEADER -->

</div>
</div>




<div>
<div id='searchDiv'>
  	<h1 align='center'>Search Metadata</h1>
	<div style='margin-left:30%'>
	 <span>
		<input id='searchId' type='text' style='width:25em;height:2em;font-size:25px' onkeypress="pressEnter()">
		<button class="fa fa-search" style='height:2em;border-radius: 8px;font-size:18px' onclick="search()">Search</button>	
		<button class="fa" style='height:2em;border-radius: 8px;font-size:18px;width:8%' onclick="reset()">Reset</button>	
	</span>
	</div>
</div>


<div aria-hidden='true' aria-labelledby='wait_modal_label' class='modal hide fade' data-backdrop='static' data-keyboard='false' id='wait_modal' role='dialog' tabindex='-1'>
<div class='modal-body' style='text-align:center; font-size:15px; font-weight:bold'>
Please Wait...&nbsp;
<i class='fa-icon-spin fa-icon-spinner fa-icon-large'></i>
<br>
</div>
</div>

<div id='facetSearch' style='margin-left:4%;margin-top:2%;float:left;width:10%;display: none'>
	<div>
	 <label>Type</label>
	 <select id='dsType' style="font-size:15px;height:2em;width:10em" onchange="facetSearch()">
	  <option selected>Select</option>
	  <option value='file'>File</option>
	  <option value='table'>Table</option>
	  <option value='column'>Column</option>
	  <option value='partition'>Partition</option>
	  <option value='view'>View</option>
	</select>
	</div>
	
	<div>
	 <label>File Format</label>
	 <select id='dsFormat' style="font-size:15px;height:2em;width:10em" onchange="facetSearch()">
	  <option selected>Select</option>
	  <option value='csv'>CSV</option>
	  <option value='json'>JSON</option>
	  <option value='text'>Text</option>
	  <option value='parquet'>Parquet</option>
	  <option value='orc'>ORC</option>
	</select>
	</div>
	
	<div>
	 <label>File Compression</label>
	 <select id='dsCompression' style="font-size:15px;height:2em;width:10em" onchange="facetSearch()">
	  <option selected>Select</option>
	  <option value='gzip'>GZIP</option>
	  <option value='bzip'>BZIP</option>
	  <option value='snappy'>SNAPPY</option>
	  <option value='none'>NONE</option>
	</select>
	</div>
	
	<div style="font-size:15px;margin-top:1em;margin-left:2em">
	<a href='#' onclick="clearFilter()">
	<span>Clear Filter</span>
	</a>
	</div>
</div>

<div id="searchList" align="center" style="display:none;margin-top:4%;float:right;width:70%;margin-right:8%" >
<table id="searchTable">
  <tr >
    <th>Name</th>
    <th>Type</th> 
    <th>Format</th>
    <th>Compression</th>
    <th>Owner</th>
    <th>Size</th>
    <th>Last Accessed By</th>
  </tr>
</table>
</div>
</div>

<div id='lineageDiv' style="display: none;">
 <div>
 	<img src="${pageContext.request.contextPath}/resources/image/lineage.png" style='margin-left:15%;margin-top:3%'>
 </div>
 <div style='margin-left:50em;margin-top:2em'>
  <a href='#' onclick="backToSearch()">
  <span style='font-size: 18px'>Go back to Search</span>
 </a>
 </div>
</div>
 
 
 
</body>
<script async="async" src="//whatfix.com/embed/embed.nocache.js" type="text/javascript"></script>
<script src="https://d3gd5cbndit7oj.cloudfront.net/assets/application-4e701fe9617f0927aedc6f6140d00fe1.js" type="text/javascript"></script>
<meta content="authenticity_token" name="csrf-param" />
<meta content="iAfWZkOVul0gPmzu5L78q7DjifNZRdsgIYFznvUTHpA=" name="csrf-token" />
<script type="text/javascript">
//<![CDATA[
AUTH_TOKEN = "iAfWZkOVul0gPmzu5L78q7DjifNZRdsgIYFznvUTHpA=";
//]]>
</script>
<script type="text/javascript">
//<![CDATA[
UV_SSO_ID = "KotHbIyz4OSX8qBvOXvChcibr4O7lRLXN2q1F8QqqjGLCNArAXNWqLUZ9+c/oCmPuZxGnCpkT+GWuplI+L2EGdPJK+3eZ2oQPqIjDLDV4dLUdj8uDOUIuI0//fTo1w/UFWmkUMg6LWid7aLPlLHGu/xeqIbdV1ZOzkeY9zJQmsk=";
//]]>
</script>
<script>
  //<![CDATA[
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-46302768-1');
    ga('send', 'pageview');
  //]]>
</script>


<script>
  //<![CDATA[
    var mainLayout;
    var base_url = "https://api.qubole.com";
    $(document).ready(function() {
      qbol_user_id = $.cookie('qbol_user_id');
      mainLayout = $('body').layout({
        applyDefaultStyles: false,
        resizable: false,
        closable: false,
        slidable: false,
        north__size: 48,
        center__paneSelector: '#center-pane',
        south__size: 60,
        west__size: 60,
        spacing_open: 0,
        spacing_closed: 0,
        south__closable: true,
        south__initClosed: true,
        center__minSize: 1000
      });
        $("#sidebar > div").click(function(event) {
          var target = $(this).find('a')[0];
          if (this.id == "sidebar-help") {
            window.open(target.href);
          }
          else {
            window.location.href = target.href;
          }
        });
    
        $('.ui-layout-north').mouseover(function(event) {
          mainLayout.allowOverflow(this);
        });
    
        $('.ui-layout-north').mouseout(function(event) {
          mainLayout.resetOverflow(this);
        });
    });
  //]]>
</script>

  <script type="text/javascript" charset="utf-8">
    var current_ui = 'COMMAND_TEMPLATES';
    var selected_template_id = null;
    var index_obj = com.command_templates.index();
    index_obj.init();
    var COMMAND_TEMPLATE_STATUS = '';
    
    function search()
    {
    	     var name = document.getElementById('searchId').value;
    	     if(name.includes('.'))
    	    	 {
    	    	 	name = name + '/';
    	    	 }
    	     if(name != "")
    	    	 {
		    	 $.ajax({
		 	        type: 'GET',
		 	        url:  '${pageContext.request.contextPath}' +'/search/getList/' + name,
		 	        dataType: 'json',
		 	        async: true,
		 	        success: function(result) {
		 	           	document.getElementById('searchList').style.display='block';
		 	            document.getElementById('facetSearch').style.display='block';
		 	           
		 	        	$('#searchTable tr').not(':first').remove();
		 	        	var html = '';
		 	        	for(var i = 0; i < result.length; i++)
		 	        	            html += '<tr><td><a href="#" onclick="loadLineage()">' + result[i].name + '</a></td><td>' + result[i].type + '</td><td>'
		 	        	            + result[i].format + '</td><td>' + result[i].compression + '</td><td>' + result[i].owner + '</td><td>'
		 	        	            + result[i].size + '</td><td>' + result[i].lastAccessedBy + '</td></tr>';
		 	        	$('#searchTable tr').first().after(html);
		 	        	
		 	        },
		 	        error: function() {
		 	            console.log('search list error');
		 	        }
		 	      });
    	    	 }
    	     else
    	    	 {
    	    	 	document.getElementById('searchList').style.display='none';
    	    	 }
	    	 
    }
    
    function facetSearch()
    {
	     var formData = {
	    		 name :  $("#searchId").val(),
	    		 type: $("#dsType").val(),
	    		 format :  $("#dsFormat").val(),
	    		 compression: $("#dsCompression").val()
		    	};
	    
	     $.ajax({
	 	        type: 'POST',
	 	        contentType : 'application/json',
	 	        url:  '${pageContext.request.contextPath}' +'/search/getFacetList',
	 	       	data : JSON.stringify(formData),
			    dataType: 'json',
	 	        async: true,
	 	        success: function(result) {
	 	           	document.getElementById('searchList').style.display='block';
	 	           
	 	        	$('#searchTable tr').not(':first').remove();
	 	        	var html = '';
	 	        	for(var i = 0; i < result.length; i++)
	 	        	            html += '<tr><td><a href="#">' + result[i].name + '</a></td><td>' + result[i].type + '</td><td>'
	 	        	            + result[i].format + '</td><td>' + result[i].compression + '</td><td>' + result[i].owner + '</td><td>'
	 	        	            + result[i].size + '</td><td>' + result[i].lastAccessedBy + '</td></tr>';
	 	        	$('#searchTable tr').first().after(html);
	 	        	
	 	        },
	 	        error: function() {
	 	            console.log('search list error');
	 	        }
	 	      });
    }
    
    function clearFilter()
    {
    		$('#dsType').val('Select'); 
    		$('#dsFormat').val('Select'); 
    		$('#dsCompression').val('Select'); 
    		
    		search();
    }
    
    function reset()
    {
    		document.getElementById('searchList').style.display='none';
    		document.getElementById('facetSearch').style.display='none';
    		$('#searchId').val(''); 
  
    }
    
    function loadLineage()
    {
    		document.getElementById('searchList').style.display='none';
		document.getElementById('facetSearch').style.display='none';
		document.getElementById('searchDiv').style.display='none';
		document.getElementById('lineageDiv').style.display='block';
    }
    
    function backToSearch()
    {
    		document.getElementById('lineageDiv').style.display='none';
    		document.getElementById('searchList').style.display='block';
    		document.getElementById('facetSearch').style.display='block';
    		document.getElementById('searchDiv').style.display='block';
    }
    
    function pressEnter()
    {
			$("#searchId").keyup(function(event) {
			    if (event.keyCode === 13) {
			        search();
			    }
			});
    }
  </script>




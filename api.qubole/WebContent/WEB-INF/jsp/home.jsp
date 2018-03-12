<!DOCTYPE html>
<html lang='en'>
<head>
<meta charset='utf-8'>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"7a0847e4ab","applicationID":"44700098","transactionName":"c1oMR0ILDwgEFhlHXUNqClxdAUwNDwBTTg==","queueTime":0,"applicationTime":336,"agent":""}</script>
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VQIFVl9UARAEUFZSBwEOXg=="};window.NREUM||(NREUM={}),__nr_require=function(t,n,e){function r(e){if(!n[e]){var o=n[e]={exports:{}};t[e][0].call(o.exports,function(n){var o=t[e][1][n];return r(o||n)},o,o.exports)}return n[e].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<e.length;o++)r(e[o]);return r}({1:[function(t,n,e){function r(t){try{s.console&&console.log(t)}catch(n){}}var o,i=t("ee"),a=t(15),s={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,o.indexOf("dev")!==-1&&(s.dev=!0),o.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&i.on("internal-error",function(t){r(t.stack)}),s.dev&&i.on("fn-err",function(t,n,e){r(e.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,n){return t}).join(", ")))},{}],2:[function(t,n,e){function r(t,n,e,r,s){try{p?p-=1:o(s||new UncaughtException(t,n,e),!0)}catch(f){try{i("ierr",[f,c.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,n,e){this.message=t||"Uncaught error with no additional information",this.sourceURL=n,this.line=e}function o(t,n){var e=n?null:c.now();i("err",[t,e])}var i=t("handle"),a=t(16),s=t("ee"),c=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError",p=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(8),t(7),"addEventListener"in window&&t(5),c.xhrWrappable&&t(9),d=!0)}s.on("fn-start",function(t,n,e){d&&(p+=1)}),s.on("fn-err",function(t,n,e){d&&!e[l]&&(f(e,l,function(){return!0}),this.thrown=!0,o(e))}),s.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),s.on("internal-error",function(t){i("ierr",[t,c.now(),!0])})},{}],3:[function(t,n,e){t("loader").features.ins=!0},{}],4:[function(t,n,e){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(8),s=t(7),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",y="pushState",g=t("loader");g.features.stn=!0,t(6);var b=NREUM.o.EV;o.on(m,function(t,n){var e=t[0];e instanceof b&&(this.bstStart=g.now())}),o.on(w,function(t,n){var e=t[0];e instanceof b&&i("bst",[e,n,this.bstStart,g.now()])}),a.on(m,function(t,n,e){this.bstStart=g.now(),this.bstType=e}),a.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),this.bstType])}),s.on(m,function(){this.bstStart=g.now()}),s.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),"requestAnimationFrame"])}),o.on(y+p,function(t){this.time=g.now(),this.startPath=location.pathname+location.hash}),o.on(y+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,n,e){function r(t){for(var n=t;n&&!n.hasOwnProperty(u);)n=Object.getPrototypeOf(n);n&&o(n)}function o(t){s.inPlace(t,[u,d],"-",i)}function i(t,n){return t[1]}var a=t("ee").get("events"),s=t(18)(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";n.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,n){var e=t[1],r=c(e,"nr@wrapped",function(){function t(){if("function"==typeof e.handleEvent)return e.handleEvent.apply(e,arguments)}var n={object:t,"function":e}[typeof e];return n?s(n,"fn-",null,n.name||"anonymous"):e});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,n,e){var r=t("ee").get("history"),o=t(18)(r);n.exports=r,o.inPlace(window.history,["pushState","replaceState"],"-")},{}],7:[function(t,n,e){var r=t("ee").get("raf"),o=t(18)(r),i="equestAnimationFrame";n.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],8:[function(t,n,e){function r(t,n,e){t[0]=a(t[0],"fn-",null,e)}function o(t,n,e){this.method=e,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,e)}var i=t("ee").get("timer"),a=t(18)(i),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";n.exports=i,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(c+u,r),i.on(s+u,o)},{}],9:[function(t,n,e){function r(t,n){d.inPlace(n,["onreadystatechange"],"fn-",s)}function o(){var t=this,n=u.context(t);t.readyState>3&&!n.resolved&&(n.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,y,"fn-",s)}function i(t){g.push(t),h&&(x?x.then(a):w?w(a):(E=-E,O.data=E))}function a(){for(var t=0;t<g.length;t++)r([],g[t]);g.length&&(g=[])}function s(t,n){return n}function c(t,n){for(var e in t)n[e]=t[e];return n}t(5);var f=t("ee"),u=f.get("xhr"),d=t(18)(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",y=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],g=[];n.exports=u;var b=window.XMLHttpRequest=function(t){var n=new p(t);try{u.emit("new-xhr",[n],n),n.addEventListener(v,o,!1)}catch(e){try{u.emit("internal-error",[e])}catch(r){}}return n};if(c(p,b),b.prototype=p.prototype,d.inPlace(b.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,n){r(t,n),i(n)}),u.on("open-xhr-start",r),h){var x=m&&m.resolve();if(!w&&!m){var E=1,O=document.createTextNode(E);new h(a).observe(O,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],10:[function(t,n,e){function r(t){var n=this.params,e=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<d;r++)t.removeEventListener(u[r],this.listener,!1);if(!n.aborted){if(e.duration=a.now()-this.startTime,4===t.readyState){n.status=t.status;var i=o(t,this.lastSize);if(i&&(e.rxSize=i),this.sameOrigin){var c=t.getResponseHeader("X-NewRelic-App-Data");c&&(n.cat=c.split(", ").pop())}}else n.status=0;e.cbTime=this.cbTime,f.emit("xhr-done",[t],t),s("xhr",[n,e,this.startTime])}}}function o(t,n){var e=t.responseType;if("json"===e&&null!==n)return n;var r="arraybuffer"===e||"blob"===e||"json"===e?t.response:t.responseText;return h(r)}function i(t,n){var e=c(n),r=t.params;r.host=e.hostname+":"+e.port,r.pathname=e.pathname,t.sameOrigin=e.sameOrigin}var a=t("loader");if(a.xhrWrappable){var s=t("handle"),c=t(11),f=t("ee"),u=["load","error","abort","timeout"],d=u.length,l=t("id"),p=t(14),h=t(13),m=window.XMLHttpRequest;a.features.xhr=!0,t(9),f.on("new-xhr",function(t){var n=this;n.totalCbs=0,n.called=0,n.cbTime=0,n.end=r,n.ended=!1,n.xhrGuids={},n.lastSize=null,p&&(p>34||p<10)||window.opera||t.addEventListener("progress",function(t){n.lastSize=t.loaded},!1)}),f.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),f.on("open-xhr-end",function(t,n){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&n.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),f.on("send-xhr-start",function(t,n){var e=this.metrics,r=t[0],o=this;if(e&&r){var i=h(r);i&&(e.txSize=i)}this.startTime=a.now(),this.listener=function(t){try{"abort"===t.type&&(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof n.onload))&&o.end(n)}catch(e){try{f.emit("internal-error",[e])}catch(r){}}};for(var s=0;s<d;s++)n.addEventListener(u[s],this.listener,!1)}),f.on("xhr-cb-time",function(t,n,e){this.cbTime+=t,n?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof e.onload||this.end(e)}),f.on("xhr-load-added",function(t,n){var e=""+l(t)+!!n;this.xhrGuids&&!this.xhrGuids[e]&&(this.xhrGuids[e]=!0,this.totalCbs+=1)}),f.on("xhr-load-removed",function(t,n){var e=""+l(t)+!!n;this.xhrGuids&&this.xhrGuids[e]&&(delete this.xhrGuids[e],this.totalCbs-=1)}),f.on("addEventListener-end",function(t,n){n instanceof m&&"load"===t[0]&&f.emit("xhr-load-added",[t[1],t[2]],n)}),f.on("removeEventListener-end",function(t,n){n instanceof m&&"load"===t[0]&&f.emit("xhr-load-removed",[t[1],t[2]],n)}),f.on("fn-start",function(t,n,e){n instanceof m&&("onload"===e&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),f.on("fn-end",function(t,n){this.xhrCbStart&&f.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,n],n)})}},{}],11:[function(t,n,e){n.exports=function(t){var n=document.createElement("a"),e=window.location,r={};n.href=t,r.port=n.port;var o=n.href.split("://");!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=n.hostname||e.hostname,r.pathname=n.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname);var i=!n.protocol||":"===n.protocol||n.protocol===e.protocol,a=n.hostname===document.domain&&n.port===e.port;return r.sameOrigin=i&&(!n.hostname||a),r}},{}],12:[function(t,n,e){function r(){}function o(t,n,e){return function(){return i(t,[f.now()].concat(s(arguments)),n?null:this,e),n?void 0:this}}var i=t("handle"),a=t(15),s=t(16),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,n){u[n]=o(l+n,!0,"api")}),u.addPageAction=o(l+"addPageAction",!0),u.setCurrentRouteName=o(l+"routeName",!0),n.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,n){var e={},r=this,o="function"==typeof n;return i(p+"tracer",[f.now(),t,e],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],e),o)try{return n.apply(this,arguments)}catch(t){throw c.emit("fn-err",[arguments,this,t],e),t}finally{c.emit("fn-end",[f.now()],e)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,n){h[n]=o(p+n)}),newrelic.noticeError=function(t){"string"==typeof t&&(t=new Error(t)),i("err",[t,f.now()])}},{}],13:[function(t,n,e){n.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(n){return}}}},{}],14:[function(t,n,e){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),n.exports=r},{}],15:[function(t,n,e){function r(t,n){var e=[],r="",i=0;for(r in t)o.call(t,r)&&(e[i]=n(r,t[r]),i+=1);return e}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],16:[function(t,n,e){function r(t,n,e){n||(n=0),"undefined"==typeof e&&(e=t?t.length:0);for(var r=-1,o=e-n||0,i=Array(o<0?0:o);++r<o;)i[r]=t[n+r];return i}n.exports=r},{}],17:[function(t,n,e){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],18:[function(t,n,e){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(16),a="nr@original",s=Object.prototype.hasOwnProperty,c=!1;n.exports=function(t,n){function e(t,n,e,o){function nrWrapper(){var r,a,s,c;try{a=this,r=i(arguments),s="function"==typeof e?e(r,a):e||{}}catch(f){l([f,"",[r,a,o],s])}u(n+"start",[r,a,o],s);try{return c=t.apply(a,r)}catch(d){throw u(n+"err",[r,a,d],s),d}finally{u(n+"end",[r,a,c],s)}}return r(t)?t:(n||(n=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,n,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<n.length;c++)s=n[c],a=t[s],r(a)||(t[s]=e(a,f?s+o:o,i,s))}function u(e,r,o){if(!c||n){var i=c;c=!0;try{t.emit(e,r,o,n)}catch(a){l([a,e,r,o])}c=i}}function d(t,n){if(Object.defineProperty&&Object.keys)try{var e=Object.keys(t);return e.forEach(function(e){Object.defineProperty(n,e,{get:function(){return t[e]},set:function(n){return t[e]=n,n}})}),n}catch(r){l([r])}for(var o in t)s.call(t,o)&&(n[o]=t[o]);return n}function l(n){try{t.emit("internal-error",n)}catch(e){}}return t||(t=o),e.inPlace=f,e.flag=a,e}},{}],ee:[function(t,n,e){function r(){}function o(t){function n(t){return t&&t instanceof r?t:t?c(t,s,i):i()}function e(e,r,o,i){if(!l.aborted||i){t&&t(e,r,o);for(var a=n(o),s=h(e),c=s.length,f=0;f<c;f++)s[f].apply(a,r);var d=u[y[e]];return d&&d.push([g,e,r,a]),a}}function p(t,n){v[t]=h(t).concat(n)}function h(t){return v[t]||[]}function m(t){return d[t]=d[t]||o(e)}function w(t,n){f(t,function(t,e){n=n||"feature",y[e]=n,n in u||(u[n]=[])})}var v={},y={},g={on:p,emit:e,get:m,listeners:h,context:n,buffer:w,abort:a,aborted:!1};return g}function i(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var s="nr@context",c=t("gos"),f=t(15),u={},d={},l=n.exports=o();l.backlog=u},{}],gos:[function(t,n,e){function r(t,n,e){if(o.call(t,n))return t[n];var r=e();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(t,n,e){function r(t,n,e,r){o.buffer([t],r),o.emit(t,n,e)}var o=t("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(t,n,e){function r(t){var n=typeof t;return!t||"object"!==n&&"function"!==n?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");n.exports=r},{}],loader:[function(t,n,e){function r(){if(!x++){var t=b.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&n))return u.abort();f(y,function(n,e){t[n]||(t[n]=e)}),c("mark",["onload",a()+b.offset],null,"api");var e=l.createElement("script");e.src="https://"+t.agent,n.parentNode.insertBefore(e,n)}}function o(){"complete"===l.readyState&&i()}function i(){c("mark",["domContent",a()+b.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(s=Math.max((new Date).getTime(),s))-b.offset}var s=(new Date).getTime(),c=t("handle"),f=t(15),u=t("ee"),d=window,l=d.document,p="addEventListener",h="attachEvent",m=d.XMLHttpRequest,w=m&&m.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:m,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1071.min.js"},g=m&&w&&w[p]&&!/CriOS/.test(navigator.userAgent),b=n.exports={offset:s,now:a,origin:v,features:{},xhrWrappable:g};t(12),l[p]?(l[p]("DOMContentLoaded",i,!1),d[p]("load",r,!1)):(l[h]("onreadystatechange",o),d[h]("onload",r)),c("mark",["firstbyte",s],null,"api");var x=0,E=t(17)},{}]},{},["loader",2,10,4,3]);</script>
<title>
Home

&nbsp;| Qubole Data Services (QDS)
</title>
<meta content='width=device-width, initial-scale=1.0' name='viewport'>
<meta content='default' name='referrer'>

<meta content="authenticity_token" name="csrf-param" />
<meta content="iAfWZkOVul0gPmzu5L78q7DjifNZRdsgIYFznvUTHpA=" name="csrf-token" />
<link href="https://d3gd5cbndit7oj.cloudfront.net/assets/_scss/qubole.main-91b1aa5526fe2f7a66df0103de6c7e0b.css" media="screen" rel="stylesheet" type="text/css" />
<link href="https://d3gd5cbndit7oj.cloudfront.net/assets/v2/qubole.qds_home-cd5a124421893b9414dd8f4ebe9fda5f.css" media="screen" rel="stylesheet" type="text/css" />

<link href="https://d3gd5cbndit7oj.cloudfront.net/assets/v2/icon/favicon-ae3e870fc639e91dd8251cc5acf7e563.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
</head>
<body class='aws overlay-container'>
<div class='html-element-overlay' hidden id='bodyOverlay'>
<img class='overlayImg' src='/assets/v2/loader-blue.svg'>
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
<span class='pull-left' data-tag='home'>
Home
</span>
<i class='qi-chevron-down pull-right'></i>
</div>
</a>
<div class='dropdown-menu fat-menu'>
<div class='menu-col'>
<div class='menu-item'>
<a href='/home'>
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
<div id='cluster-dropdown-lis'></div>
<li class='manage-clusters'>
<a class='cluster-manage-btn' href='/clusters'>
<i class='qi-clusters'></i>
<span>Manage Clusters</span>
</a>
</li>
</ul>
<!-- Cluster dropdown template -->
<script id='cluster-status-dropdown-template' type='text/x-handlebars-template'>
<li class='cluster-status-li'>
<div class='cluster-li-inner' title='Label(s): {{clusterLabels}}'>
<div class='pull-left'>
<span class='job-status {{clusterStateIcon}}' id='cluster-{{clusterId}}' title='{{clusterState}}'></span>
<a class='cluster-label-inner text-ellipsis' href='/clusters#/view/{{clusterId}}'>
{{clusterLabel}}
</a>
<i class='default_tick qi-tick-circle {{clusterDefaultTick}}' title='Default Cluster'></i>
</div>
<div class='pull-right'>
<span class='inline-span'>
{{{clusterToggleBtn}}}
{{{clusterManageBtn}}}
</span>
</div>
<div class='clearfix'></div>
</div>
</li>
</script>
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

<div class='modal fade in' id='quick-tour-modal' role='dialog' tabindex='-1'>
<div class='modal-dialog' role='document'>
<div class='modal-content'>
<div class='modal-header quicktour-header'>
<button aria-hidden='true' class='close' data-dismiss='modal' type='button'>&times;</button>
<div class='modalTitle'>
<h3>Export</h3>
<h4> and Import Your Data</h4>
</div>
</div>
<div class='modal-body'>
<div class='img-container'>
<img data-header='Main Navigation' data-src='/assets/v2/quick-tour/qt-page-1-new-oval.png'>
<img data-header='Product Offerings' data-src='/assets/v2/quick-tour/qt-menu.png'>
<img data-header='Explore and Import Your Data' data-src='/assets/v2/quick-tour/qt-explore.png'>
<img data-header='Analyze Your Data' data-name='analyze' data-src='/assets/v2/quick-tour/qt-analyze.png'>
</div>
</div>
<div class='modal-footer'>
<a class='left-quicktour prev pull-left' href='javascript: void(0);'>
<i class='qi-chevron-left'></i>
<span class='arrow-name'>Previous Section</span>
</a>
<a class='right-quicktour next pull-right' href='javascript: void(0);'>
<span class='arrow-name'>Next Section</span>
<i class='qi-chevron-right'></i>
</a>
</div>
</div>
</div>
</div>

<div class='main overlay-container'>
<div class='html-element-overlay' hidden id='blockOverlay'>
<img class='overlayImg' src='/assets/v2/loader-blue.svg'>
</div>

<!-- BEGIN MAIN CONTENT -->
<div class='container' id='container'>
<div id='center-panel'>
<div class='overlay-container'>
<div class='html-element-overlay' hidden id='centerOverlay'>
<img class='overlayImg' src='/assets/v2/loader-blue.svg'>
</div>
</div>

<!-- Main Content - Mandatory -->
<div class='qds-home-main-app'>
<div class='component-qds-home-banner'>
<div class='jumbotron qds-home-banner'>
<div class='carousel slide' data-interval='false' data-ride='carousel' id='qds-home-banner-carosel'>
<!-- Indicators -->
<ol class='carousel-indicators'>
<li class='active' data-slide-to='0' data-target='#qds-home-banner-carosel'></li>
<li data-slide-to='1' data-target='#qds-home-banner-carosel'></li>
<li data-slide-to='2' data-target='#qds-home-banner-carosel'></li>
</ol>
<!-- Wrapper for slides -->
<div class='carousel-inner' role='listbox'>
<div class='item active'>
<div class='row'>
<div class='col-md-12'>
<h2>
Welcome to Qubole Data Service,
Sabyasachi!
<a class='pull-right qi-angle-double-up qds-home-banner-close' href='javascript:void(0)'></a>
</h2>
<hr>

</div>
</div>
<div class='row'>
<div class='col-md-2'>
<img class='qds-home-banner-icon-xlg img-responsive' src='/assets/v2/home/icon_walkthrough.png'>
</div>
<div class='col-md-10'>
<h4 class='banner-header'>Walkthrough Qubole Interface</h4>
<small class='qds-home-text-muted-desc'>See step by step walkthroughs that will take you through the various steps required to get you started</small>
<div class='hide' id='list-tutorials-qdshome'>
<ul class='list-inline banner-list-head'>
<li>
<ul class='list-unstyled analyze-walkthrough-list'></ul>
</li>
<li>
<ul class='list-unstyled sparknotebook-walkthrough-list'></ul>
</li>
<li>
<ul class='list-unstyled schedule-walkthrough-list'></ul>
</li>
</ul>
</div>
<div id='banner-tutorials-loading'>
<div class='text-white'>
<span class='q-loader-white'></span>
Loading list of tutorials ...
</div>
</div>
</div>
</div>
</div>
<div class='item'>
<div class='row'>
<div class='col-md-12'>
<h2>
Welcome to Qubole Data Service,
Sabyasachi!
<a class='pull-right qi-angle-double-up qds-home-banner-close' href='javascript:void(0)'></a>
</h2>
<hr>

</div>
</div>
<div class='row'>
<div class='col-md-2'>
<img class='qds-home-banner-icon-xlg img-responsive' src='/assets/v2/home/icon_airflow.png'>
</div>
<div class='col-md-10'>
<h4 class='banner-header'>Introducing Airflow on QDS</h4>
<small class='qds-home-text-muted-desc'>Airflow is a platform for programmatically authoring, scheduling, and monitoring workflows. It supports integration with third-party platforms. You can author complex directed acyclic graphs (DAGs) of tasks inside Airflow. It comes packaged with a rich feature set, which is essential to the ETL world. The rich user interface and command-line utilities make it easy to visualize pipelines running in production, monitor progress, and troubleshoot issues as required.</small>
<p class='margin-top-sm'>
<a class='btn btn-warning text-dark' href='http://docs.qubole.com/en/latest/user-guide/airflow/introduction-airflow.html' role='button' target='_blank'>
Learn More
</a>
</p>
</div>
</div>
</div>
<div class='item'>
<div class='row'>
<div class='col-md-12'>
<h2>
Welcome to Qubole Data Service,
Sabyasachi!
<a class='pull-right qi-angle-double-up qds-home-banner-close' href='javascript:void(0)'></a>
</h2>
<hr>

</div>
</div>
<div class='row'>
<div class='col-md-2'>
<img class='qds-home-banner-icon-xlg img-responsive' src='/assets/v2/home/gitHub.svg'>
</div>
<div class='col-md-10'>
<h4 class='banner-header'>Version control for Notebooks with GitHub Integration</h4>
<small class='qds-home-text-muted-desc'>We are excited to announce the general availability of GitHub integration for QDS Notebooks. This integration with GitHub will give QDS notebook users the ability to use a central repository and track code changess.</small>
<p class='margin-top-sm'>
<a class='btn btn-warning text-dark' href='http://docs.qubole.com/en/latest/user-guide/features/notebook/link-notebook-github.html' role='button' target='_blank'>
Learn More
</a>
</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class='qds-home-body container-fluid'>
<div class='row'>
<div class='col-md-8'>
<div class='qds-home-stats-box'>
<div class='row'>
<div class='col-xs-4'>
<dl class='dl-states'>
<dt class='text-primary-state'></dt>
<dt class='text-muted-state'>
<a href='/v2/analyze?status=InProgress&amp;interface=All'>
0
</a>
</dt>
<dd>
Commands
Running
</dd>
</dl>
</div>
<div class='col-xs-4'>
<dl class='dl-states'>
<dt class='text-muted-state'>
<a href='/clusters#/?q=&amp;state=UP'>
0
</a>
</dt>
<dd>
Clusters
Running
</dd>
</dl>
</div>
<div class='col-xs-4'>
<dl class='dl-states'>
<dt class='text-muted-state'>
<a href='/v2/scheduler'>
0
</a>
</dt>
<dd>
Active Schedules
</dd>
</dl>
</div>
</div>
</div>

<div class='qds-home-recent-box' id='recent-commands-listing'>
<h2>
Recent Commands
</h2>
<div class='row' id='listing'></div>
<div class='row hide' id='show-more'>
<div class='col-md-12'>
<a class='show-more-text pull-right' href='/v2/analyze?interface=All&amp;show=history'>
see all
</a>
</div>
</div>
<div class='text-center'>
<div class='loader hide'>
<span class='q-loader-blue qi-svg-32'></span>
<div class='loader-text'>
Loading recent commands...
</div>
</div>
<div class='no-data margin-top-lg hide'>
<div class='analyze-icon'>
<span class='qi-angle-right'></span>
<div class='line'></div>
</div>
<div class='no-recent-text'>
No recent commands. Go to
<a href='/v2/analyze'>Analyze</a>
or
<a href='/v2/scheduler'>Scheduler</a>
to run commands
</div>
</div>
<div class='error-loading-data hide'>
<p>
Error fetching recent commands, please try again after some time.
</p>
</div>
</div>
</div>

<div class='qds-home-recent-box' id='recent-notebooks-listing'>
<h2>
Recent Notebooks
</h2>
<div class='row' id='listing'></div>
<div class='row hide' id='show-more'>
<div class='col-md-12'>
<a class='show-more-text pull-right' href='/notebooks'>
see all
</a>
</div>
</div>
<div class='text-center'>
<div class='loader hide'>
<span class='q-loader-blue qi-svg-32'></span>
<div class='loader-text'>
Loading recent notebooks...
</div>
</div>
<div class='no-data margin-top-lg hide'>
<span class='qi-file'></span>
<div class='no-recent-text'>
No recent notebooks. Go to
<a href='/notebooks'>Notebooks</a>
to run commands
</div>
</div>
<div class='error-loading-data hide'>
<p>
Error fetching recent notebooks, please try again after some time.
</p>
</div>
</div>
</div>

</div>
<div class='col-md-4'>
<div class='qds-home-side-widget resources'>
<h3>
Resources
</h3>
<ul class='list-unstyled'>
<li>
<span class='qi qi-knowledge-base'></span>
<a href='//qubole.zendesk.com/hc/en-us/categories/200349105-Service-Updates-and-Release-Notes' target='_blank'>What's New</a>
</li>
<li>
<span class='qi qi-knowledge-base'></span>
<a href='http://docs.qubole.com' target='_blank'>Documentation</a>
</li>
<li>
<span class='qi qi-knowledge-base'></span>
<a href='//qubole.zendesk.com/hc/en-us/categories/200340129-Qubole-Data-Services' target='_blank'>Knowledge Base</a>
</li>
<li>
<span class='qi qi-knowledge-base'></span>
<a href='//qubole.com/education/' target='_blank'>Qubole Education</a>
</li>
</ul>
</div>
<div class='qds-home-side-widget video-tutorials'>
<div class='row'>
<div class='col-xs-12'>
<div class='pull-left'>
<h3>
Video Tutorials
</h3>
</div>
<div class='pull-right'>
<div id='toggle-video-tutorials'>
<i class='qi-chevron-double-up'></i>
</div>
</div>
</div>
</div>
<div class='row' id='video-tutorials-listing'>
<div class='col-md-12'>
<ul class='list-unstyled'>
<li>
<span class='qi qi-video-tutorial'></span>
<a href='https://www.youtube.com/watch?v=q_YDHuYduNE' target='_blank'>Qubole Clusters & Structure</a>
</li>
<li>
<span class='qi qi-video-tutorial'></span>
<a href='https://www.youtube.com/watch?v=GxOzmKBfRr8' target='_blank'>On Demand and Spot Instances</a>
</li>
<li>
<span class='qi qi-video-tutorial'></span>
<a href='https://www.youtube.com/watch?v=d7CSvzmy8PU' target='_blank'>Qubole Cluster AutoScaling</a>
</li>
</ul>
</div>
</div>
</div>
<div class='qds-home-side-widget' id='active-cluster-listing'>
<h3>
Running Clusters
</h3>
<div id='listing'></div>
<div class='loader hide'>
<span class='q-loader-blue'></span>
Loading active clusters...
</div>
<div class='no-recent-text no-data hide'>
No running clusters. Go to
<a href='/clusters'>Clusters</a>
page to create or start a cluster
</div>
<div class='row hide' id='show-more'>
<div class='col-md-12'>
<a class='show-more-text pull-right' href='/clusters#/?q=&amp;state=UP'>
see all
</a>
</div>
</div>
<div class='error-loading-data hide'>
<p>
Error fetching active clusters, please try again after some time.
</p>
</div>
</div>
<div class='qds-home-side-widget' id='fav-commands-listing'>
<h3>
Starred Items
</h3>
<div id='listing'></div>
<div class='loader hide'>
<span class='q-loader-blue'></span>
Loading starred items...
</div>
<div class='no-recent-text no-data hide'>
No starred items. You can star items in
<a href='/v2/analyze'>Analyze</a>
to follow on them later
</div>
<div class='row hide' id='show-more'>
<div class='col-md-12'>
<a class='show-more-text pull-right' href='/v2/analyze?interface=All&amp;qbol_user_id=45214&amp;favourite=true&amp;show=history'>
see all
</a>
</div>
</div>
<div class='error-loading-data hide'>
<p>
Error fetching starred commands, please try again after some time.
</p>
</div>
</div>
</div>
</div>
</div>
<!-- * Recent commands listing */ -->
<script id='recent-commands-listing-template' type='text/x-handlebars-template'>
<div class='col-sm-6'>
<div class='well well-sm well-card well-recent-runs'>
<p class='no-margin-bottom'>
<a href='/v2/analyze?command_id={{commandId}}'>
<div class='command-status {{commandStatus}}'></div>
{{commandName}}
</a>
<small class='command-type'>
{{commandType}}
</small>
</p>
<p class='query' title='{{commandQuery}}'>
{{commandQuery}}
</p>
<p>
<small class='running'>
{{commandStatusLabel}}
{{commandTimeLabel}}
{{commandRunTime}}
</small>
</p>
</div>
</div>
</script>
<!-- * Recent notebooks listing */ -->
<script id='recent-notebooks-listing-template' type='text/x-handlebars-template'>
<div class='col-md-6'>
<div class='well well-sm well-card well-recent-runs recent-notebooks' data-clusterID='{{clusterID}}'>
<p class='no-margin-bottom'>
<a href='/notebooks#home?id={{notebookId}}&amp;type=my-notebooks'>
<span class='qi qi-notebook'></span>
{{notebookName}}
</a>
<span class='label label-primary hide'>
{{notebookType}}
</span>
<small class='notebook-type'>
{{notebookType}}
</small>
</p>
<p>
<small class='running'>
Last used at
{{notebookLastUsed}}
</small>
</p>
</div>
</div>
</script>
<!-- * Side widget active cluster listing template */ -->
<script id='active-cluster-listing-template' type='text/x-handlebars-template'>
<div class='media cluster-listing-side-widget'>
<div class='media-left'>
<div class='qds-home-cluster-label-badge'>
{{clusterBadge}}
</div>
</div>
<div class='media-body'>
<a href='/clusters#/?q={{clusterId}}'>
{{clusterId}}
</a>
<div class='row'>
<div class='col-xs-5'>
<div class='small'>
<span>Uptime:</span>
{{clusterUpTime}}
</div>
</div>
<div class='col-xs-4'>
<div class='small'>
<span>
Node(s):
</span>
<a href='clusters#/view/{{clusterId}}?section=nodes'>
{{clusterNodes}}
</a>
</div>
</div>
</div>
</div>
</div>
</script>
<!-- * Side widget fav commands listing template */ -->
<script id='fav-commands-listing-template' type='text/x-handlebars-template'>
<div class='well well-sm well-card well-recent-runs'>
<p class='no-margin-bottom'>
<a href='/v2/analyze?command_id={{commandId}}'>
<div class='command-status {{commandStatus}}'></div>
{{commandName}}
</a>
<small class='command-type'>
{{commandType}}
</small>
</p>
<p>
<small class='running'>
{{commandStatusLabel}}
{{commandTimeLabel}}
{{commandRunTime}}
</small>
</p>
</div>
</script>

</div>

</div>
<div class='clearfix'></div>
</div>
<!-- MAIN CONTENT END -->
</div>
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
</input>
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

<div class='modal fade hide' id='shortcuts-modal'>
<div class='modal-dialog'>
<div class='modal-content'>
<div class='modal-header'>
<button class='close' data-dismiss='modal' type='button'>
&#215;
</button>
<h4 class='modal-title'>
Keyboard Shortcuts
</h4>
</div>
<div class='modal-body'>
<div id='shortcuts-container'>
<h5 id='shortcuts-page-title'></h5>
<div class='shortcuts-list'></div>
</div>
</div>
<div class='modal-footer'></div>
</div>
</div>
</div>
<div id='shortcuts-list-template'>
<!--
<dl>
<dt>{0}</dt>
<dd>
{1}
</dd>
</dl>
-->
</div>



<script src="https://d3gd5cbndit7oj.cloudfront.net/assets/qds_home/qubole.qds_home-31b488768d9af6a84d35c348fec24a43.js" type="text/javascript"></script>
<script>
  //<![CDATA[
    var perms = {"clusters":{"read":true,"create":true,"update":true,"delete":true,"clone":true,"start":true,"terminate":true,"manage":true}};
    $(document).ready(function() {
      QUBOLE.QDS_HOME.CONTROLLER.init();
    });
  //]]>
</script>

<script>
  //<![CDATA[
    var perms = {"clusters":{"read":true,"create":true,"update":true,"delete":true,"clone":true,"start":true,"terminate":true,"manage":true}};
    perms.cluster_api_version = 'v1.2';
    
    $(document).ready(function() {
      QUBOLE.HELP_WIDGET.CONTROLLER.init();
    });
  //]]>
</script>

<script>
  //<![CDATA[
    $(document).ready(function() {
      QUBOLE.CLUSTER.CONTROLLER.init();
    });
  //]]>
</script>

<script async="async" src="//whatfix.com/embed/embed.nocache.js" type="text/javascript"></script>
<script>
  //<![CDATA[
    QUBOLE.GLOBALS.currentQbolUser = '45214';
    QUBOLE.GLOBALS.currentUser = '22041';
    QUBOLE.GLOBALS.currentEmail = 'snayak@qubole.com';
  //]]>
</script>

<script>
  //<![CDATA[
    QUBOLE.GLOBALS.accountID = 9005;
    QUBOLE.GLOBALS.editionName = 'LegacyEdition';
  //]]>
</script>

<script>
  //<![CDATA[
    QUBOLE.GLOBALS.is_raw_result_download_enabled = true;
    QUBOLE.GLOBALS.hasAccountAccess = true;
    QUBOLE.GLOBALS.cloudProvider = 'AWS';
    QUBOLE.GLOBALS.storageType = 'CUSTOMER_MANAGED';
    QUBOLE.GLOBALS.computeType = 'CUSTOMER_MANAGED';
    QUBOLE.GLOBALS.base_url = "https://api.qubole.com";
    QUBOLE.GLOBALS.isNewClusterPageEnabled = true;
    QUBOLE.GLOBALS.logs_limit = "1000";
    QUBOLE.GLOBALS.enableKeyboardShortcuts = true;
    QUBOLE.GLOBALS.isGettingStartedEnabled = false;
    QUBOLE.GLOBALS.userSince = "59"
    QUBOLE.GLOBALS.isNewSignup = ""
    
    QUBOLE.GLOBALS.EXAMPLE_BASE_URL = "https://notebook-examples.qubole.com/";
    
    QUBOLE.GLOBALS.defloc = "snayak";
    QUBOLE.GLOBALS.storageName = "S3";
    QUBOLE.GLOBALS.storage_url_prefix = "s3://";
    
    var qbol_user_id = $.cookie('qbol_user_id');
    
    AUTH_TOKEN = "iAfWZkOVul0gPmzu5L78q7DjifNZRdsgIYFznvUTHpA=";
    UV_SSO_ID = "KotHbIyz4OSX8qBvOXvChcibr4O7lRLXN2q1F8QqqjGLCNArAXNWqLUZ9+c/oCmPuZxGnCpkT+GWuplI+L2EGdPJK+3eZ2oQPqIjDLDV4dLUdj8uDOUIuI0//fTo1w/U0RulWulega+Msl8D7bQjj0rIhMwwPkmWFPQYtuzgUmU=";
    
    QUBOLE.GLOBALS.aclActions = {"Note":["read","update","delete","grant"],"Folder":["read","write","manage"],"NotebookDashboard":["read","update","delete","execute","grant"],"Cluster":["read","update","delete","start","terminate","clone","grant"],"Scheduler":["read","update","delete","clone","grant"]};
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
    window.__wtw_lucky_site_id = 46841;
    
    (function() {
        var wa = document.createElement('script'); wa.type = 'text/javascript'; wa.async = true;
        wa.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://cdn') + '.luckyorange.com/w.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(wa, s);
      })();
  //]]>
</script>


<script id='IntercomSettingsScriptTag'>
window.intercomSettings = {
company: {
id: "",
name: ""
},
"production": "true",
name: "Sabyasachi Nayak",
email: "snayak@qubole.com",
created_at: 1515450188,
plan: "Qubole Trial Plan",
is_admin: true,
"user_hash": "7d93f437a05ea27f7ee6eddfe0476c80bb063fb34c50e43f587b19bd030b12b2",
<!-- *"widget": {"activator": "#IntercomDefaultWidget"},*/ -->
app_id: "0e04d00cbc65c5345b9984b481add76b1a0094b9"
};
</script>
<script>
  //<![CDATA[
    (function(){var w=window;var ic=w.Intercom;if(typeof ic==="function"){ic('reattach_activator');ic('update',intercomSettings);}else{var d=document;var i=function(){i.c(arguments)};i.q=[];i.c=function(args){i.q.push(args)};w.Intercom=i;function l(){var s=d.createElement('script');s.type='text/javascript';s.async=true;s.src='https://static.intercomcdn.com/intercom.v1.js';var x=d.getElementsByTagName('script')[0];x.parentNode.insertBefore(s,x);}if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}};})();
  //]]>
</script>

<iframe class='hide' name='downloader'></iframe>
</body>
</html>

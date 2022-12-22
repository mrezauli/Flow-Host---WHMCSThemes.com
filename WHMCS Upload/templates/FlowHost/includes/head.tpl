<!-- Styling -->
<link href="{$WEB_ROOT}/templates/{$template}/css/all.min.css?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script>
    var csrfToken = '{$token}',
        markdownGuide = '{lang|addslashes key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang|addslashes key="markdown.saved"}',
        saving = '{lang|addslashes key="markdown.saving"}',
        whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
        requiredText = '{lang|addslashes key="orderForm.required"}',
        recaptchaSiteKey = "{if $captcha}{$captcha->recaptcha->getSiteKey()}{/if}";
</script>
<script src="{$WEB_ROOT}/templates/{$template}/js/scripts.min.js?v={$versionHash}"></script>

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}

<link href="{$WEB_ROOT}/templates/{$template}/assets/img/favicon.png" rel="shortcut icon" type="image/x-icon"/>
<link href="{$WEB_ROOT}/templates/{$template}/assets/css/style.min.css" rel="stylesheet" type="text/css">
<link href="{$WEB_ROOT}/templates/{$template}/assets/css/mobile.min.css" rel="stylesheet" type="text/css">
<link href="{$WEB_ROOT}/templates/{$template}/assets/css/custom.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
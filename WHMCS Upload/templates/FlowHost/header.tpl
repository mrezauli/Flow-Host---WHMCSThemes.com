<!DOCTYPE HTML>
<html lang="en-GB">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {if $zumada_seo_manager}
    {$zumada_seo_manager}
    {else}
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    {/if}
    {include file="$template/includes/head.tpl"}
    {$headoutput}
</head>
<body data-phone-cc-input="{$phoneNumberInputStyle}">
{$headeroutput}
<div class="headercon">
  <div class="wrapper group">
    <div class="headerbox">
      <div class="logo"><a href="{$WEB_ROOT}/index.php"><img src="{$WEB_ROOT}/templates/{$template}/assets/img/logo.png" srcset="{$WEB_ROOT}/templates/{$template}/assets/img-retina/logo@2x.png 2x" alt="Logo" /></a></div>
      <div class="menubox" id="menu_area">
        <nav id="main-nav">
          <ul id="menu">
            <li{if $filename eq 'index'} class="current"{/if}><a href="{$WEB_ROOT}/index.php">Home</a>
            </li>
            <li{if $filename eq 'website-hosting'} class="current"{/if}><a href="{$WEB_ROOT}/website-hosting.php">Hosting Plans</a>
            </li>
            <li{if $filename eq 'announcements'} class="current"{/if}><a href="{$WEB_ROOT}/announcements.php">Company News</a>
            </li>
            <li{if $filename eq 'clientarea'} class="current"{/if}><a href="{$WEB_ROOT}/clientarea.php">Client Area</a>
            </li>
            <li{if $filename eq 'contact'} class="current"{/if}><a href="{$WEB_ROOT}/contact.php">Contact Us</a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
</div>
{if $templatefile neq 'homepage' && $pagetype neq 'custom'}
<div class="banner_con">
  <div class="wrapper">
    <div class="sub_banner">
      <div class="bannerlt">
        <h1>{$pagetitle}</h1>
        <h2>Manage your account with us</h2>
      </div>
    </div>
  </div>
</div>
<div id="whmcsthemes" class="whmcsthemes padded">
<div class="wrapper">
<div class="whmcscontentbox">
<section id="header">
  <div class="container">
    <ul class="top-nav">
      {if $languagechangeenabled && count($locales) > 1}
      <li> <a href="#" class="choose-language" data-toggle="popover" id="languageChooser"> {$activeLocale.localisedName} <b class="caret"></b> </a>
        <div id="languageChooserContent" class="hidden">
          <ul>
            {foreach $locales as $locale}
            <li> <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a> </li>
            {/foreach}
          </ul>
        </div>
      </li>
      {/if}
      {if $loggedin}
      <li> <a href="#" data-toggle="popover" id="accountNotifications" data-placement="bottom"> {$LANG.notifications}
        {if count($clientAlerts) > 0} <span class="label label-info">{lang key='notificationsnew'}</span> {/if} <b class="caret"></b> </a>
        <div id="accountNotificationsContent" class="hidden">
          <ul class="client-alerts">
            {foreach $clientAlerts as $alert}
            <li> <a href="{$alert->getLink()}"> <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
              <div class="message">{$alert->getMessage()}</div>
              </a> </li>
            {foreachelse}
            <li class="none"> {$LANG.notificationsnone} </li>
            {/foreach}
          </ul>
        </div>
      </li>
      <li class="primary-action"> <a href="{$WEB_ROOT}/logout.php" class="btn"> {$LANG.clientareanavlogout} </a> </li>
      {else}
      <li> <a href="{$WEB_ROOT}/clientarea.php">{$LANG.login}</a> </li>
      {if $condlinks.allowClientRegistration}
      <li> <a href="{$WEB_ROOT}/register.php">{$LANG.register}</a> </li>
      {/if}
      <li class="primary-action"> <a href="{$WEB_ROOT}/cart.php?a=view" class="btn"> {$LANG.viewcart} </a> </li>
      {/if}
      {if $adminMasqueradingAsClient || $adminLoggedIn}
      <li> <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-logged-in-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}"> <i class="fas fa-sign-out-alt"></i> </a> </li>
      {/if}
    </ul>
  </div>
</section>
<section id="main-menu">
  <nav id="nav" class="navbar navbar-default navbar-main" role="navigation">
    <div class="container"> 
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#primary-nav"> <span class="sr-only">{lang key='toggleNav'}</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="primary-nav">
        <ul class="nav navbar-nav">
          {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
        </ul>
        <ul class="nav navbar-nav navbar-right">
          {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}
        </ul>
      </div>
      <!-- /.navbar-collapse --> 
    </div>
  </nav>
</section>

{include file="$template/includes/validateuser.tpl"}
{include file="$template/includes/verifyemail.tpl"}
<section id="main-body">
<div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
<div class="row">
{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
            <div class="col-md-9 pull-md-right"> {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true} </div>
{/if}
<div class="col-md-3 pull-md-left sidebar"> {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar} </div>
{/if} 
<!-- Container for main page display content -->
<div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
{if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
{/if}
{/if}
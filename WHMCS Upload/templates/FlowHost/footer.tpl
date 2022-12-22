{if $templatefile neq 'homepage' && $pagetype neq 'custom'}
</div>
<!-- /.main-content --> 
{if !$inShoppingCart && $secondarySidebar->hasChildren()}
<div class="col-md-3 pull-md-left sidebar sidebar-secondary"> {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar} </div>
{/if}
<div class="clearfix"></div>
</div>
</div>
</section>
</div>
</div>
</div>
{/if}
<div class="copyright">
  <p class="social"> <a href="https://www.facebook.com/whmcsthemes" target="_blank"><img src="{$WEB_ROOT}/templates/{$template}/assets/img/icon_facebook.png" srcset="{$WEB_ROOT}/templates/{$template}/assets/img-retina/icon_facebook@2x.png 2x" alt="Facebook Icon" /></a> <a href="https://www.twitter.com/whmcsthemes" target="_blank"><img src="{$WEB_ROOT}/templates/{$template}/assets/img/icon_twitter.png" srcset="{$WEB_ROOT}/templates/{$template}/assets/img-retina/icon_twitter@2x.png 2x" alt="Twitter Icon" /></a> <a href="https://www.youtube.com/whmcsthemes" target="_blank"><img src="{$WEB_ROOT}/templates/{$template}/assets/img/icon_youtube.png" srcset="{$WEB_ROOT}/templates/{$template}/assets/img-retina/icon_youtube@2x.png 2x" alt="YouTube Icon" /></a> </p>
  <p><a href="#">Terms of Service</a><span class="divider"></span><a href="#">Privacy Policy</a></p>
  <p class="siteinfo">Copyright &copy; {$date_year} - <a href="https://www.whmcsthemes.com" target="_blank">WHMCSThemes.com</a> - All Rights Reserved.</p>
</div>
<script src="{$WEB_ROOT}/templates/{$template}/assets/js/jquery.slicknav.js"></script> 
{literal} 
<script>
$(document).ready(function(){
	$('#menu').slicknav({prependTo: '#menu_area'});
});
</script> 
{/literal}
<div id="fullpage-overlay" class="hidden">
    <div class="outer-wrapper">
        <div class="inner-wrapper">
            <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
            <br>
            <span class="msg"></span>
        </div>
    </div>
</div>
<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">{$LANG.close}</span>
                </button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body panel-body">
                {$LANG.loading}
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fas fa-circle-notch fa-spin"></i>
                    {$LANG.loading}
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    {$LANG.close}
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    {$LANG.submit}
                </button>
            </div>
        </div>
    </div>
</div>
{include file="$template/includes/generate-password.tpl"}
{$footeroutput}
</body></html>
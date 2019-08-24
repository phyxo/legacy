{if !empty($errors) }
    <div class="content messages{if isset($MENUBAR)} contentWithMenu{/if}">
	<div class="errors">
	    <ul>
		{foreach $errors as $error}
		    <li>{$error}</li>
		{/foreach}
	    </ul>
	</div>
    </div>
{/if}

{if !empty($infos)}
    <div class="content messages{if isset($MENUBAR)} contentWithMenu{/if}">
	<div class="infos">
	    <ul>
		{foreach $infos as $info}
		    <li>{$info}</li>
		{/foreach}
	    </ul>
	</div>
    </div>
{/if}

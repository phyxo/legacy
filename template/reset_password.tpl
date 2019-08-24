{extends file="__layout.tpl"}

{block name="category-actions"}{/block}

{block name="content"}
    <div class="titrePage">
	<h2><a href="{$U_HOME}">{'Home'|translate}</a>{$LEVEL_SEPARATOR}{$title}</h2>
    </div>

    <form id="lostPassword" action="{$form_action}?action={$action}{if isset($key)}&amp;key={$key}{/if}" method="post">
	<fieldset>
	    <legend>{'Forgot your password?'|translate}</legend>

	    <div class="message">{'Hello'|translate} <em>{$username}</em>. {'Enter your new password below.'|translate}</div>
	    <p>
		<label>
		    {'New password'|translate}
		    <br>
		    <input type="password" name="_password" id="use_new_pwd" value="">
		</label>
	    </p>

	    <p>
		<label>
		    {'Confirm Password'|translate}
		    <br>
		    <input type="password" name="_password_confirmation" id="passwordConf" value="">
		</label>
	    </p>
	</fieldset>
	<p class="bottomButtons">
	    <input type="hidden" name="_csrf_token" value="{$csrf_token}">
	    <input type="submit" name="submit" value="{'Submit'|translate}">
	</p>
    </form>
{/block}

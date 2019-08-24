{extends file="__layout.tpl"}

{block name="category-actions"}{/block}

{block name="content"}
    <div class="titrePage">
	<h2><a href="{$U_HOME}">{'Home'|translate}</a>{$LEVEL_SEPARATOR}{$title}</h2>
    </div>

    <form action="{$forgot_password_action}" method="post">
	<fieldset>
	    <legend>{'Forgot your password?'|translate}</legend>
	    <input type="hidden" name="_csrf_token" value="{$csrf_token}">

	    <div class="message">
		<p>{'Please enter your username or email address.'|translate}</p>
		<p>{'You will receive a link to create a new password via email.'|translate}</p>
	    </div>

	    <p>
		<label>
		    {'Username or email'|translate}
		    <br>
		    <input type="text" id="username_or_email" name="_username_or_email" size="40" maxlength="40"{if isset($username_or_email)} value="{$username_or_email}"{/if}>
		</label>
	    </p>

	    <p class="bottomButtons">
		<input type="hidden" name="_csrf_token" value="{$csrf_token}">
		<input type="submit" name="submit" value="{'Change my password'|translate}">
	    </p>
	</fieldset>
    </form>
{/block}

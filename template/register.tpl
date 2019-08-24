{extends file="__layout.tpl"}

{block name="category-actions"}{/block}

{block name="content"}
    <div id="registerPage">
	<div class="titrePage">
	    <h2><a href="{$U_HOME}">{'Home'|translate}</a>{$LEVEL_SEPARATOR}{'Registration'|translate}</h2>
	</div>

	<form method="post" action="{$register_action}" class="properties" name="register_form">
	    <fieldset>
		<legend>{'Enter your personnal informations'|translate}</legend>

		<ul>
		    <li>
			<span class="property">
			    <label for="login">* {'Username'|translate}</label>
			</span>
			<input type="text" name="_username" id="login" value="{$last_username}" >
		    </li>
		    <li>
			<span class="property">
			    <label for="password">* {'Password'|translate}</label>
			</span>
			<input type="password" name="_password" id="password" >
		    </li>
		    <li>
			<span class="property">
			    <label for="password_conf">* {'Confirm Password'|translate}</label>
			</span>
			<input type="password" name="_password_confirm" id="password_conf" >
		    </li>
		    <li>
			<span class="property">
			    <label for="mail_address">{if $obligatory_user_mail_address}* {/if}{'Email address'|translate}</label>
			</span>
			<input type="text" name="_mail_address" id="mail_address" value="{$F_EMAIL}" >
			{if not $obligatory_user_mail_address}
			    ({'useful when password forgotten'|translate})
			{/if}
		    </li>
		    <li>
			<span class="property">
			    <label for="send_password_by_mail">{'Send my connection settings by email'|translate}</label>
			</span>
			<input type="checkbox" name="_send_password_by_mail" id="send_password_by_mail" value="1" checked="checked">
		    </li>
		</ul>
	    </fieldset>

	    <p class="bottomButtons">
		<input type="hidden" name="_csrf_token" value="{$csrf_token}">
		<input class="submit" type="submit" name="submit" value="{'Register'|translate}">
		<input class="submit" type="reset" value="{'Reset'|translate}">
	    </p>

	</form>
    </div> <!-- registerPage -->
{/block}

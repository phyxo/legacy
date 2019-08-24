{extends file="__layout.tpl"}

{block name="category-actions"}{/block}

{block name="content"}
    <div class="titrePage">
	<h2><a href="{$U_HOME}">{'Home'|translate}</a>{$LEVEL_SEPARATOR}{'Identification'|translate}</h2>
    </div>

    <form action="{$login_route}" method="post" name="login_form" class="properties">
	<fieldset>
	    <legend>{'Connection settings'|translate}</legend>

	    <ul>
		<li>
		    <span class="property">
			<label for="username">{'Username'|translate}</label>
		    </span>
		    <input tabindex="1" class="login" type="text" name="_username" id="username" size="25">
		</li>

		<li>
		    <span class="property">
			<label for="password">{'Password'|translate}</label>
		    </span>
		    <input tabindex="2" class="login" type="password" name="_password" id="password" size="25">
		</li>

		{if $AUTHORIZE_REMEMBERING}
		    <li>
			<span class="property">
			    <label for="remember_me">{'Auto login'|translate}</label>
			</span>
			<input tabindex="3" type="checkbox" name="_remember_me" id="remember_me" value="1">
		    </li>
		{/if}
	    </ul>
	</fieldset>

	<p>
	    <input type="hidden" name="_csrf_token" value="{$csrf_token}">
	    <input tabindex="4" type="submit" name="login" value="{'Submit'|translate}">
	</p>

	<p>
            {if isset($register_route)}
		<a href="{$register_route}" title="{'Register'|translate}" class="pwg-state-default pwg-button">
		    <span class="pwg-icon pwg-icon-register">&nbsp;</span><span>{'Register'|translate}</span>
		</a>
	    {/if}
	    {if isset($password_route)}
		<a href="{$password_route}" title="{'Forgot your password?'|translate}" class="pwg-state-default pwg-button">
		    <span class="pwg-icon pwg-icon-lost-password">&nbsp;</span><span>{'Forgot your password?'|translate}</span>
		</a>
	    {/if}
	</p>
    </form>
{/block}

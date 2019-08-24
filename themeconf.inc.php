<?php
/*
 * This file is part of Phyxo package
 *
 * Copyright(c) Nicolas Roudaire  https://www.phyxo.net/
 * Licensed under the GPL version 2.0 license.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

/*
Theme Name: Legacy
Version: 1.0.1
Description: Legacy theme
Theme URI: https://ext.phyxo.net/extension_view.php?eid=6
Author: Nicolas Roudaire
Author URI: https://www.phyxo.net
*/

//
$themeconf = [
    'name' => 'legacy',
    'icon_dir' => 'themes/legacy/images',
];

include_once(__DIR__.'/include/TemplateAdapter.php');
$template->assign('pwg', new TemplateAdapter($image_std_params));

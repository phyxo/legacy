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

use Phyxo\Image\DerivativeImage;

class TemplateAdapter
{
    private $image_std_params;

    public function __construct($image_std_params)
    {
        $this->image_std_params = $image_std_params;
    }

    /**
     * @param string $type
     * @param array $img
     * @return DerivativeImage
     */
    public function derivative($type, $img)
    {
        return new DerivativeImage($img, $type, $this->image_std_params);
    }
}

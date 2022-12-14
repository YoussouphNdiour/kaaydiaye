<?php

use Botble\Shortcode\Shortcode;
use Illuminate\Support\HtmlString;

if (!function_exists('shortcode')) {
    /**
     * @return Shortcode
     */
    function shortcode(): Shortcode
    {
        return app('shortcode');
    }
}

if (!function_exists('add_shortcode')) {
    /**
     * @param string $key
     * @param string|null $name
     * @param null|string $description
     * @param null $callback
     * @return Shortcode
     */
    function add_shortcode(string $key, ?string $name, ?string $description = null, $callback = null): Shortcode
    {
        return shortcode()->register($key, $name, $description, $callback);
    }
}

if (!function_exists('do_shortcode')) {
    /**
     * @param string $content
     * @return HtmlString
     */
    function do_shortcode(string $content): HtmlString
    {
        return shortcode()->compile($content, true);
    }
}

if (!function_exists('generate_shortcode')) {
    /**
     * @param string $name
     * @param array $attributes
     * @return string
     */
    function generate_shortcode(string $name, array $attributes = []): string
    {
        return shortcode()->generateShortcode($name, $attributes);
    }
}

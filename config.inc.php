<?php
if (IN_serendipity !== true) {
  die ("Don't hack!");
}

$probelang = dirname(__FILE__) . '/' . $serendipity['charset'] . 'lang_' . $serendipity['lang'] . '.inc.php';

if (file_exists($probelang)) {
    include $probelang;
}

include dirname(__FILE__) . '/lang_en.inc.php';

$serendipity['smarty']->assign(array('currpage'=> "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']));

if ($serendipity['GET']['adminModule'] == 'templates') {
    $css_files = glob(dirname(__FILE__) . '/*_style.css');
    foreach($css_files AS $css_file) {
        $css_file = str_replace('_style.css', '', basename($css_file));
        if (!isset($colorsets[$css_file])) {
            $colorsets[$css_file] = $css_file;
        }
    }
}

$template_config = array(
    array(
        'var'           => 'custheader',
        'name'          => BP_CUSTOM_HEADER,
        'type'          => 'boolean',
        'default'       => 'false',
    ),
    array(
        'var'           => 'headerimage',
        'name'          => BP_HEADER_IMAGE,
        'type'          => 'media',
        'default'       => serendipity_getTemplateFile('header.png')
    ),
    array(
        'var'           => 'firbtitle',
        'name'          => FIR_BTITLE,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'firbdescr',
        'name'          => FIR_BDESCR,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'date_format',
        'name'          => GENERAL_PLUGIN_DATEFORMAT . " (http://php.net/strftime)",
        'type'          => 'select',
        'default'       => DATE_FORMAT_ENTRY,
        'select_values' => array(DATE_FORMAT_ENTRY => DATE_FORMAT_ENTRY,
                                 '%a, %e. %B %Y' => '%a, %e. %B %Y',
                                 '%d-%m-%y' => '%d-%m-%y',
                                 '%m-%d-%y' => '%m-%d-%y',
                                 '%a %d-%m-%y' => '%a %d-%m-%y',
                                 '%a %m-%d-%y' => '%a %m-%d-%y',
                                 '%b %d' => '%b %d',
                                 "%b %d '%y" => "%b %d '%y")
    ),
    array(
        'var'           => 'footerauthor',
        'name'          => FOOTER_AUTHOR,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'footercategories',
        'name'          => FOOTER_CATEGORIES,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'footertimestamp',
        'name'          => FOOTER_TIMESTAMP,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'footercomments',
        'name'          => FOOTER_COMMENTS,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'footertrackbacks',
        'name'          => FOOTER_TRACKBACKS,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'altcommtrack',
        'name'          => ALT_COMMTRACK,
        'type'          => 'boolean',
        'default'       => 'false',
    ),
    array(
        'var'           => 'addthisaccount',
        'name'          => ADDTHIS_ACCOUNT,
        'type'          => 'string',
        'default'       => '',
    ),
    array(
        'var'           => 'addthistwittervia',
        'name'          => ADDTHIS_TWITTER_VIA,
        'type'          => 'string',
        'default'       => 'AddThis',
    ),
    array(
        'var'           => 'addthisfbimage',
        'name'          => ADDTHIS_FACEBOOK_IMAGE,
        'type'          => 'string',
        'default'       => '',
    ),
    array(
        'var'           => 'show_sticky_entry_footer',
        'name'          => SHOW_STICKY_ENTRY_FOOTER,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'show_sticky_entry_heading',
        'name'          => SHOW_STICKY_ENTRY_HEADING,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'prev_next_style',
        'name'          => PREV_NEXT_STYLE,
        'type'          => 'select',
        'default'       => 'text',
        'select_values' => array('text' => PREV_NEXT_TEXT,
                                 'texticon' => PREV_NEXT_TEXT_ICON,
                                 'icon' => PREV_NEXT_ICON)
    ),
    array(
        'var'           => 'additional_head_code',
        'name'          => ADDITIONAL_HEAD_CODE,
        'type'          => 'text',
        'default'       => '',
    ),
    array(
        'var'           => 'additional_head_code_toggle',
        'name'          => USE_ADDITIONAL_HEAD_CODE,
        'type'          => 'boolean',
        'default'       => 'false'
    ),
    array(
        'var'           => 'leaderboard_code',
        'name'          => LEADERBOARD_CODE,
        'type'          => 'text',
        'default'       => '',
    ),
    array(
        'var'           => 'leaderboard_code_toggle',
        'name'          => USE_LEADERBOARD,
        'type'          => 'boolean',
        'default'       => 'false'
    ),
    array(
        'var'           => 'between_post_code',
        'name'          => BETWEEN_POST_CODE,
        'type'          => 'text',
        'default'       => '',
    ),
    array(
        'var'           => 'between_post_code_toggle',
        'name'          => USE_BETWEEN_POST,
        'type'          => 'select',
        'default'       => 'false',
        'select_values' => array('none' => 'Disabled',
                                 'all' => 'All Posts',
                                 'first' => 'After first')
   ),
    array(
        'var'           => 'counter_code',
        'name'          => COUNTER_CODE,
        'type'          => 'text',
        'default'       => '',
    ),
    array(
        'var'           => 'counter_code_toggle',
        'name'          => USE_COUNTER,
        'type'          => 'boolean',
        'default'       => 'false'
    ),
    array(
        'var'           => 'footer_text',
        'name'          => FOOTER_TEXT,
        'type'          => 'text',
        'default'       => '',
    ),
    array(
        'var'           => 'footer_text_toggle',
        'name'          => USE_FOOTER_TEXT,
        'type'          => 'boolean',
        'default'       => 'false'
    ),
    array(
        'var'           => 'sitenav_footer',
        'name'          => SITENAV_FOOTER,
        'type'          => 'boolean',
        'default'       => 'true'
    ),
    array(
        'var'           => 'sitenav_quicksearch',
        'name'          => SITENAV_QUICKSEARCH,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'googlesearch',
        'name'          => GOOGLESEARCH,
        'type'          => 'boolean',
        'default'       => 'false',
    ),
    array(
        'var'           => 'googlesearch_partner_id',
        'name'          => GOOGLESEARCH_PARTNER_ID,
        'type'          => 'string',
    ),
    array(
        'var'           => 'sitenav_sidebar_title',
        'name'          => SITENAV_TITLE,
        'type'          => 'string',
        'default'       => SITENAV_TITLE_TEXT,
    ),
    array(
        'var'           => 'amount',
        'name'          => NAVLINK_AMOUNT,
        'type'          => 'string',
        'default'       => '5',
    ),
    array(
        'var'           => 'navbar',
        'name'          => NAVBAR_SOURCE,
        'type'          => 'select',
        'default'       => 'default',
        'select_values' => array('default' => 'Default',
                                 'smarty' => 'Smarty Template (custom_navbar.tpl)',
                                 'raw' => 'Raw Source Below')
   ),
    array(
        'var'           => 'rawnavbar',
        'name'          => RAW_NAVBAR,
        'type'          => 'text',
        'default'       => '',
    )
);

$template_loaded_config = &serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option']);

$navlinks = array();

for ($i = 0; $i < $template_loaded_config['amount']; $i++) {
    $navlinks[] = array(
        'title' => $template_loaded_config['navlink' . $i . 'text'],
        'href'  => $template_loaded_config['navlink' . $i . 'url']
    );
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'text',
        'name'          => NAV_LINK_TEXT . ' #' . $i,
        'type'          => 'string',
        'default'       => 'Link #' . $i,
        );
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'url',
        'name'          => NAV_LINK_URL . ' #' . $i,
        'type'          => 'string',
        'default'       => '#',
    );
}

$serendipity['smarty']->assign_by_ref('navlinks', $navlinks);

// Allow colorset authors to include license and attribution data
$colorset_data = array();  // Maybe we'll want more data later...
$colorset_data['attribution'] = '';
$attribution_file = dirname(__FILE__) . '/' . $template_loaded_config['colorset'] . '_license.txt';
if (is_readable($attribution_file)) {
	$attribution = file_get_contents($attribution_file);
	if (!empty($attribution)) {
		$colorset_data['attribution'] = $attribution;
	}
}
$template_loaded_config['colorset_data'] = $colorset_data;

// Event hooks, event hooks, event hooks
function serendipity_plugin_api_event_hook($event, &$bag, $eventData, $addData = null) {
    global $serendipity;

//    print_r($serendipity);

    switch($event) {
        case 'backend_header':
            $template_path = $serendipity['serendipityHTTPPath'] . $serendipity['templatePath'] . $serendipity['template'];

            echo '<link rel="stylesheet" type="text/css" href="' . $template_path . '/tbb_style.min.css">';

            echo '<!-- Crimson Text Font -->' . "\n";
            echo '<link href="https://fonts.googleapis.com/css?family=Crimson+Text" rel="stylesheet">' . "\n";

            echo '<!-- Bootstrap -->' . "\n";
            echo '<link rel="stylesheet" href="' . $template_path . '/bootstrap.min.css" />' . "\n";

            echo '<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>' . "\n";
            echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>' . "\n";
            echo '<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>' . "\n";

            echo '<!-- FontAwesome -->' . "\n";
            echo '<link rel="stylesheet" href="' . $template_path . '/font-awesome-4.7.0/css/font-awesome.min.css" />' . "\n";

            return true;
            break;
    }
}

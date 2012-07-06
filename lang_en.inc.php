<?php
// Colorsets
@define('THEME_COLORSET', 'Colorset');
@define('USER_STYLESHEET','Use additional user stylesheet. Users have to create this stylesheet in the template directory. It has to be named user.css and can be used to override selected styles.');
// Layout
@define('LAYOUT_TYPE','Blog layout (B = Blog entriee, S = Sidebar, CF = Content first)');
@define('LAYOUT_SBS','Three columns S-B-S');
@define('LAYOUT_BSS','Three columns, B-S-S, CF');
@define('LAYOUT_SSB','Three columns, S-S-B');
@define('LAYOUT_SB','Two columns, S-B');
@define('LAYOUT_BS','Two columns, B-S, CF');
@define('LAYOUT_SC','One column, sidebars below, CF');
@define('LAYOUT_SBF','Two columns, sidebars left + below');
@define('LAYOUT_BSF','Two columns, sidebars right + below, CF');
@define('JAVASCRIPT_COLUMNS','Generate equal heights columns using javascript (May slow down page rendering a little.)');
// Custom header
@define('BP_CUSTOM_HEADER','Custom header image from media database');
@define('BP_HEADER_IMAGE','Choose image');
@define('BP_HEADER_TYPE','Tiling of header image');
@define('BP_HEADER_BANNER', 'Banner (no tiling)');
@define('BP_HEADER_HTILED', 'Horizontally tiled');
@define('BP_HEADER_VTILED', 'Vertically tiled');
@define('BP_HEADER_BTILED', 'Tiles horizontally and vertically');
@define('BP_HEADER_POSHOR', 'Horizontal alignment');
@define('BP_HEADER_POSVER', 'Vertical alignment');
@define('BP_CENTER', 'centered');
@define('BP_TOP', 'top');
@define('BP_BOTTOM', 'bottom');
// Fahrner Image Replacement
@define('FIR_BTITLE','Show blog title in the header');
@define('FIR_BDESCR','Show blog description in the header');
// Date format
@define('BP_DATE_FORMAT', 'Date format');
// Entry footer
@define('ENTRY_FOOTER_POS','Position of the entry footer');
@define('BELOW_ENTRY','Below the entry');
@define('BELOW_TITLE','Below the entry title');
@define('SPLIT_FOOTER','Split entry footer');
@define('FOOTER_AUTHOR','Show author in the entry footer');
@define('FOOTER_CATEGORIES','Show categories in the entry footer');
@define('FOOTER_TIMESTAMP','Show timestamp in the entry footer');
@define('FOOTER_COMMENTS','Show number of comments in the entry footer');
@define('FOOTER_TRACKBACKS','Show number of trackback in the entry footer');
@define('ALT_COMMTRACK','Use alternate display for number of comments and trackbacks (i.e. "No comments" or "1 comment" instead of "Comments (0)" or "Comments (1)")');
@define('SHOW_ADDTHIS_WIDGET','Show AddThis (http://www.addthis.com) bookmark widget in entry footer');
@define('ADDTHIS_WIDGET_LOC','Location of the AddThis Widget');
@define('ADDTHIS_ACCOUNT','AddThis.com account number.  Not required but will provide statistics about how readers are bookmarking and sharing your content if provided.');
@define('ADDTHIS_TWITTER_VIA','This account will be attributed tweets from AddThis');
@define('ADDTHIS_FACEBOOK_IMAGE','The full URL to an image to show shen sharing links on Facebook');
@define('FACEBOOK_COMMENTS','Show facebook comments.  This will only override posts with no comments.');
@define('FACEBOOK_COMMENT_ADMIN','This is the facebook admin to control facebook comments.  Comma separate multiple userids without spaces.');
@define('SHOW_STICKY_ENTRY_FOOTER','Show entry footer for sticky postings (requires plugin "Extended properties for entries")');
@define('SHOW_STICKY_ENTRY_HEADING','Show entry heading for sticky postings (requires plugin "Extended properties for entries")');
// Page footer next page  and previous page links
@define('PREV_NEXT_STYLE','Show page footer previous page/next page links as');
@define('PREV_NEXT_TEXT','Text only');
@define('PREV_NEXT_TEXT_ICON','Text and icon');
@define('PREV_NEXT_ICON','Icon only');
// coComment support
@define('COCOMMENT_ACTIVE','Integrate coComment (http://www.cocomment.com) into comment form');
// Counter code
@define('COUNTER_CODE', 'Insert code for counter and/or web stat tool');
@define('USE_COUNTER', 'Choose whether to use counter code inserted above');
// Code in the head area
@define('ADDITIONAL_HEAD_CODE', 'Insert additional code in the head.');
@define('USE_ADDITIONAL_HEAD_CODE', 'Choose whether to use the additional code inserted above');
// Leaderboard Code -- inserted at the top of the body
@define('LEADERBOARD_CODE', 'Insert code at the top of the body -- like a leaderboard ad');
@define('USE_LEADERBOARD',  'Choose whether to use the leaderboard code inserted above');
// Additional footer text
@define('FOOTER_TEXT', 'Use this to insert additional text into the page footer');
@define('USE_FOOTER_TEXT', 'Integrate footer text');
//Sitenav
@define('SITENAV_POSITION','Position of the navbar');
@define('SITENAV_NONE','No navbar');
@define('SITENAV_ABOVE','Above the banner');
@define('SITENAV_BELOW','Below the banner');
@define('SITENAV_LEFT','At the top of the left sidebar');
@define('SITENAV_RIGHT','At the top of the right sidebar');
@define('SITENAV_FOOTER','Also show navigation links in the footer (not displayed regardless of choice if "No navbar" is selected above)');
@define('SITENAV_QUICKSEARCH','Show quicksearch in the navbar (only works in navbar above or below banner; quicksearch sidebar item will be suppressed automagically)');
@define('GOOGLESEARCH','Override quicksearch with a google search box.');
@define('GOOGLESEARCH_PARTNER_ID','Partner ID to be published in the search form');
@define('SITENAV_TITLE','Title for navigation menu (only displayed when located at the top of a sidebar)');
@define('SITENAV_TITLE_TEXT','Main menu');
@define('NAVLINK_AMOUNT', 'Enter number of links in the navbar (needs reload of the Manage Styles page)');
@define('NAV_LINK_TEXT', 'Enter the navbar link text');
@define('NAV_LINK_URL', 'Enter the full URL of your link');

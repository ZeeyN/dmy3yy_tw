<?php
$settings['display'] = 'vertical';
$settings['fields'] = array(
    'title' => array(
        'caption' => 'Block',
        'type' => 'text'
    ),
    'legend' => array(
        'caption' => 'Legend for block',
        'type' => 'text'
    )
);
$settings['templates'] = array(
    'outerTpl' => '<div id="templatemo_top_row_wrapper">[+wrapper+]</div>',
    'rowTpl' => '<div id="templatemo_top_row"><div class="top_row_box">
        	<h5>[+title+]</h5>
            <p>[+legend+]</p>
        
        </div>
        </div>'
);
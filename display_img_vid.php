<?php
    $files = glob("images/*.*");
    for ($i = 0; $i < count($files); $i++) {
    $cranberry = $files[$i];
    $supported_file = array(
        'gif',
        'jpg',
        'jpeg',
        'png',
        'webm',
        'webp',
        'mp4'
    );

    $ext = strtolower(pathinfo($cranberry, PATHINFO_EXTENSION));
	
        if ($ext == 'mp4' || $ext == 'webm' ) {
           echo'<iframe src="' . $cranberry . '" alt="" ,width=100px, height=100px></iframe>';
        }else{
           echo '<img src="' . $cranberry . '" alt="" ,width=100px, height=100px />';
        }
    }
?>

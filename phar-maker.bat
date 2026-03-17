<?php /*
@cls
@php -d phar.readonly=0 "%0" "%1"
@goto end rem */
!isset($argv[1]) && die("Usage: $argv[0] your.php");
$filename=$argv[1];
(!preg_match("@\.php@i",$filename) or !file_exists("$filename")) && die("The input file must be an existing PHP file");
$content = file_get_contents("$filename");
$content  = preg_replace('@(;\s*|(;\s*)?\?>\s*)$@i',";__HALT_COMPILER();?>",$content);
$filename = preg_replace('@\.php$@','',$filename);
$phar = new Phar("$filename.phar");
$phar -> startBuffering();
$phar -> setStub($content);
$phar -> addFromString('stub.php', '');
$phar -> stopBuffering();
file_put_contents("$filename.phar.gz",gzencode(file_get_contents("$filename.phar"),9));
file_put_contents("${filename}_ms.php","<?=include'".basename($filename).".phar.gz';");
die("Make success,filename: $filename.phar.gz");
?>
:end

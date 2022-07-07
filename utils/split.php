<?php

function file_split(string $fileName)
{
    if (!file_exists($fileName)) {
        echo 'File not found: ' . $fileName;
        return;
    }

    $fp = fopen($fileName, "r");
    if (!$fp) {
        echo 'Can not open file: ' . $fileName;
        return;
    }

    $fileContent = '';
    while (!feof($fp)) {
        $line = fgets($fp);
        if (0 === strpos($line, '//FILE_START:')) {
            $fileName = trim(explode(':', $line)[1]);
            $fileContent = '';
        } elseif (0 === strpos($line, '//FILE_END')) {
            file_put_contents($fileName, $fileContent);
        } else {
            $fileContent .= $line;
        }
    }
    fclose($fp);
}

if (empty($argv[1])) {
    echo 'Usage: php split.php filename';
    exit;
}
$fileName = realpath($argv[1]);
file_split($fileName);

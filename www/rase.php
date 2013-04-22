<?php
/**
 * Created by IntelliJ IDEA.
 * User: wuyang
 * Date: 13-4-21
 * Time: 下午8:57
 * To change this template use File | Settings | File Templates.
 */

$rase_home = "/home/ielm/rase/";
$rase_version = "5.0.0";
$upload_root = $rase_home . "var/upload/";
$jar_root = $rase_home . "var/lib/";

$files = array("alts", "sim", "ras");

foreach ($files as $file) {
    if ($_FILES[$file]["error"] > 0) {
        echo $_FILES[$file]["name"] . " error, the code is " . $_FILES[$file]["error"] . ".<br>";
        return;
    }
}

foreach ($files as $file) {
    move_uploaded_file($_FILES[$file]["tmp_name"], $upload_root . $_FILES[$file]["name"]);
}

echo "file uploaded<br>";

$ras_args = $_POST["ras_args"];
$repeat = $_POST["repeat"];
$sim_thread = "";
if ($_POST["sim_thread"] != null) {
    $sim_thread = $_POST["sim_thread"];
}

passthru("/usr/bin/javac -cp " . $jar_root . "rase-5.0.0.jar:" . $jar_root . "ssj-2.4.jar " . $upload_root . $_FILES["sim"]["name"], $ret);
if ($ret != 0) {
    return;
}
echo "sim class compiled<br>";

passthru("/usr/bin/javac -cp " . $jar_root . "rase-5.0.0.jar:" . $jar_root . "ssj-2.4.jar " . $upload_root . $_FILES["ras"]["name"], $ret);
if ($ret != 0) {
    return;
}
echo "ras class compiled<br>";

$log_dir = $rase_home . "logs/" . time();
mkdir($log_dir);

$command = $rase_home . "var/bin/headquarters.sh "
    . $upload_root . $_FILES["alts"]["name"] . " "
    . $upload_root . str_replace (".java", ".class", $_FILES["ras"]["name"]) . ' "' . $ras_args . '" '
    . $upload_root . str_replace (".java", ".class", $_FILES["sim"]["name"]) . ' "" '
    . $repeat . " "
    . $log_dir . " "
    . $sim_thread . " &> " . $log_dir . "/out.log &";

echo $command . "<br>";

echo "log dir is: ". $log_dir;

passthru($command);

?>
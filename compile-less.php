<?php
require "lessphp/lessc.inc.php";

// Specify source and target directories.
$source = "less/main.less";
$target = "css/main.css";

try {
  $less = new lessc;
  $less->checkedCompile($source, $target);
} catch (exception $e) {
  echo "FATAL ERROR: " . $e->getMessage();
}
$num = check_plain($_GET['r']) ? check_plain($_GET['r']) : 0;
$num = $num + 1;
echo '<h1>Successfully compiled ' . $source . ' to ' . $target . '</h1>';
echo '<h3>Compiled ' . $num . ' time(s) </h3>';
echo '<h2><a href="compile-less.php?r='. $num .'">&rarr; Reload this page </a></h2>';


function check_plain($text) {
  return htmlspecialchars($text, ENT_QUOTES, 'UTF-8');
}
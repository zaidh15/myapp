<?php
session_start();
unset($_SESSION['MEMBER']);

header('Location:http://localhost/myapp/index.php?hal=home');
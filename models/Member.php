<?php
class Member{
    private $koneksi;

    public function __construct(){
        global $dbh;
        $this->koneksi = $dbh;
    }
    public function cekLogin($data){
        $sql = "select * from member where username = ? and password = SHA1(MD5(?))";

        $ps = $this->koneksi->prepare($sql);
        $ps->execute($data);
        $rs = $ps->fetch();
        return $rs;
    }
}

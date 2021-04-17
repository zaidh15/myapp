<h3>Form Login</h3>
<form method="POST" action="controllers/memberController.php">
  <div class="form-group">
    <label >Username</label>
    <input type="text" name="username"class="form-control" placeholder="Username">
  </div>
  <div class="form-group">
    <label >Password</label>
    <input type="password" class="form-control" name="password" placeholder="Password">
  </div>
  <a href="index.php?hal=home" class="btn btn-secondary">Kembali</a>
  <button type="submit" class="btn btn-primary">Login</button>
</form>
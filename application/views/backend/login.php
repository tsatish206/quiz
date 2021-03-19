<div class="register-box">
  <div class="register-logo">
    <a href=""><b>Admin</b> Login</a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Login</p>
      <p class="login-box-msg red" style="color: red;"><?php echo $this->session->flashdata('error_msg'); ?></p>

      <form action="<?php echo $action;?>" method="POST">
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="username" placeholder="username" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password" placeholder="Password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Login</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->
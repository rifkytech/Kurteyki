<?php $this->load->view('_layouts/header'); ?>
<div class="o-page__card">
    <div class="c-card u-mb-xsmall">
        <header class="c-card__header u-pt-large">
            <div class="c-card__icon">
                <img src="<?php echo base_url('storage/assets/app/img/logo.png') ?>" alt="Dashboard UI Kit">
            </div>
            <h1 class="u-h3 u-text-center u-mb-zero"><?php echo $title ?></h1>
        </header>

        <form class="c-card__body" method="POST">

            <?php $this->load->view('_layouts/alert'); ?>
            
            <div class="c-field u-mb-small">
                <label class="c-field__label">HOST</label> 
                <input required="" name="host" class="c-input" type="text" placeholder="localhost" value="localhost"> 
            </div>

            <div class="c-field u-mb-small">
                <label class="c-field__label">Username</label> 
                <input autofocus="" required="" name="username" class="c-input" type="text" placeholder="Username" value=""> 
            </div>

            <div class="c-field u-mb-small">
                <label class="c-field__label">Password</label> 
                <input required="" name="password" class="c-input" type="text" placeholder="Password" value=""> 
            </div>

            <div class="c-field u-mb-small">
                <label class="c-field__label">Database</label> 
                <input required="" name="database" class="c-input" type="text" placeholder="Database"> 
            </div>

            <div class="c-field u-mb-small">
                <label class="c-field__label">Database Port</label> 
                <input required="" value="3306" name="port" class="c-input" type="text" placeholder="Database Port"> 
            </div>

            <button name="input" class="c-btn c-btn--info" type="submit">Install</button>

        </form>
    </div>

</div>
<?php $this->load->view('_layouts/footer'); ?>

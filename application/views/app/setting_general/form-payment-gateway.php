<div class="c-stage u-m-zero u-border-bottom-zero">
	<div class="c-stage__header o-media u-justify-start">
		<div class="c-stage__icon o-media__img">
			<i class="fa fa-info"></i>
		</div>
		<div class="c-stage__header-title o-media__body">
			<h6 class="u-mb-zero">Midtrans Key</h6>
		</div>
	</div>

	<div class="c-stage__panel u-p-medium row">
		
		<div class="c-field u-mb-medium col-md-12">
			<label class="c-field__label">isProduction</label>
			<select required="" name="status_production" class="c-select select2">
				<option></option>
				<option value="Yes" <?php echo ($site['midtrans']['status_production'] == 'Yes') ? 'selected' : ''; ?>>Yes</option>
				<option value="No" <?php echo ($site['midtrans']['status_production'] == 'No') ? 'selected' : ''; ?>>No</option>
			</select>
		</div>	

		<div class="col-lg-6">
			<div class="c-field u-mb-medium">
				<label class="c-field__label">client_key</label> 
				<input onclick='select()' class="c-input" name="client_key" type="text" placeholder="client_key" value="<?php echo (!empty($site) ? $site['midtrans']['client_key'] : '') ?>"> 
			</div>
		</div>

		<div class="col-lg-6">
			<div class="c-field u-mb-medium">
				<label class="c-field__label">server_key</label> 
				<input onclick='select()' class="c-input" name="server_key" type="text" placeholder="server_key" value="<?php echo (!empty($site) ? $site['midtrans']['server_key'] : '') ?>"> 
			</div>
		</div>

	</div>
</div>
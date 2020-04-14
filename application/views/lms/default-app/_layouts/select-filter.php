<div class="u-ml-auto" style="min-width: 200px">						
	<select id='select-category' class="select2-search" data-placeholder='<?php echo $this->lang->line('select_category') ?>'>
		<option></option>
		<?php
		foreach ($widget['all_category'] as $category_name => $child_category) {

			echo "<optgroup label='".$category_name."'>";

			foreach ($child_category as $category) {
				if (!empty($this->uri->segment(2)) AND $this->uri->segment(2) == $category['slug']) {
					echo "<option value='".$category['url']."' selected>".$category['name']."</option>";
				}else {
					echo "<option value='".$category['url']."'>".$category['name']."</option>";
				}
			}

			echo "</optgroup>";
		}

		?>
	</select>
</div>
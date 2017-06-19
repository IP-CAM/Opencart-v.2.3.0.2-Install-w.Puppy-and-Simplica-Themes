<?php
class ControllerCommonHeaderText extends Controller {
	public function index() {
		$this->load->language('common/headerText');		
		$data['text_pos1'] = $this->language->get('text_pos1');
		$data['text_pos2'] = $this->language->get('text_pos2');
		$data['text_pos3'] = $this->language->get('text_pos3');
		return $this->load->view('common/headerText', $data);
		
	}
}
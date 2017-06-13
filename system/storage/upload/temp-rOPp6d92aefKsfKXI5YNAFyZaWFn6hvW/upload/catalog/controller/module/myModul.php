<?php  
class ControllerModulemymodul extends Controller {
	public function index() {

		$this->load->language('module/mymodul'); //���������� ����� �������� ����
		$data['heading_title'] = $this->language->get('heading_title'); //��������� ���������� heading_title � ������� �� ��������� �����

		$data['content']="��� �������";        //����� ������ ������, ����� � �����������

		$this->load->model('catalog/product'); //���������� ����� ������ �� OpenCart

		$data['product_info']=$this->model_catalog_product->getProduct(42); //���������� ����� ������������ ������, �������� getProduct(42) � ���������� � �������� id  42

		//����������� ��������� ��� ������������ OpenCart, �������� ���� ������������� ������ ��� ������ ������
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/mymodul.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/mymodul.tpl', $data);
		} else {
			return $this->load->view('default/template/module/mymodul.tpl', $data);
		}		

	}
}?>
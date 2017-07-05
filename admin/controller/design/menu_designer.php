<?php
class ControllerDesignMenu_designer extends Controller
{
    private $error = array();

    public function index()
    {
        $this->load->language('design/menu_designer');
        $this->document->setTitle($this->language->get('heading_title'));
        $data['text_test'] = $this->language->get('text_test');
        $this->load->view('design/menu_designer',$data);

    }



}
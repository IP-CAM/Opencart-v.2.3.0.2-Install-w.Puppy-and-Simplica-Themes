<?php
class ModelCatalogInformation extends Model {
	public function getInformation($information_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "information i LEFT JOIN " . DB_PREFIX . "information_description id ON (i.information_id = id.information_id) LEFT JOIN " . DB_PREFIX . "information_to_store i2s ON (i.information_id = i2s.information_id) WHERE i.information_id = '" . (int)$information_id . "' AND id.language_id = '" . (int)$this->config->get('config_language_id') . "' AND i2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND i.status = '1'");

		return $query->row;
	}

	public function getInformations() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "information i LEFT JOIN " . DB_PREFIX . "information_description id ON (i.information_id = id.information_id) LEFT JOIN " . DB_PREFIX . "information_to_store i2s ON (i.information_id = i2s.information_id) WHERE id.language_id = '" . (int)$this->config->get('config_language_id') . "' AND i2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND i.status = '1' ORDER BY i.sort_order, LCASE(id.title) ASC");

		return $query->rows;
	}

	public function getInformationLayoutId($information_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "information_to_layout WHERE information_id = '" . (int)$information_id . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");

		if ($query->num_rows) {
			return $query->row['layout_id'];
		} else {
			return 0;
		}
	}
	public function getInformationPages($SearchTetx){
         if (!empty($SearchTetx)) {
              $words = explode(' ', trim(preg_replace('/\s+/', ' ',$SearchTetx)));
              if($words[0]!=="") {
                  $sql = "SELECT information_id, title FROM " . DB_PREFIX . "information_description" .
                      " WHERE language_id =" . (int)$this->config->get('config_language_id') . " AND (";
                  foreach ($words as $word) {
                      $sql .= "CONCAT_WS('|', `title`, `description`) LIKE '%" . $this->db->escape(utf8_strtolower($word)) . "%'";
                      $sql .= " OR ";
                  }
                  $sql = substr($sql, 0, -4);
                  $sql .= ") GROUP BY information_id;";
                  $query = $this->db->query($sql);
                  return $query->rows;
              }
         }else return NULL;
    }
}
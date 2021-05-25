<?php
/**
 * 
 */
class Model1 extends CI_Model
{
	function insert_model($data)
	{
		return $this->db->insert("login",$data);
	}
	
	function demo_model()
	{
		$qry=$this->db->get("login");
		return $qry->result();
	}
	
	function pdf_mod($id)
	{
		$this->db->where("id",$id);
		$qry=$this->db->get("login");
		return $qry->result();
	}
	
	
}
?>
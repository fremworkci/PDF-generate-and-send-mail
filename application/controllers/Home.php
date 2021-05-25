<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->library('pdf');
	}
	
	public function index()
	{
		$qry["data"]=$this->Model1->demo_model();
		$this->load->view("home",$qry);
	}

	function pdf()
	{
		$id=$_REQUEST["id"];
		$qry=$this->Model1->pdf_mod($id);
		$output="<table></tr>";
		foreach($qry as $row)
		{
			$output.="
					<td>$row->id</td>
					<td>$row->name</td>
					<td>$row->email</td>
			";
		}
		$output.="</tr></table>";
		$this->pdf->loadHtml($output);
		$this->pdf->render();
		$out=$this->pdf->output();
		$filename="docu.pdf";
		//$path=base_url('img/');
		file_put_contents('mail/'.$filename,$out);
		//$this->pdf->stream('doc.pdf',array("Attachment"=>1));
		redirect('Home');
	}
	
	function send_mail()
	{
		$to="theequicomgr8@gmail.com";
		$subject="Work On Mail Library In Codeigniter";
		$from="suman.krgr8@gmail.com";
		$content="<!DOCTYPE html><html><head><title></title></head><body><table border='1'>";
		$content.="<tr><td>";
		$content.="This Is Message Part";
		$content.="</td></tr></body></html>";

		$config["protocol"]='smtp';
		$config["smtp_host"]="ssl://smtp.gmail.com";
		$config["smtp_port"]="465";
		$config["smtp_timeout"]="60";

		$config["smtp_user"]="suman.krgr8@gmail.com";
		$config["smtp_pass"]="cmmmjqdegkilgkpv";

		$config["charset"]="utf-8";
		$config["newline"]="\r\n";
		$config["mailtype"]="html";
		$config["validation"]=TRUE;

		$this->email->initialize($config);
		$this->email->set_mailtype("html");
		$this->email->from($from);
		$this->email->to($to);
		$this->email->subject($subject);
		//$path=base_url('mail/docu.pdf');
		$this->email->attach('mail/docu.pdf');
		$this->email->message($content);
		if($this->email->send())
		{
			echo "success";
		}
		else
		{
			echo "error";
		}

		echo $this->email->print_debugger();
	}
	
	







// function Demo()
// {
// 	$output="<table>";
// 	$qry=$this->Model1->demo_model();
// 	foreach($qry as $row)
// 	{
// 		$output.="<tr>";
// 		$output.="<td>".$row->name."</td>";
// 		$output.="<td>".$row->email."</td>";
// 		$output.="</tr>";
				
// 	}
// 	$output.="</table>";
	
// 	$this->pdf->loadHtml($output);
// 	$this->pdf->render();
// 	$this->pdf->stream("dom.pdf",array("Attachment"=>0));
// }

	
}

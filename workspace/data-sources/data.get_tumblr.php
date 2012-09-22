<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceget_tumblr extends DynamicXMLDatasource{

		public $dsParamROOTELEMENT = 'get-tumblr';
		public $dsParamURL = 'http://clementrenaud.tumblr.com/api/read';
		public $dsParamXPATH = '/';
		public $dsParamCACHE = '30';
		public $dsParamTIMEOUT = '6';
		

		

		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'get-tumblr',
				'author' => array(
					'name' => 'Clément Renaud',
					'website' => 'http://localhost/Sites/clementrenaud.com',
					'email' => 'clement.renaud@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-09-22T15:07:00+00:00'
			);
		}

		public function getSource(){
			return 'dynamic_xml';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

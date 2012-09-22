<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcelanguages extends SectionDatasource{

		public $dsParamROOTELEMENT = 'languages';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = '10';
		public $dsParamSORT = 'system:id';
		public $dsParamHTMLENCODE = 'yes';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'id' => '10',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'title',
				'text',
				'map-location'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Languages',
				'author' => array(
					'name' => 'Clément Renaud',
					'website' => 'http://localhost/Sites/clementrenaud.com',
					'email' => 'clement.renaud@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-09-22T16:02:02+00:00'
			);
		}

		public function getSource(){
			return '8';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcecontact extends SectionDatasource{

		public $dsParamROOTELEMENT = 'contact';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'id' => '9',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
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
				'name' => 'Contact',
				'author' => array(
					'name' => 'Clément Renaud',
					'website' => 'http://localhost/Sites/clementrenaud.com',
					'email' => 'clement.renaud@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-09-22T16:04:19+00:00'
			);
		}

		public function getSource(){
			return '8';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

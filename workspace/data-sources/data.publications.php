<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcepublications extends SectionDatasource{

		public $dsParamROOTELEMENT = 'publications';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';
		

		public $dsParamFILTERS = array(
				'17' => '{$title}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'title',
				'excerpt',
				'link',
				'Editors: name',
				'Editors: url',
				'Editors: presentation',
				'Editors: logo',
				'publi-date',
				'categories: title',
				'categories: description',
				'categories: thumbnail',
				'location',
				'tags'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Publications',
				'author' => array(
					'name' => 'Clément Renaud',
					'website' => 'http://localhost/Sites/clementrenaud.com',
					'email' => 'clement.renaud@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-09-22T14:10:40+00:00'
			);
		}

		public function getSource(){
			return '5';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

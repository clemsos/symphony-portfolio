<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceprojects_all extends SectionDatasource{

		public $dsParamROOTELEMENT = 'projects-all';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';
		

		public $dsParamFILTERS = array(
				'id' => '{$title}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'title',
				'description',
				'fellows: name',
				'fellows: bio',
				'fellows: links: service',
				'fellows: links: url',
				'fellows: links: icon',
				'fellows: links: description',
				'fellows: avatar',
				'date',
				'location',
				'links: service',
				'links: url',
				'links: icon',
				'links: description',
				'tags',
				'categories: title',
				'categories: description',
				'categories: thumbnail'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Projects All',
				'author' => array(
					'name' => 'Clément Renaud',
					'website' => 'http://localhost/Sites/clementrenaud.com',
					'email' => 'clement.renaud@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-09-22T13:59:03+00:00'
			);
		}

		public function getSource(){
			return '1';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

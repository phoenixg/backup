<?php

class Country extends DataMapper {

    var $table = 'countries';

    var $has_many = array('user');

    var $validation = array(
        'name' => array(
            'label' => 'Country',
            'rules' => array('required', 'trim', 'unique', 'alpha_dash', 'min_length' => 1, 'max_length' => 50),
        ));
}

/* End of file country.php */
/* Location: ./application/models/country.php */
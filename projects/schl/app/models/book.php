<?php

class Book extends DataMapper {

    var $has_many = array('user');

    var $validation = array(
        'title' => array(
            'label' => 'Title',
            'rules' => array('required', 'trim', 'unique', 'alpha_dash', 'min_length' => 1, 'max_length' => 50),
        ),
        'description' => array(
            'label' => 'Description',
            'rules' => array('required', 'trim', 'alpha_slash_dot', 'min_length' => 10, 'max_length' => 200),
        ),
        'year' => array(
            'label' => 'Year',
            'rules' => array('required', 'trim', 'numeric', 'exact_length' => 4),
        )
    );
}

/* End of file book.php */
/* Location: ./application/models/book.php */
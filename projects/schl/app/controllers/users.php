<?php

class Users extends MY_Controller {

    function Users()
    {
        parent::__construct();
    }

    function index()
    {
        // Let's create a user
        $u = new User();
        $u->username = 'Fred Smith';
        $u->password = 'apples';
        $u->email = 'fred@smith.com';

        // And save them to the database (validation rules will run)
        if ($u->save())
        {
            // User object now has an ID
            echo 'ID: ' . $u->id . '<br />';
            echo 'Username: ' . $u->username . '<br />';
            echo 'Email: ' . $u->email . '<br />';

            // Not that we'd normally show the password, but when we do, you'll see it has been automatically encrypted
            // since the User model is setup with an encrypt rule in the $validation array for the password field
            echo 'Password: ' . $u->password . '<br />';
        }
        else
        {
            // If validation fails, we can show the error for each property
            echo $u->error->username;
            echo $u->error->password;
            echo $u->error->email;

            // or we can loop through the error's all list
            foreach ($u->error->all as $error)
            {
                echo $error;
            }

            // or we can just show all errors in one string!
            echo $u->error->string;

            // Each individual error is automatically wrapped with an error_prefix and error_suffix, which you can change (default: <p>error message</p>)
        }

        // Let's now get the first 5 books from our database
        $b = new Book();
        $b->limit(5)->get();

        // Let's look at the first book
        echo 'ID: ' . $b->id . '<br />';
        echo 'Name: ' . $b->title . '<br />';
        echo 'Description: ' . $b->description . '<br />';
        echo 'Year: ' . $b->year . '<br />';

        // Now let's look through all of them
        foreach ($b as $book)
        {
            echo 'ID: ' . $book->id . '<br />';
            echo 'Name: ' . $book->title . '<br />';
            echo 'Description: ' . $book->description . '<br />';
            echo 'Year: ' . $book->year . '<br />';
            echo '<br />';
        }

        // Let's relate the user to these books
        $u->save($b->all);

        // Yes, it's as simple as that!  You can add relations in several ways, even different types of relations at the same time

        // Get the Country with an ID of 10
        $c = new Country();
        $c->where('id', 10)->get();

        // Get all Books from the year 2000
        $b = new Book();
        $b->where('year', 2000)->get();

        // Relate the user to them
        $u->save(array($c, $b->all));

        // Now let's access those relations from the user

        // First we'll get all related books
        $u->book->get();

        // You can just show the first related book
        echo 'ID: ' . $u->book->id . '<br />';
        echo 'Name: ' . $u->book->title . '<br />';
        echo 'Description: ' . $u->book->description . '<br />';
        echo 'Year: ' . $u->book->year . '<br />';

        // Or if you're expecting more than one, which we are, loop through all the books!
        foreach ($u->book as $book)
        {
            echo 'ID: ' . $book->id . '<br />';
            echo 'Name: ' . $book->title . '<br />';
            echo 'Description: ' . $book->description . '<br />';
            echo 'Year: ' . $book->year . '<br />';
            echo '<br />';

            // And there's no need to stop there,
            // we can see what other users are related to each book! (and you can chain the get() of related users if you don't want to do it on its own, before the loop)
            foreach ($book->user->get() as $user)
            {
                // Show user if it's not the original user as we want to show him the other users
                if ($user->id != $u->id)
                {
                    echo 'User ' . $user->username . ' also likes this book<br >';
                }
            }
        }

        // We know there was only one country so we'll access the first record rather than loop through $u->country->all

        // Get related country
        $u->country->get();

        echo 'User is from Country: ' . $u->country->name . '<br />';

        // One of the great things about related records is that they're only loaded when you access them!

        // Lets say the user no longer likes the first book from his year 2000 list, removing that relation is as easy as adding one!

        // This will remove the users relation to the first record in the $b object (supplying $b->all would remove relations to all books in the books current all list)
        $u->delete($b);

        // You can delete multiple relations of different types in the same way you can save them

        // Now that we're done with the user, let's delete him
        $u->delete();

        // When you delete the user, you delete all his relations with other objects.  DataMapper does all the tidying up for you :)
    }

    function register()
    {
        // Create user object
        $u = new User();

        // Put user supplied data into user object
        // (no need to validate the post variables in the controller,
        // if you've set your DataMapper models up with validation rules)
        $u->username = $this->input->post('username');
        $u->password = $this->input->post('password');
        $u->confirm_password = $this->input->post('confirm_password');
        $u->email = $this->input->post('email');

        // Attempt to save the user into the database
        if ($u->save())
        {
            echo '<p>You have successfully registered</p>';
        }
        else
        {
            // Show all error messages
            echo '<p>' . $u->error->string . '</p>';
        }
    }

    function login()
    {
        // Create user object
        $u = new User();

        // Put user supplied data into user object
        // (no need to validate the post variables in the controller,
        // if you've set your DataMapper models up with validation rules)
        $u->username = $this->input->post('username');
        $u->password = $this->input->post('password');

        // Attempt to log user in with the data they supplied, using the login function setup in the User model
        // You might want to have a quick look at that login function up the top of this page to see how it authenticates the user
        if ($u->login())
        {
            echo '<p>Welcome ' . $u->username . '!</p>';
            echo '<p>You have successfully logged in so now we know that your email is ' . $u->email . '.</p>';
        }
        else
        {
            // Show the custom login error message
            echo '<p>' . $u->error->login . '</p>';
        }
    }
}

/* End of file users.php */
/* Location: ./application/controllers/users.php */
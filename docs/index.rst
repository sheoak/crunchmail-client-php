.. title:: Crunchmail PHP Client

========================
Crunchmail Documentation
========================

Crunchmail PHP Client is a library to help you easily request the Crunchmail
API. It is based on *Guzzle* library.

.. code-block:: php

    // configuration, in guzzle format
    $config = array(
        'base_uri'    => 'https://api.crunchmail.me/v1/',
        'client_uri'  => '/customers/99999999/',
        'auth'        => array( 'api', 'key-super-secret-key' )
    );

    $client = new Crunchmail\Client($config);
    $messages = $client->messages->get();

    foreach ($messages->current() as $message)
    {
        echo "Title = " . $message->title . PHP_EOL;
    }


User Guide
==========

.. toctree::
    :maxdepth: 3

    overview
    quickstart
    client
    resources
    collections
    entities
    errors
    faq

<?php

class database
{

    protected $host;
    protected $username;
    protected $password;
    protected $db;
    protected $port;
    protected $_mysqli;
    protected $_query;

    public function __construct($host = null, $username = null, $password = null, $database = null, $port = null)
    {
        // Load environment variables from .env file
        loadEnv(__DIR__ . '/../../env');

        // Use environment variables if not provided as parameters
        $this->host = $host ?? $_ENV['DB_HOST'];
        $this->username = $username ?? $_ENV['DB_USERNAME'];
        $this->password = $password ?? $_ENV['DB_PASSWORD'];
        $this->db = $database ?? $_ENV['DB_DATABASE'];
        $this->port = $port ?? $_ENV['DB_PORT'];

        // Establish the database connection
        $this->connection();
    }


    public function connection()
    {
        $this->_mysqli = new mysqli($this->host, $this->username, $this->password, $this->db, $this->port) or die('There was a problem connecting to the database');
        $this->_mysqli->set_charset('utf8');
    }

    public function real_escape($string)
    {
        return $this->_mysqli->real_escape_string(stripslashes(addslashes(str_replace("'", "", "$string"))));
    }

    public function select($query)
    {
        $result = $this->_mysqli->query($query);
        if ($result) {
            if ($result->num_rows > 0) {
                return $result;
            } else {
                return false;
            }
        }
    }

    public function insert($query)
    {
        $this->_mysqli->query($query);
        return $this->_mysqli->insert_id;
    }

    public function update($query)
    {
        // return $query;
        $this->_mysqli->query($query);
    }

    public function delete($query)
    {
        // return $query;
        $this->_mysqli->query($query);
    }

    public function rawData($query)
    {
        $result = $this->_mysqli->query($query);
        if ($result) {
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
                    $data[] = $row;
                }
                return $data;
            } else {
                return false;
            }
        }

    }


}

?>
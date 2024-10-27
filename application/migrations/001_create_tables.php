<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Create_Tables extends CI_Migration {

    public function up() {
        // Create ci_sessions table
        $this->dbforge->add_field(array(
            'id' => array(
                'type' => 'VARCHAR',
                'constraint' => 40,
            ),
            'ip_address' => array(
                'type' => 'VARCHAR',
                'constraint' => 45,
            ),
            'timestamp' => array(
                'type' => 'INT',
                'constraint' => 10,
                'unsigned' => TRUE,
                'default' => 0,
            ),
            'data' => array(
                'type' => 'BLOB',
            ),
        ));
        $this->dbforge->create_table('ci_sessions', TRUE);

        // Create email_archive table
        $this->dbforge->add_field(array(
            'id' => array(
                'type' => 'INT',
                'constraint' => 10,
                'unsigned' => TRUE,
            ),
            'to' => array(
                'type' => 'TEXT',
            ),
            'bcc' => array(
                'type' => 'TEXT',
            ),
            'subject' => array(
                'type' => 'TEXT',
            ),
            'message' => array(
                'type' => 'BLOB',
            ),
            'headers' => array(
                'type' => 'BLOB',
            ),
            'data' => array(
                'type' => 'MEDIUMBLOB',
            ),
            'failed' => array(
                'type' => 'INT',
                'constraint' => 11,
                'default' => 0,
            ),
            'created_at' => array(
                'type' => 'TIMESTAMP',
                'default' => 'CURRENT_TIMESTAMP',
            ),
        ));
        $this->dbforge->create_table('email_archive', TRUE);

        // Create email_queue table
        $this->dbforge->add_field(array(
            'id' => array(
                'type' => 'INT',
                'constraint' => 10,
                'unsigned' => TRUE,
            ),
            'to' => array(
                'type' => 'TEXT',
            ),
            'bcc' => array(
                'type' => 'TEXT',
            ),
            'subject' => array(
                'type' => 'TEXT',
            ),
            'message' => array(
                'type' => 'BLOB',
            ),
            'headers' => array(
                'type' => 'BLOB',
            ),
            'data' => array(
                'type' => 'MEDIUMBLOB',
            ),
            'failed' => array(
                'type' => 'INT',
                'constraint' => 11,
                'default' => 0,
            ),
            'created_at' => array(
                'type' => 'TIMESTAMP',
                'default' => 'CURRENT_TIMESTAMP',
            ),
        ));
        $this->dbforge->create_table('email_queue', TRUE);

        // Create language table
        $this->dbforge->add_field(array(
            'phrase_id' => array(
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => TRUE,
            ),
            'phrase' => array(
                'type' => 'LONGTEXT',
                'null' => TRUE,
            ),
            'english' => array(
                'type' => 'LONGTEXT',
                'null' => TRUE,
            ),
            // Add other language fields...
            'korean' => array(
                'type' => 'LONGTEXT',
                'null' => TRUE,
            ),
        ));
        $this->dbforge->add_key('phrase_id', TRUE);
        $this->dbforge->create_table('language', TRUE);

        // Create role table
        $this->dbforge->add_field(array(
            'id' => array(
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => TRUE,
            ),
            'name' => array(
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => TRUE,
            ),
            'date_added' => array(
                'type' => 'INT',
                'constraint' => 11,
                'null' => TRUE,
            ),
            'last_modified' => array(
                'type' => 'INT',
                'constraint' => 11,
                'null' => TRUE,
            ),
        ));
        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->create_table('role', TRUE);

        // Create settings table
        $this->dbforge->add_field(array(
            'id' => array(
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => TRUE,
            ),
            'key' => array(
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => TRUE,
            ),
            'value' => array(
                'type' => 'LONGTEXT',
                'null' => TRUE,
            ),
        ));
        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->create_table('settings', TRUE);

        // Create tenants table
        $this->dbforge->add_field(array(
            'id' => array(
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => TRUE,
            ),
            'name' => array(
                'type' => 'VARCHAR',
                'constraint' => 100,
            ),
            'domain' => array(
                'type' => 'VARCHAR',
                'constraint' => 255,
            ),
            'hostname' => array(
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => TRUE,
            ),
            'username' => array(
                'type' => 'VARCHAR',
                'constraint' => 100,
                'null' => TRUE,
            ),
            'password' => array(
                'type' => 'VARCHAR',
                'constraint' => 100,
                'null' => TRUE,
            ),
            'database_name' => array(
                'type' => 'VARCHAR',
                'constraint' => 100,
                'null' => TRUE,
            ),
            'use_db' => array(
                'type' => 'ENUM',
                'constraint' => ['0', '1'],
                'default' => '0',
            ),
            'created_at' => array(
                'type' => 'TIMESTAMP',
                'default' => 'CURRENT_TIMESTAMP',
            ),
            'updated_at' => array(
                'type' => 'TIMESTAMP',
                'default' => 'CURRENT_TIMESTAMP',
                'on_update' => TRUE,
            ),
        ));
        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->add_key('domain', TRUE, TRUE); // Unique key for domain
        $this->dbforge->create_table('tenants', TRUE);

        // Create users table
        $this->dbforge->add_field(array(
            'id' => array(
                'type' => 'BIGINT',
                'constraint' => 10,
            ),
            'oauth_provider' => array(
                'type' => 'ENUM',
                'constraint' => ['', 'facebook', 'google', 'twitter'],
            ),
            'oauth_uid' => array(
                'type' => 'VARCHAR',
                'constraint' => 100,
            ),
            'first_name' => array(
                'type' => 'VARCHAR',
                'constraint' => 50,
            ),
            'last_name' => array(
                'type' => 'VARCHAR',
                'constraint' => 50,
            ),
            'email' => array(
                'type' => 'VARCHAR',
                'constraint' => 100,
            ),
            'password' => array(
                'type' => 'VARCHAR',
                'constraint' => 255,
            ),
            'gender' => array(
                'type' => 'ENUM',
                'constraint' => ['Male', 'Female'],
            ),
            'phone' => array(
                'type' => 'VARCHAR',
                'constraint' => 15,
            ),
            'picture' => array(
                'type' => 'VARCHAR',
                'constraint' => 255,
            ),
            'address' => array(
                'type' => 'TEXT',
            ),
            'link' => array(
                'type' => 'VARCHAR',
                'constraint' => 255,
            ),
            'activation_code' => array(
                'type' => 'VARCHAR',
                'constraint' => 50,
            ),
            'forgot_pass_identity' => array(
                'type' => 'VARCHAR',
                'constraint' => 36,
            ),
            'activated' => array(
                'type' => 'ENUM',
                'constraint' => ['0', '1'],
                'default' => '0',
            ),
            'created_at' => array(
                'type' => 'TIMESTAMP',
                'default' => 'CURRENT_TIMESTAMP',
            ),
            'updated_at' => array(
                'type' => 'TIMESTAMP',
                'default' => 'CURRENT_TIMESTAMP',
                'on_update' => TRUE,
            ),
        ));
        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->create_table('users', TRUE);
    }

    public function down() {
        $this->dbforge->drop_table('ci_sessions', TRUE);
        $this->dbforge->drop_table('email_archive', TRUE);
        $this->dbforge->drop_table('email_queue', TRUE);
        $this->dbforge->drop_table('language', TRUE);
        $this->dbforge->drop_table('role', TRUE);
        $this->dbforge->drop_table('settings', TRUE);
        $this->dbforge->drop_table('tenants', TRUE);
        $this->dbforge->drop_table('users', TRUE);
    }
}

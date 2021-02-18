<?php

/**
 * This function is called on installation and is used to create database schema for the plugin
 */
function extension_install_wsusupdate()
{
    $commonObject = new ExtensionCommon;

    // Drop table first
    $commonObject -> sqlQuery("DROP TABLE `wsusupdate`;");

    $commonObject -> sqlQuery("CREATE TABLE `wsusupdate` (
                                `ID` INT(11) NOT NULL AUTO_INCREMENT,
                                `HARDWARE_ID` INT(11) NOT NULL,
                                `CSNAME` VARCHAR(255) DEFAULT NULL,
                                `CAPTION` VARCHAR(255) DEFAULT NULL,
                                `DESCRIPTION` VARCHAR(255) DEFAULT NULL,
                                `HOTFIXID` VARCHAR(255) DEFAULT NULL,
                                `INSTALLEDON` VARCHAR(255) DEFAULT NULL,
                                PRIMARY KEY  (`ID`,`HARDWARE_ID`)
                             ) ENGINE=InnoDB ;");
}

/**
 * This function is called on removal and is used to destroy database schema for the plugin
 */
function extension_delete_wsusupdate()
{
    $commonObject = new ExtensionCommon;
    $commonObject -> sqlQuery("DROP TABLE `wsusupdate`;");
}

/**
 * This function is called on plugin upgrade
 */
function extension_upgrade_wsusupdate()
{

}

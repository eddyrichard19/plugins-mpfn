<?php

/**
 * This function is called on installation and is used to create database schema for the plugin
 */
function extension_install_aplicativosmpfn()
{
    $commonObject = new ExtensionCommon;

    // Drop table first
    $commonObject -> sqlQuery("DROP TABLE `aplicativosmpfn`;");

    $commonObject -> sqlQuery("CREATE TABLE `aplicativosmpfn` (
                                `ID` INT(11) NOT NULL AUTO_INCREMENT,
                                `HARDWARE_ID` INT(11) NOT NULL,
                                `CAPTION` VARCHAR(255) DEFAULT NULL,
                                `PUBLISHER` VARCHAR(255) DEFAULT NULL,
                                `NAMEMP` VARCHAR(255) DEFAULT NULL,
                                `VERSION` VARCHAR(255) DEFAULT NULL,
                                `FOLDER` VARCHAR(255) DEFAULT NULL,
                                `FILENAME` VARCHAR(255) DEFAULT NULL,
                                `LASTMODIFIED` VARCHAR(255) DEFAULT NULL,
                                `DATEPLUGIN` VARCHAR(255) DEFAULT NULL,
                                PRIMARY KEY  (`ID`,`HARDWARE_ID`)
                             ) ENGINE=InnoDB ;");
}

/**
 * This function is called on removal and is used to destroy database schema for the plugin
 */
function extension_delete_aplicativosmpfn()
{
    $commonObject = new ExtensionCommon;
    $commonObject -> sqlQuery("DROP TABLE `aplicativosmpfn`;");
}

/**
 * This function is called on plugin upgrade
 */
function extension_upgrade_aplicativosmpfn()
{

}

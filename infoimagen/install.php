<?php

/**
 * This function is called on installation and is used to create database schema for the plugin
 */
function extension_install_infoimagen()
{
    $commonObject = new ExtensionCommon;

    // Drop table first
    $commonObject -> sqlQuery("DROP TABLE `infoimagen`;");

    $commonObject -> sqlQuery("CREATE TABLE `infoimagen` (
                                `ID` INT(11) NOT NULL AUTO_INCREMENT,
                                `HARDWARE_ID` INT(11) NOT NULL,
                                `CAPTION` VARCHAR(255) DEFAULT NULL,
                                `MARCA` VARCHAR(255) DEFAULT NULL,
                                `MODELO` VARCHAR(255) DEFAULT NULL,
                                `VERSIONIMAG` VARCHAR(255) DEFAULT NULL,
                                `SEDE` VARCHAR(255) DEFAULT NULL,
                                `CERT` VARCHAR(255) DEFAULT NULL,
                                `MSOFFICEIMAG` VARCHAR(255) DEFAULT NULL,
                                `UPDATEIMAG` VARCHAR(255) DEFAULT NULL,
                                `RESTOREIMAG` VARCHAR(255) DEFAULT NULL,
                                `DATEPLUGIN` VARCHAR(255) DEFAULT NULL,
                                PRIMARY KEY  (`ID`,`HARDWARE_ID`)
                             ) ENGINE=InnoDB ;");
}

/**
 * This function is called on removal and is used to destroy database schema for the plugin
 */
function extension_delete_infoimagen()
{
    $commonObject = new ExtensionCommon;
    $commonObject -> sqlQuery("DROP TABLE `infoimagen`;");
}

/**
 * This function is called on plugin upgrade
 */
function extension_upgrade_infoimagen()
{

}

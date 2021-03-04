<?php

/**
 * This function is called on installation and is used to create database schema for the plugin
 */
function extension_install_infoimagen()
{
    $commonObject = new ExtensionCommon;

    // Drop table first
    $commonObject -> sqlQuery("DROP TABLE `versionimagen`;");

    $commonObject -> sqlQuery("CREATE TABLE `versionimagen` (
                                `ID` INT(11) NOT NULL AUTO_INCREMENT,
                                `HARDWARE_ID` INT(11) NOT NULL,
                                `PUBLISHER` VARCHAR(255) DEFAULT NULL,
                                `NAME` VARCHAR(255) DEFAULT NULL,
                                `VERSION` VARCHAR(255) DEFAULT NULL,
                                `FOLDER` VARCHAR(255) DEFAULT NULL,
                                `UPDATE` VARCHAR(255) DEFAULT NULL,
                                `SEDE` VARCHAR(255) DEFAULT NULL,
                                `INSTALLEDON` VARCHAR(255) DEFAULT NULL,
                                PRIMARY KEY  (`ID`,`HARDWARE_ID`)
                             ) ENGINE=InnoDB ;");
}

/**
 * This function is called on removal and is used to destroy database schema for the plugin
 */
function extension_delete_infoimagen()
{
    $commonObject = new ExtensionCommon;
    $commonObject -> sqlQuery("DROP TABLE `versionimagen`;");
}

/**
 * This function is called on plugin upgrade
 */
function extension_upgrade_infoimagen()
{

}

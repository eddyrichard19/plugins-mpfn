<?php

/**
 * This function is called on installation and is used to create database schema for the plugin
 */
function extension_install_wsusstatus()
{
    $commonObject = new ExtensionCommon;

    // Drop table first
    $commonObject -> sqlQuery("DROP TABLE `wsusstatus`;");

    $commonObject -> sqlQuery("CREATE TABLE `wsusstatus` (
                            `ID` INT(11) NOT NULL AUTO_INCREMENT,
                            `HARDWARE_ID` INT(11) NOT NULL,
                            `PUBLISHER` VARCHAR(255) DEFAULT NULL,
                            `WSUSSTATUS` VARCHAR(255) DEFAULT NULL,
                            `WSUSSERVER` VARCHAR(255) DEFAULT NULL,
                            `TARGETGROUP` VARCHAR(255) DEFAULT NULL,
                            `DATEPLUGIN` VARCHAR(255) DEFAULT NULL,
                             PRIMARY KEY  (`ID`,`HARDWARE_ID`)
                             ) ENGINE=InnoDB ;");
}

/**
 * This function is called on removal and is used to destroy database schema for the plugin
 */
function extension_delete_wsusstatus()
{
    $commonObject = new ExtensionCommon;
    $commonObject -> sqlQuery("DROP TABLE `wsusstatus`;");
}

/**
 * This function is called on plugin upgrade
 */
function extension_upgrade_wsusstatus()
{

}

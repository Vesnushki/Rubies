@ECHO OFF
SET BIN_TARGET=%~dp0/../vendor/irs/behat-magento-extension/bin/magento
php "%BIN_TARGET%" %*

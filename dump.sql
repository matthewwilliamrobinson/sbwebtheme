UPDATE ps_configuration
    SET value = 1170
    WHERE name = "HOMESLIDER_WIDTH";

UPDATE ps_themeconfigurator
    SET active = 0
    WHERE hook = "top";

DELETE ps_module_shop
    FROM ps_module_shop
    INNER JOIN ps_module
    ON ps_module_shop.id_module = ps_module.id_module
    WHERE name = 'blockcmsinfo';

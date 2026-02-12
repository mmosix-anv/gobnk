UPDATE `settings`
SET `sms_config` = JSON_SET(
    COALESCE(`sms_config`, '{}'),
    '$.name', 'gatewayapi',
    '$.gatewayapi', JSON_OBJECT(
        'token', '-----',
        'base_url', 'https://gatewayapi.com',
        'auth', 'token'
    )
)
WHERE `id` = 1;

UPDATE `settings`
SET `sa` = 1
WHERE `id` = 1;

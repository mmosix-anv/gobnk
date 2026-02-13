UPDATE `settings`
SET `sms_config` = JSON_SET(
    COALESCE(`sms_config`, '{}'),
    '$.name', 'seven',
    '$.seven', JSON_OBJECT(
        'api_key', '-----',
        'base_url', 'https://gateway.seven.io'
    )
)
WHERE `id` = 1;

UPDATE `settings`
SET `sa` = 1
WHERE `id` = 1;

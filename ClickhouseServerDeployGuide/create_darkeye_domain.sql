CREATE TABLE IF NOT EXISTS `ch_db`.`darkeye_domain`
(
    `id`                       Int32,
    `created`                  DateTime64(6),
    `modified`                 DateTime64(6),
    `host`                     Nullable(String),
    `port`                     Int32,
    `ssl`                      Int8,
    `url`                      Nullable(String),
    `headers`                  String,
    `title`                    Nullable(String),
    `language`                 Nullable(String),
    `meta_description`         Nullable(String),
    `content`                  Nullable(String),
    `is_alive`                 Int8,
    `is_fake`                  Int8,
    `last_alive`               Nullable(DateTime64(6)),
    `info_gather_alive_number` UInt32,
    `info_gather_run_number`   UInt32,
    `version`                  UInt16,
    `cleannet_hosts`           String,
    `favicon_base64`           Nullable(String),
    `favicon_hash`             Nullable(String),
    `favicon_md5_hash`         Nullable(String),
    `mark`                     Nullable(String),
    `weight`                   Int32,
    `source`                   String
)
    ENGINE = MergeTree()
        ORDER BY (id)
        PRIMARY KEY id
        SETTINGS index_granularity = 8192;


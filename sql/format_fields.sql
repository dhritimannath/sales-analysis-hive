
-- Format `age` field values [ remove `-` symbol ] and set the formated value to `min_age` and `max_field` field
UPDATE `black_friday` SET
    `min_age` = IF(
        LOCATE('-', `age`) > 0,
        SUBSTRING(`age`, 1, LOCATE('-', `age`) - 1),
        `age`
    ),
    `max_age` = IF(
        LOCATE('-', `age`) > 0,
        SUBSTRING(`age`, LOCATE('-', `age`) + 1),
        NULL
);


-- Format `age` field values [ remove `+` symbol ] and set the formated value to `min_age` field
UPDATE `black_friday` SET
    `min_age` = IF(
        LOCATE('+', `age`) > 0,
         SUBSTRING(`age`, 1, LOCATE('+', `age`) - 1),
        `age`
) FROM `age` WHERE `age` LIKE '%+';


-- Format `stay_in_current_city_years` field values [ remove `+` symbol ]
UPDATE `black_friday` SET
    `stay_in_current_city_years_formatted` = IF(
        LOCATE('+', `stay_in_current_city_years`) > 0,
         SUBSTRING(`stay_in_current_city_years`, 1, LOCATE('+', `stay_in_current_city_years`) - 1),
        `stay_in_current_city_years`
);

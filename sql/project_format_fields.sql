-- Additional queries for projection 
SELECT IF(
        LOCATE('-', `age`) > 0,
        SUBSTRING(`age`, 1, LOCATE('-', `age`) - 1),
        `age`
    ) AS first,
    IF(
        LOCATE('-', `age`) > 0,
        SUBSTRING(`age`, LOCATE('-', `age`) + 1),
        NULL
    )
FROM `black_friday`;


SELECT IF(
         LOCATE('+', `age`) > 0,
         SUBSTRING(`age`, 1, LOCATE('+', `age`) - 1),
        `age`
    ) AS first
FROM `age` WHERE `age` LIKE '%+';
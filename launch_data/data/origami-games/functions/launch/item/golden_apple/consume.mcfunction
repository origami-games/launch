#consume golden apple
#@s - players consumed golden apple
#rewarded by advancement item/consume_golden_apple

#instant health if winter
execute if score season lch_data matches 4 run effect give @s instant_health 1 0

#revoke advancement
advancement revoke @s only item/golden_apple/consume

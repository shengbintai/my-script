create_hw_axi_txn wr_txn1 [get_hw_axis hw_axi_1] -address 60000000 -data {11111111_22222222_33333333_44444444_55555555_66666666_77777777_88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn2 [get_hw_axis hw_axi_1] -address 60000400 -data {11111111} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn3 [get_hw_axis hw_axi_1] -address 60000800 -data {88888888} -len 218 -size 32 -type write
create_hw_axi_txn wr_txn4 [get_hw_axis hw_axi_1] -address 60000e02 -data {88888888} -len 256 -size 32 -type write

delete_hw_axi_txn wr_txn1
delete_hw_axi_txn wr_txn2
delete_hw_axi_txn wr_txn3

run_hw_axi wr_txn1 wr_txn2 wr_txn3



create_hw_axi_txn wr_txn0  [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn1  [get_hw_axis hw_axi_1] -address 60200000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn2  [get_hw_axis hw_axi_1] -address 60300000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn3  [get_hw_axis hw_axi_1] -address 60400000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn4  [get_hw_axis hw_axi_1] -address 60500000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn5  [get_hw_axis hw_axi_1] -address 60600000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn6  [get_hw_axis hw_axi_1] -address 60700000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn7  [get_hw_axis hw_axi_1] -address 60800000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn8  [get_hw_axis hw_axi_1] -address 60900000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn9  [get_hw_axis hw_axi_1] -address 60a00000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn10 [get_hw_axis hw_axi_1] -address 60b00000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn11 [get_hw_axis hw_axi_1] -address 60c00000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn12 [get_hw_axis hw_axi_1] -address 60d00000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn13 [get_hw_axis hw_axi_1] -address 60e00000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn14 [get_hw_axis hw_axi_1] -address 60f00000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn15 [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn16 [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn17 [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn18 [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn19 [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn20 [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn21 [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn22 [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn23 [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn24 [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write
create_hw_axi_txn wr_txn25 [get_hw_axis hw_axi_1] -address 60100000 -data {88888888} -len 256 -size 32 -type write

create_hw_axi_txn wr_txn2 [get_hw_axis hw_axi_1] -address 60000000 -data {11111111\
    22222222 \
    33333333 \
    44444444 \
    55555555 \
    66666666 \
    77777777 \
    88888888 \
    99999999 \
} -len 256 -size 32 -type write

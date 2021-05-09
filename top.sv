module top(
    input wire [1:0] key_n,

    output wire [7:0] led,

    input wire [3:0] dip_switch,

    output wire [12:0] dram_addr,
    inout wire [15:0] dram_dq,
    output wire [1:0] dram_ba,
    output wire [1:0] dram_dqm,
    output wire dram_ras_n,
    output wire dram_cas_n,
    output wire dram_cke,
    output wire dram_clk,
    output wire dram_we_n,
    output wire dram_cs_n,

    output wire i2c_sclk,
    inout wire i2c_sdat,

    input wire gpio_0_in0,
    inout wire gpio_00,
    input wire gpio_0_in1,
    inout wire gpio_01,
    inout wire gpio_02,
    inout wire gpio_03,
    inout wire gpio_04,
    inout wire gpio_05,
    inout wire gpio_06,
    inout wire gpio_07,
    inout wire gpio_08,
    inout wire gpio_09,
    inout wire gpio_010,
    inout wire gpio_011,
    inout wire gpio_012,
    inout wire gpio_013,
    inout wire gpio_014,
    inout wire gpio_015,
    inout wire gpio_016,
    inout wire gpio_017,
    inout wire gpio_018,
    inout wire gpio_019,
    inout wire gpio_020,
    inout wire gpio_021,
    inout wire gpio_022,
    inout wire gpio_023,
    inout wire gpio_024,
    inout wire gpio_025,
    inout wire gpio_026,
    inout wire gpio_027,
    inout wire gpio_028,
    inout wire gpio_029,
    inout wire gpio_030,
    inout wire gpio_031,
    inout wire gpio_032,
    inout wire gpio_033,
    input wire gpio_1_in0,
    inout wire gpio_10,
    input wire gpio_1_in1,
    inout wire gpio_11,
    inout wire gpio_12,
    inout wire gpio_13,
    inout wire gpio_14,
    inout wire gpio_15,
    inout wire gpio_16,
    inout wire gpio_17,
    inout wire gpio_18,
    inout wire gpio_19,
    inout wire gpio_110,
    inout wire gpio_111,
    inout wire gpio_112,
    inout wire gpio_113,
    inout wire gpio_114,
    inout wire gpio_115,
    inout wire gpio_116,
    inout wire gpio_117,
    inout wire gpio_118,
    inout wire gpio_119,
    inout wire gpio_120,
    inout wire gpio_121,
    inout wire gpio_122,
    inout wire gpio_123,
    inout wire gpio_124,
    inout wire gpio_125,
    inout wire gpio_126,
    inout wire gpio_127,
    inout wire gpio_128,
    inout wire gpio_129,
    inout wire gpio_130,
    inout wire gpio_131,
    inout wire gpio_132,
    inout wire gpio_133,

    inout wire [12:0] gpio_2,
    input wire [2:0] gpio_2_in,

    output wire adc_cs_n,
    output wire adc_saddr,
    input wire adc_sdat,
    output wire adc_sclk,

    input wire g_sensor_int,
    output wire g_sensor_cs_n,

    input wire clock_50
);

    var bit [7:0] count = 0;
    wire logic [1:0] key = ~key_n;

    assign led = count;

    assign dram_addr = 'z;
    assign dram_dq = 'z;
    assign dram_ba = 'z;
    assign dram_dqm = 'z;
    assign dram_ras_n = 'z;
    assign dram_cas_n = 'z;
    assign dram_cke = 'z;
    assign dram_clk = 'z;
    assign dram_we_n = 'z;
    assign dram_cs_n = 1;

    assign i2c_sclk = 'z;
    assign i2c_sdat = 'z;

    assign gpio_00 = 'z;
    assign gpio_01 = 'z;
    assign gpio_02 = 'z;
    assign gpio_03 = 'z;
    assign gpio_04 = 'z;
    assign gpio_05 = 'z;
    assign gpio_06 = 'z;
    assign gpio_07 = 'z;
    assign gpio_08 = 'z;
    assign gpio_09 = 'z;
    assign gpio_010 = 'z;
    assign gpio_011 = 'z;
    assign gpio_012 = 'z;
    assign gpio_013 = 'z;
    assign gpio_014 = 'z;
    assign gpio_015 = 'z;
    assign gpio_016 = 'z;
    assign gpio_017 = 'z;
    assign gpio_018 = 'z;
    assign gpio_019 = 'z;
    assign gpio_020 = 'z;
    assign gpio_021 = 'z;
    assign gpio_022 = 'z;
    assign gpio_023 = 'z;
    assign gpio_024 = 'z;
    assign gpio_025 = 'z;
    assign gpio_026 = 'z;
    assign gpio_027 = 'z;
    assign gpio_028 = 'z;
    assign gpio_029 = 'z;
    assign gpio_030 = 'z;
    assign gpio_031 = 'z;
    assign gpio_032 = 'z;
    assign gpio_033 = 'z;
    assign gpio_10 = 'z;
    assign gpio_11 = 'z;
    assign gpio_12 = 'z;
    assign gpio_13 = 'z;
    assign gpio_14 = 'z;
    assign gpio_15 = 'z;
    assign gpio_16 = 'z;
    assign gpio_17 = 'z;
    assign gpio_18 = 'z;
    assign gpio_19 = 'z;
    assign gpio_110 = 'z;
    assign gpio_111 = 'z;
    assign gpio_112 = 'z;
    assign gpio_113 = 'z;
    assign gpio_114 = 'z;
    assign gpio_115 = 'z;
    assign gpio_116 = 'z;
    assign gpio_117 = 'z;
    assign gpio_118 = 'z;
    assign gpio_119 = 'z;
    assign gpio_120 = 'z;
    assign gpio_121 = 'z;
    assign gpio_122 = 'z;
    assign gpio_123 = 'z;
    assign gpio_124 = 'z;
    assign gpio_125 = 'z;
    assign gpio_126 = 'z;
    assign gpio_127 = 'z;
    assign gpio_128 = 'z;
    assign gpio_129 = 'z;
    assign gpio_130 = 'z;
    assign gpio_131 = 'z;
    assign gpio_132 = 'z;
    assign gpio_133 = 'z;

    assign gpio_2 = 'z;

    assign adc_cs_n = 1;
    assign adc_saddr = 'z;
    assign adc_sclk = 'z;

    assign g_sensor_cs_n = 1;

    var bit down = 0;

    always @(posedge clock_50) begin
        if (down) begin
            if (key == 2'b00) begin
                down <= 0;
            end
        end else begin
            unique case (key)
                2'b11: begin
                    down <= 1;
                end
                2'b10: begin
                    down <= 1;
                    count <= {count[6:0], 1'b0};
                end
                2'b01: begin
                    down <= 1;
                    count <= {count[6:0], 1'b1};
                end
                default: begin end
            endcase
        end
    end

endmodule : top

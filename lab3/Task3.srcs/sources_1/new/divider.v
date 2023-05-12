`timescale 1ns / 1ps

module divider(clk,clk_N);
    input clk;                      // ϵͳʱ��
    output reg clk_N;                   // ��Ƶ���ʱ��
    parameter delay = 50_000_000;      // 1Hz��ʱ��,N=fclk/fclk_N
    reg [31:0] counter;             /* ������������ͨ������ʵ�ַ�Ƶ��
                                       ����������0������(N/2-1)ʱ��
                                       ���ʱ�ӷ�ת������������ */
    initial
    begin
        counter = 0;
        clk_N = 0;
    end                                   
        
    always @(posedge clk)  
        begin    // ʱ��������
            counter <= counter + 1;
            if(counter>delay)
                begin
                    clk_N <= ~clk_N;
                    counter <=0;
                end
        end                     
endmodule

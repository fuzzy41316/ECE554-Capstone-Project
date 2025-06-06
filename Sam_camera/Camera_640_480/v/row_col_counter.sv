module row_col_counter(
    input     logic          D5M_PIXLCLK,
    input       logic           DLY_RST_2,
    input		logic          D5M_FVAL,
    input		logic          D5M_LVAL,
    output logic [31:0]         row_counter,
    output logic [16:0]         col_counter
);

always_ff @(posedge D5M_PIXLCLK or negedge DLY_RST_2) begin
    if(!DLY_RST_2) begin
        col_counter <= '0;
    end
    else if(D5M_LVAL) begin
        col_counter <= col_counter + 1'b1;
    end
    else begin
        col_counter <= '0;
    end
end

always_ff @(posedge D5M_PIXLCLK or negedge DLY_RST_2) begin
    if(!DLY_RST_2) begin
        row_counter <= '0;
    end
    else if(D5M_FVAL) begin
        row_counter <= row_counter + 1'b1;
    end
    else if(!D5M_FVAL) begin
        row_counter <= row_counter / 17'd1280;
    end
end

endmodule
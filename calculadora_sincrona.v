module calculadora_sincrona(
    input clk,
    input rst,
    input [7:0] entrada,
    input [2:0] codigo,
    output reg [7:0] saida
);
    
//insira seu código aqui


        reg [7:0] acumulador;

        always @(posedge clk or posedge rst) begin
                if (rst) begin
                        acumulador <= 8'b0;
                        saida <= 8'b0;
                        // bloco acima reset
                end else begin

                        case (codigo)
                                3'b000: begin
                                        saida <= entrada;  //Mostra entrada
                                end
                                3'b001: begin
                                        acumulador <= acumulador + entrada; // somar
                                        saida <= 8'b0;
                                end
                                3'b010: begin
                                        acumulador <= acumulador - entrada; // subtrair
                                        saida <= 8'b0;
                                end
                                3'b011: begin
                                        saida <= acumulador;  //Mostra acumulador
                                end
                                default: begin
                                        saida <= 8'b0;  // Codigos invalidos
                                end
                        endcase
                end

           end

endmodule
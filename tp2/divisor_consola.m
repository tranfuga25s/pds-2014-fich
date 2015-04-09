% Divisor de consola
% Imprime una concatenacion de ----- del ancho de la consola actual
function divisor_consola
  tamano_terminal = terminal_size();
  divisor = '';
  for i=1:tamano_terminal(2);
    divisor = strcat(divisor, '-');
  end
  disp(divisor);
endfunction
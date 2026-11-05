package br.com.fiap.locatech.locatech.dtos;

import java.math.BigDecimal;

public record VeiculoRequestDTO(Long id,
                                String marca,
                                String modelo,
                                String placa,
                                int ano,
                                String cor,
                                BigDecimal valorDiaria) {
}

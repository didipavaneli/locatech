package br.com.fiap.locatech.locatech.dtos;

public record PessoaRequestDTO(Long id,
                               String nome,
                               String cpf,
                               String telefone,
                               String email) {
}

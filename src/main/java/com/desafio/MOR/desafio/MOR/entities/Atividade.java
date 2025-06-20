package com.desafio.MOR.desafio.MOR.entities;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name="tb_atividade")
public class Atividade {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String descricao;
	private Double preco;
	
	@OneToMany(mappedBy="atividade")
	private List<Bloco> blocos = new ArrayList<>();
	
	@ManyToOne
	@JoinColumn(name="categoria_id")
	private Categoria categoria;
	
	@ManyToMany
	@JoinTable(name="tb_atividade_participantes", joinColumns=@JoinColumn(name="atividade_id"), inverseJoinColumns=@JoinColumn(name="participante_id"))
	private Set<Participante> participantes = new HashSet<>();
}

import React, { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";

function UserForm({ mode }) {
  const [user, setUser] = useState({nome: "", idade: "", cpf: "", endereco: "", genero: ""});
  
  const { id } = useParams();
  const navigate = useNavigate();


  useEffect(() => {
    if (mode === "edit" && id) {
      fetch(`http://localhost:8800/${id}`)
        .then((res) => res.json())
        .then((data) => setUser(data))
        .catch((error) => console.error("Erro ao buscar usuário:", error));
    }
  }, [mode, id]);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setUser((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    const method = mode === "edit" ? "PUT" : "POST";
    const url =
      mode === "edit"
        ? `http://localhost:8800/${id}`
        : `http://localhost:8800/`;

    fetch(url, {
      method,
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(user),
    })
      .then((res) => res.json())
      .then(() => {
        console.log(`Usuário ${mode === "edit" ? "atualizado" : "adicionado"}`);
        navigate("/"); // Voltar para a lista
      })
      .catch((error) => console.error("Erro ao salvar usuário:", error));
  };

  return (
    <div className="modal">
      <div className="modal-content">
        <h2>{mode === "edit" ? "Editar Usuário" : "Adicionar Novo Usuário"}</h2>
        <form onSubmit={handleSubmit}>
          
          <label>Nome:</label>
          <input
            type="text"
            name="nome"
            value={user.nome}
            onChange={handleChange}
            required
          />

          <label>Idade:</label>
          <input
            type="number"
            name="idade"
            value={user.idade}
            onChange={handleChange}
            required
          />

          <label>CPF:</label>
          <input
            type="text"
            name="cpf"
            value={user.cpf}
            onChange={handleChange}
            required
          />
          <label>Endereço:</label>

          <input
            type="text"
            name="endereco"
            value={user.endereco}
            onChange={handleChange}
          />

          <label>Gênero:</label>
          <input
            type="text"
            name="genero"
            value={user.genero}
            onChange={handleChange}
          />

          <button type="submit">{mode === "edit" ? "Salvar" : "Adicionar"}</button>
          <button type="button" onClick={() => navigate("/")}>Cancelar</button>
        </form>
      </div>
    </div>
  );
}

export default UserForm;

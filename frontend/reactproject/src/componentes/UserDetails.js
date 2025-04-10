import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { useNavigate } from "react-router-dom";

function UserDetails() {
  const { id } = useParams(); // pegando o id da URL
  const [user, setUser] = useState(null);
  const navigate = useNavigate();

  useEffect(() => {
    fetch(`http://localhost:8800/users/${id}`) 
      .then((res) => {
        if (!res.ok) {
          throw new Error("Erro ao buscar usuário");
        }
        return res.json();
      })
      .then((data) => {
        setUser(data);
      })
      .catch((error) => {
        console.error("Erro ao buscar usuário:", error);
        setUser(null);  // previne loop infinito
      });
  }, [id]);
  
  if (!user) {
    return <div>Carregando...</div>;
  }

  return (
    <div className="modal">
      <div className="modal-content">
        <h1>{user.nome}</h1>
        <p>Idade: {user.idade}</p>
        <p>CPF: {user.cpf}</p>
        <p>Endereço: {user.endereco}</p>
        <p>Gênero: {user.genero}</p>
        <button onClick={() => navigate(-1)} className="btn-list">Voltar</button>
      </div>
    </div>
  );
}

export default UserDetails;

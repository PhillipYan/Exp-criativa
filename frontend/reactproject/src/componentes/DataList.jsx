import { useNavigate } from "react-router-dom";
import React, { useState, useEffect } from "react";

const DataList = () => {
  const [data, setData] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    fetch("http://localhost:8800")
      .then((res) => res.json())
      .then((data) => setData(data))
      .catch((error) => console.error("Erro ao buscar usuários:", error));
  }, []);

  const handleDelete = (id) => {
    fetch(`http://localhost:8800/${id}`, { method: "DELETE" })
      .then(() => {
        setData((prevData) => prevData.filter((user) => user.id !== id));
      })
      .catch((error) => console.error("Erro ao deletar usuário:", error));
  };

  return (
    <div>
      <h1 className="title">Listando Usuários</h1>
          <div className="btn-adicionar"> 
            <button onClick={() => navigate("/adicionar")} className="btn-list">
            Adicionar Usuário
            </button>
          </div>
      <ul className="list">
        {data.map((item) => (
          <li key={item.id} className="li-list">
            Nome: {item.nome}<br />
            Idade: {item.idade}<br />
            CPF: {item.cpf}<br />
            <button onClick={() => navigate(`/detalhes/${item.id}`)} className="btn-list">
              Ver mais detalhes
            </button>
            <button onClick={() => navigate(`/editar/${item.id}`)} className="btn-list">
              Editar
            </button>
            <button onClick={() => handleDelete(item.id)} className="btn-list">
              Deletar
            </button>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default DataList;

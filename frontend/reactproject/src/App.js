import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import DataList from "./componentes/DataList";
import UserForm from "./componentes/UserForm";
import UserDetails from "./componentes/UserDetails";
import './App.css';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<DataList />} />
        <Route path="/adicionar" element={<UserForm mode="add" />} />
        <Route path="/editar/:id" element={<UserForm mode="edit" />} />
        <Route path="/detalhes/:id" element={<UserDetails />} />
      </Routes>
    </Router>
  );
}

export default App;

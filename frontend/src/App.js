import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import Aboutus from "./pages/About";
import Contact from "./pages/Contact";
import Menu from "./pages/Menu";
import Pagenotfound from "./pages/Pagenotfound";
import Login from "./pages/login/Login";
import MenuDetails from "./pages/menudetails/MenuDetails";
import Lunch from "./pages/lunch/Lunch";
import Dash from "./dashboard/dashboard/dashboardapp";
// import Dashboard from "./dashboard/dashboard/scenes/dashboard";


import './App.css'
// import { LoginForm } from "./pages/login/Login";
function App() {
  return (
    <div>
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/about" element={<Aboutus />} />
          <Route path="/lunch" element={<Lunch/>} />
          <Route path="/menudetails/:id" element={<MenuDetails/>} />
          

          <Route path="/contact" element={<Contact />} />
          <Route path="/menu" element={<Menu />} />
           <Route path="/login" element={<Login/>} />

          <Route path="/dashboard" element={<Dash/>} />
          <Route path="*" element={<Pagenotfound />} />
        </Routes>
      </BrowserRouter>


    </div>
  );
}

export default App;

import React,{useRef} from "react";
import { NavLink } from "react-router-dom";
import { Container } from "reactstrap";
// import "../styles/HeaderStyles.css";
import '../../styles/HeaderStyles.css'

const navLinks = [
  
    <ul className="mobile-navigation">
            <li>
              <NavLink activeClassName="active" to={"/"}>
                
              </NavLink>
            </li>
            <li>
              <NavLink to={"/menu"}>Menu</NavLink>
            </li>
            <li>
              <NavLink to={"/about"}>About</NavLink>
            </li>
            <li>
              <NavLink to={"/contact"}>Contact</NavLink>
            </li>
             <li>
              <NavLink to={"/login"}>Login</NavLink>
            </li> 
            <li>
              <NavLink to={"/dashbord"}>Dashbord</NavLink>
            </li>
            <li>
              <NavLink to={"/Cart"}>Cart</NavLink>
            </li>
          </ul>
  
  ]
const Header = () => {
const menuRef = useRef()
const menuToggle =()=> menuRef.current.classList.toggle('active_menu')




  return (
    <div>
      <header className="header">
        <Container>
          <div className="navigation">
            <div className="logo">
              <h2 className="d-flex align-items-center gap-1">
                <span className="ri">
                  <i class="ri-restaurant-2-line" ></i>
                </span>{' '}
              <h3 className="title">Royal <span>Deliveries</span></h3>
              </h2>
            </div>
            {/* menu */}
            <div className="nav_menu" ref={menuRef}>
              <div className="nav_list_wrapper d-flex align-items-center gap-5">
                {/* <ul className="nav_list">
                  {navLinks.map((item,index) => ( */}
                    {/* // <li className="nav_item" key={index}> */}
                      {/* <a href={item.url} onClick={menuToggle}>{item.display}</a> */}

                      <ul className="navigation-menu">
                 <li>
                   <NavLink activeClassName="active" to={"/"}>
                     Home
                   </NavLink>
                </li>
                 <li>
                   <NavLink to={"/menu"}>Menu</NavLink>
                 </li>
                 <li>
                   <NavLink to={"/about"}>About</NavLink>
                 </li>
                 <li>
                   <NavLink to={"/contact"}>Contact</NavLink>
                 </li>
                <li>
                   <NavLink to={"/login"}>Login</NavLink>
                </li>
                <li>
                   <NavLink to={"/Cart"}>Cart</NavLink>
                </li>
              </ul>
              
                    {/*
                  ))}
                </ul> */}
                
                <div className="menu_right">
                  {/* <div className="custom_search">
                    <input type="text" placeholder="search item......" />
                    <span>
                      {/* <i class="ri-search-line"></i> */}
                    {/* </span>
                  </div> */} 
                </div>
                </div>
            </div>
            {/* cart  */}
            {/* <div className="cart_icon">
              <span>
              {/* <i class="ri-shopping-basket-line"></i> */}
              {/* <span className="badge">2</span> */}
              {/* </span>
            </div>  */}

            {/* mobile  */}
            <div className="mobile_menu">
              <span>
                {/* <i class="ri-menu-line" onClick={menuToggle}></i> */}
              </span>
            </div>
          </div>
        </Container>
      </header>
    </div>
  );
};













































































// import {
//   AppBar,
//   Box,
//   Divider,
//   Drawer,
//   IconButton,
//   Toolbar,
//   Typography,
// } from "@mui/material";

// import MenuIcon from "@mui/icons-material/Menu";
// import { NavLink } from "react-router-dom";
// import "../../styles/HeaderStyles.css";
// const Header = () => {
//   const [mobileOpen, setMobileOpen] = useState(false);
//   // hndle menu click
//   const handleDrawerToggle = () => {
//     setMobileOpen(!mobileOpen);
//   };
//   //menu drawer
//   const drawer = (
//     <Box onClick={handleDrawerToggle} sx={{ textAlign: "center" }}>
//       <Typography 
//         color={"goldenrod"}
//         variant="h6"
//         component="div"
//         sx={{ flexGrow: 1, my: 2 }}
//       >
//         {/* <img src={Logo} alt="logo" height={"70"} width="200" /> */}
//       </Typography>
//       <Divider />
//       <ul className="mobile-navigation">
//         <li>
//           <NavLink activeClassName="active" to={"/"}>
//             Home
//           </NavLink>
//         </li>
//         <li>
//           <NavLink to={"/menu"}>Menu</NavLink>
//         </li>
//         <li>
//           <NavLink to={"/about"}>About</NavLink>
//         </li>
//         <li>
//           <NavLink to={"/contact"}>Contact</NavLink>
//         </li>
//         <li>
//           <NavLink to={"/cart"}>Cart</NavLink>
//         </li>
//       </ul>
//     </Box>
//   );
//   return (
//     <>
//       <Box>
//         <AppBar component={"nav"} sx={{ bgcolor: "black" }}>
//           <Toolbar>
//             <IconButton
//               color="inherit"
//               aria-label="open drawer"
//               edge="start"
//               sx={{
//                 mr: 2,
//                 display: { sm: "none" },
//               }}
//               onClick={handleDrawerToggle}
//             >
//               <MenuIcon />
//             </IconButton>
//             <Typography
//               color={"goldenrod"}
//               variant="h6"
//               component="div"
//               sx={{ flexGrow: 1 }}
//             >
//               {/* <img src={Logo} alt="logo" height={"70"} width="250" /> */}
              
//             </Typography>
//             <Box sx={{ display: { xs: "none", sm: "block" } }}>
//               <ul className="navigation-menu">
//                 <li>
//                   <NavLink activeClassName="active" to={"/"}>
//                     Home
//                   </NavLink>
//                 </li>
//                 <li>
//                   <NavLink to={"/menu"}>Menu</NavLink>
//                 </li>
//                 <li>
//                   <NavLink to={"/about"}>About</NavLink>
//                 </li>
//                 <li>
//                   <NavLink to={"/contact"}>Contact</NavLink>
//                 </li>
//                 <li>
//                   <NavLink to={"/cart"}>Cart</NavLink>
//                 </li>
//               </ul>
//             </Box>
//           </Toolbar>
//         </AppBar>
//         <Box component="nav">
//           <Drawer
//             variant="temporary"
//             open={mobileOpen}
//             onClose={handleDrawerToggle}
//             sx={{
//               display: { xs: "block", sm: "none" },
//               "& .MuiDrawer-paper": {
//                 boxSizing: "border-box",
//                 width: "240px",
//               },
//             }}
//           >
//             {drawer}
//           </Drawer>
//         </Box>
//         <Box>
//           <Toolbar />
//         </Box>
//       </Box>
//     </>
//   );
// };

export default Header;

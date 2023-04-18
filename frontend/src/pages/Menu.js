import React from "react";
// import { MenuList } from "../data/data";
import '../styles/menu.css'
import {popularMenuFood} from '../assets/fake-data/products'
import Layout from "../components/Layout/Layout";
import {Container,Row,Col} from 'reactstrap'
import { Link } from "react-router-dom";
import { fastFoodProducts, riceMenuProducts,pizzaProducts,dessertProducts,coffeeProducts} from "../assets/fake-data/products";

const Menu = () => {
  return (
    <Layout>
      <section>
      <Container>
        <Row>
          <Col lg='12' className="mb-5">
            <h2 className="foods">Popular Foods</h2>
            </Col>
            {
              popularMenuFood.map((item=>(




                <Col lg='3' key={item.id}>
                  <div className="single_product">
                      <div className="product_img">
                        <img src={item.imgUrl} alt='' className="w-100"/>

                      </div>
                      <div className="product_content">
                      <div className="rating text-center">
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>

                      </div>

                      <h6>{item.title}</h6>
                      <div className="d-flex align-items-center justify-content-between">
                        {/* <span className="price  align-items-center"> Ugx: <span> {item. price} </span></span> */}
                        {/* <span className="shopping_icon"><i class="ri-shopping-cart-line"></i></span> */}
                    <Link to = '/Lunch'> 
                    <button className='btns main' id="explore">Explore</button>
                    </Link>
                    {/* <Link to = '/Lunch'> 
                    <button className='btns main' id="explore">Fastfoods</button>
                    </Link> */}
                      </div>
                      </div>
                  </div>
                </Col>
              )))
            }



          
          <Col lg='12' className='text-center-mb-4'><h3 className="menu_title">Our Menu Details</h3></Col>
          <Col lg='12' className="text-center-mb-4">
          <button className="filter-btn active_btn">All</button>

            <button className="filter-btn">FastFoods</button>

            <button className="filter-btn ">Rice Food</button>
            <button className="filter-btn">Rice Menu</button>
            <button className="filter-btn">Coffee</button>
            <button className="filter-btn">desert</button>
          </Col>
          {
            fastFoodProducts.map(item=>(
              <Col lg='3' key={item.id} >
                <div className="single_product">
                      <div className="product_img">
                        <img src={item.imgUrl} alt='' className="w-100"/>

                      </div>
                      <div className="product_content">
                      <div className="rating text-center">
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>

                      </div>

                      <h6>{item.title}</h6>
                      <div className="d-flex align-items-center justify-content-between">
                        <span className="price d-flex align-items-center">Ugx: <span>{item.price}</span></span>
                        {/* <span className="shopping_icon"><i class="ri-shopping-cart-line"></i></span> */}
                    <Link to = {`/menudetails/${item.id}`}> <button className='btns main'>Add To Cart</button></Link>

                        
                      </div>
                      </div>
                  </div>
              </Col>
            ))
          }
        </Row>
      </Container>






     
        
      </section>
    </Layout>
  );
};

export default Menu;

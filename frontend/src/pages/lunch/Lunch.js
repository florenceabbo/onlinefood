import React,{useState,useEffect} from 'react'
import Layout from '../../components/Layout/Layout';
import {Container,Row,Col} from 'reactstrap'
import { Link } from "react-router-dom";
import './lunch.css'

// import { fastFoodProducts } from '../../assets/fake-data/products';
const Lunch = () => {
  const [ fastFoodProducts,setfastFoodProducts] = useState([]);
  
useEffect(() => {
  const fetchFoodItems = async () => {
    try{
      const response = await fetch('http://127.0.0.1:5000/food_items/sub_food_categories/1' , {
            method:'GET',
              headers:{
                'Content-Type':'application/json',
                'Accept':'application/json',
                
              }
            });
            if (!response.ok){
              throw new Error(response.status.text);
            }
            const data = await response.json();
            setfastFoodProducts(data.FoodItem);
            localStorage.setItem('myFoodItems', JSON.stringify(data.FoodItem));
     } catch (error) {
      console.log(error);
     }
  };
  fetchFoodItems();
        // const CategoryProducts=async () => {
        //   fetch('http://127.0.0.1:5000/food_items/sub_food_categories/1' , {
        //     method:'GET',
        //       headers:{
        //         'Content-Type':'application/json',
        //         'Accept':'application/json',
                
        //       }
        //     })
        //     .then(res => console.log(res))
        //     .catch(error => console.log(error))
        //   }
        //   CategoryProducts();
  },[])
  console.log(fastFoodProducts)
  return (
    <div>
       
          <Layout>
           
      <section>
      <Container>

        <Row>
        
           
          <Col lg='12' className='text-center-mb-4'><h3 className="menu_title">Our Lunch Menu</h3></Col>
          <Col lg='12' className="text-center-mb-4">
        

          </Col>
          {
            fastFoodProducts.map(item=>(
              <Col lg='3' >
                <div className="single_product">
                      <div className="product_img">
                        <img src={item.image} alt='' className="w-100"/>

                      </div>
                      <div className="product_content">
                      <div className="rating text-center">
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>
                        <span><i class ='ri-star-s-fill'></i></span>

                      </div>

                      <h6>{item.name}</h6>
                      <div className="d-flex align-items-center justify-content-between">
                        <span className="price d-flex align-items-center">{item.price_unit}<span>{item.price}</span></span>
                        {/* <span className="shopping_icon"><i class="ri-shopping-cart-line"></i></span> */}
                    <Link to = {`/menudetails/${item.id}`}> <button className='btns main'>Order Now</button></Link>

                        
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
    </div>
  )
}

export default Lunch

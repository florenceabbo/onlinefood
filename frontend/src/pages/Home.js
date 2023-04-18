import React from "react";
import Layout from "./../components/Layout/Layout";
// import { Link } from "react-router-dom";
//import Banner from "../images/banner.jpeg";
import { Container } from "reactstrap";
import { Border3, Border4, Fastfood, Hotel,Drink,Desserts,Cont,Toss,Meat,Full,Hot,Hot1 } from "./images";

import Slider from "react-slick";
import sliderData from "../assets/fake-data/slider";
import "../styles/HomeStyles.css";
import { Link } from "react-router-dom";

const Home = () => {
  const settings = {
    infinite: true,
    Speed: 200,
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
  };

  return (
    <Layout>
      <section>
        <Container>
          <Slider {...settings}>
            {sliderData.map((item) => (
              <div key={item.id}>
                <div className="slider_wrapper d-flex align-items-center justify-content-between pt-5  ">
                  <div className="slider_content w-50 pt-5">
                    <h2 className="mb-3">{item.title}</h2>
                    <p>{item.desc}</p>
                    {/* <button className="btns">Explore Food</button> */}
                    <Link to="/menu">
                      <button className="btns">ORDER NOW</button>
                    </Link>
                  </div>
                  <div className="slider_img w-200 pt-5">
                    <img src={item.imgUrl} className="w-200" alt="" />
                  </div>
                </div>
              </div>
            ))}
          </Slider>
        </Container>
      </section>
      <div className="meals">
        <h5>Find all your favarite tasty meals here at Royal Deliveries</h5>
        <h6>Meals available</h6>
        <ul>
          <li>
            Fast foods <Fastfood />
          </li>
          <li>
            Breverages <Drink />
          </li>
          <li>
            Continental foods <Cont />
          </li>
          <li>
            Desserts <Desserts />
          </li>
        </ul>
        <h5>Order for a meal and get a glass of juice for free</h5>
        <h6>Most ordered meals</h6>
        <div>
          <ul>
            <li>
              Tossedchiken <Toss />
            </li>
            <li>
              Tossedmeat <Meat />
            </li>
            <li>
              Pizzburger <Fastfood />
            </li>
            <li>
              Fullchiken <Full />
            </li>
          </ul>
        </div>

        <h5>
          Find Food Deliveries headquoters in Kampala Bukoto street near Accacia
          mall and other branches are in Jinja and Gulu
        </h5>

        <section className="sec2">
        <div className="homebranch">
          <p>
            Kampala branch <Hotel />
          </p>
          <div className="midbranch">
            <div className="mid1">
            <p>
              Jinja <Hot />
            </p>
            </div>
            <div className="mid2">
            <p>
               Gulu <Hot1 /> 
             
            </p>
            </div>
           
          </div>
        </div>
        </section>
       
      </div>
    </Layout>
  );
};

{
  /* <h1>Food Website</h1>
          <p>Best Food In Uganda</p>
          <Link to="/menu">
            <button>ORDER NOW</button>
          </Link> */
}

export default Home;

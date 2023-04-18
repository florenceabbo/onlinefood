import React from 'react'
import './detailsection.css'
import { Link } from 'react-router-dom'

import {Col} from 'reactstrap'
import { useParams } from 'react-router-dom'
const DetailSection = () => {
  const {id} = useParams()
  console.log(id)
//  const user = useContext(UserContext)
// const navigate = useNavigate();





//   const handleAddToCart = () =>{
//     // if {
// (user)
//     }else{
//       navigate('/login')
//       alert('please signup first')
//     }
//   }

  return (
    <section className='detailsection'>
      <div className='container'>
        <div className='flex-container'>
            <div className='food-img-container'>
            {/* // <img src='https://static.onecms.io/wp-content/uploads/sites/43/2022/09/26/25473-the-perfect-basic-burger-ddmfs-4x3-1350-1.jpg' alt='burger'/> */}
           

            



                <Col lg='7' >
                  <div className="single_product">
                      <div className="product_img">
                        <img src='https://static.onecms.io/wp-content/uploads/sites/43/2022/09/26/25473-the-perfect-basic-burger-ddmfs-4x3-1350-1.jpg' alt='foood' className="w-100"/>

                      </div>
                      </div>
        
                </Col>
            

















            </div>

            <div className='menu-detail-container'>
            <h2>Item : Burger</h2>
            <p className='des'>description : vegetable</p>
            <p className='des'>Price : ugx 2300</p>
            <div className="d-flex align-items-center justify-content-between">
                        
                        {/* <span className="shopping_icon"><i class="ri-shopping-cart-line"></i></span> */}

                     {/* <Link onClick={handleAddToCart}>   
                     <button className='btns'>Add To Cart</button>
                      </Link> */}
                      <Link to ='/Cart'>   
                     <button className='btns'>Add To Cart</button>
                      </Link>
            </div>
            </div>
        </div>
      </div>
    </section>
  )
}

export default DetailSection

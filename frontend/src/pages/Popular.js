import React from 'react'
import {popularMenuFood} from '../assets/fake-data/products'
import {Col,Container,Row} from 'reactstrap'
import ProductCard from './ProductCard'
import Layout from "./../components/Layout/Layout";


const Popular = () => {
  return (
    <Layout>
        <Container>
            <Row>
      <Col lg='12' className="mb-5">
            <h2>Popular Foods</h2>

        </Col>
            {
              popularMenuFood.map((item=>(
                <Col lg='3' key={item.id}>
                  <ProductCard/>
                </Col>
                
                )))
              }
              </Row>
        </Container>
    </Layout>
  )
}

export default Popular

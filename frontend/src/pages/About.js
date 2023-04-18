import React from "react";
import Layout from "../components/Layout/Layout";
import { Hotel, Border,Border3,Border4, Hot,Hot1 ,Bod,Bod1 } from './images';
 import { Box, Typography } from "@mui/material";
import '../styles/about.css'



const Aboutus = () => {
  
    return (
           
        <div className='aboutcontain'>
          
            {/* <nav>Links</nav> */}
            <div className='aboutback'>
                <h1 className="aboutmore">KNOW MORE ABOUT ROYAL FOODS</h1>
                <div className='mission'>
                   
                <h1>OUR MISSION AND VISION</h1>
                <p className="story">We strive to deliver quality and distinctive taste
                        for both our local and international meals and we intend
                        to extend our supply to all
                        parts of Uganda.</p>
                         
                </div>
              
                <div className='dreamers'>
                     <Hotel/>
                    
                    <p className="dream">
                        <h2>OUR STORY</h2>
                        <p className="p1">As dreamers, we have always seen ourselves do something
                        that people will be so proud of <br></br> and that has kept us driven
                        for so long. As a result of determination, hard work and
                        consistency, we managed to establish our dreams in the
                        community.<br></br><br></br>

                        From day one, we sought being faithful and loyal to deliver
                        what is best for our customers which has kept us prospering
                        and growing every single day.<br></br><br></br>
                        </p>
                        </p>
                </div> 
                <h2 className="b">BRANCHES</h2>           
                <div>
                        {/* <Border1/>
                        <Border2/> */}
                       <div>
                       
                       <p className="branchtext">
                             We have created our branches in different parts of Uganda
                             and just like our vision, we aim at supplying the whole Uganda
                             with our undoubted food quality
                             </p>
                               
                       </div>
                       <div className="bra">
                        <div><p>Kampala main branch</p> 
                             <Hotel/></div>
                             <div className="bra1">
                             
                                <div className="ji">
                                <p>Jinja branch</p> 
                                <Hot/>
                                </div>
                                <div className="gul">
                                <p>Gulu branch</p>
                             <Hot1/>
                                </div>

                             </div>
                       </div>
                       
                            
                        </div>
                
            </div>

            <div className='delivery_services'>
                
                
                    <h2 className="del">DELIVERY SERVICES</h2>
                    <p className="deltext">We have got a number of motorcycles to make quick deliveries
                    to single homes and we also have trucks that carry large amount
                    of food to functions for convenience purposes.
                    Our delivery agents are very fast, loyal and trustworthy. Your food finds you at the
                    comfort of your placeand any time you may
                    need it.
                </p>
                <div className="border">
                <Border/>
                <Bod/>
                <Border/>
                <Bod/>
                </div>
               
            </div>
            
            <Layout/>
        </div>
        
    )
}

export default Aboutus
        {/* </div>
      
    </Layout>
  );
}; */}



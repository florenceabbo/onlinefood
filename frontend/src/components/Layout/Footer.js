import React from 'react';
import { FiFacebook, FiTwitter, FiInstagram } from 'react-icons/fi';

// import { FooterOverlay, Newsletter } from '../../components';
// import { images } from '../../constants';
import '../../styles/footer.css';

const Footer = () => (
  <div className="app__footer section__padding" id="login">
    {/* <FooterOverlay /> */}
    {/* <Newsletter /> */}

    <div className="app__footer-links">
      <div className="app__footer-links_contact">
        <h1 className="app__footer-headtext">Contact Us</h1>
        <p className="p__opensans">Ntinda Shopping Center</p>
        <p className="p__opensans">+25677889087</p>
        <p className="p__opensans">+256705787897</p>
      </div>

      <div className="app__footer-links_logo">
        {/* <img src='' alt="footer_logo" /> */}
        <span className="ri">
          <i class="ri-restaurant-2-line w-50" ></i>
            </span>{' '}
        <p className="p__opensans">&quot;The best way to find <br/>yourself is to lose yourself <br/>in the service of others.&quot;</p>
        {/* <img src='' className="spoon__img" style={{ marginTop: 15 }} /> */}
      
        <div className="app__footer-links_icons">
        <p className='parag'>
          <p>royaldeliveriesUg</p>
          <FiFacebook />
          <FiTwitter />
          <FiInstagram />
          </p>
        </div>
      </div>

      <div className="app__footer-links_work">
        <h1 className="app__footer-headtext" id='headt'>Working Hours</h1>
        <p className="p__opensan">Monday - Friday:</p>
        <p className="p__opensans">08:00 am - 12:00 am</p>
        <p className="p__opensan">Saturday - Sunday:</p>
        <p className="p__opensans">07:00 am - 11:00 pm</p>
      </div>

      <div className="app__footer-links_work">
        <h1 className="app__footer-headtext">Delivery Hours</h1>
        <p className="p__opensan">Monday - Friday:</p>
        <p className="p__opensans">08:00 am - 10:00pm</p>
        <p className="p__opensan">Saturday - Sunday:</p>
        <p className="p__opensans">07:00 am - 9:00 pm</p>
      </div>

    </div>

    <div className="footer__copyright">
      <p className="p__opensan">2021 Royal DeliveriesUg. All Rights reserved.</p>
    </div>

  </div>
);

export default Footer;

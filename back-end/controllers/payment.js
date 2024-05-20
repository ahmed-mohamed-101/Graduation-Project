const admin = require('../models/admin');

const jwt = require("jsonwebtoken");

const stripe_private_key = "sk_test_51PBNvfJo7stJPpDUQOdEtMbnn9EydhrSOqZRGk78edK3C91LPrpIiPLDuDWyu3gYV83DkbbFCmnVHLnVZzxOQIgO009hSBteNv"

const stripe_price_id_1 = "price_1PBO3YJo7stJPpDUxv32BIq3"

const stripe_price_id_2 = "price_1PBO4mJo7stJPpDUs1gqYLdL"

const stripe = require("stripe")(stripe_private_key);

const monthly = async (req, res) => {
  try {
    const paymentLink = await stripe.paymentLinks.create({
      line_items: [
        {
          price: stripe_price_id_1,
          quantity: 1000,
        },
      ],
      after_completion : {
        type: 'redirect',
        redirect: {
          url : 'http://localhost:4200/home',
        }
      },
    });

    const paymentLinkUrl = paymentLink.url;
    res.json({ url: paymentLinkUrl });
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
};

const annually = async (req, res) => {
  try {
    
    const paymentLink = await stripe.paymentLinks.create({
      line_items: [
        {
          price: stripe_price_id_2,
          quantity: 11000,
        },
      ],
      after_completion : {
        type: 'redirect',
        redirect: {
          url : 'http://localhost:4200/home',
        }
      },
    });
    const paymentLinkUrl = paymentLink.url;
    res.json({ url: paymentLinkUrl });
    
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
};

const confirmPayment = async (req, res) => {
  try {
    const secret = "secretfortoken" 
    const token = req.body.token;
    const verify = jwt.verify(token,secret)
    const {email} = verify;
    const customer = await stripe.customers.search({query: `email:"${email}"`,});
    const paymentId = customer.data[0].id;
    await admin.updatePaymentId(paymentId, email);

    res.json( "paymentId added to the user" );
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
}

module.exports = {
  monthly,
  annually,
  confirmPayment
};
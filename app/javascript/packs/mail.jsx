import ReactDOM from "react-dom";
import React from "react";

import Layout from "../common/layout";
import Mail from '../apps/mail';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Layout>
      <Mail />
    </Layout>,
    document.body.appendChild(document.createElement('div')),
  )
})

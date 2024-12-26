import React from 'react';
import ReactDOM from 'react-dom/client'; // Note the change
import HelloWorld from 'components/HelloWorld';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  if (root) {
    const reactRoot = ReactDOM.createRoot(root); // Create a root
    reactRoot.render(<HelloWorld />); // Use the new render method
  } else {
    console.error('No #root element found!');
  }
});
const path = require('path');

module.exports = {
  entry: './app/javascript/packs/application.js', // Adjust path if necessary
  output: {
    filename: 'application.js',
    path: path.resolve(__dirname, 'public/packs'),
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env', '@babel/preset-react'],
          },
        },
      },
    ],
  },
  devServer: {
    contentBase: path.join(__dirname, 'public'),
    compress: true,
    port: 3035,
  },
};

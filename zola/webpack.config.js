const path = require('path')
const ExtractTextPlugin = require('extract-text-webpack-plugin')
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin')
const BabelMinifyPlugin = require("babel-minify-webpack-plugin");

module.exports = {
  entry: {
    app: [
      './src/css/app.css',
      './src/js/app.js',
    ]
  },
  optimization: {
    minimizer: [
      new OptimizeCSSAssetsPlugin({})
    ]
  },
  output: {
    path: path.resolve(__dirname, 'static'),
    filename: "js/[name].js",
    publicPath: '../',
  },
  mode: process.env.NODE_ENV,
  module: {
    rules: [
      {
        test: /\.css$/,
        use: ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: [
            { loader: 'css-loader', options: { importLoaders: 1 } },
            'postcss-loader',
          ],
        }),
      },
      {
        test: /\.(ttf|otf|eot|svg|woff(2)?)(\?[a-z0-9]+)?$/,
        loader: 'file-loader?name=webfonts/[name].[ext]',
      },
    ],
  },
  plugins: [
    new BabelMinifyPlugin(minifyOpts={}, pluginOpts={}),
    new ExtractTextPlugin('css/[name].css', {
      disable: process.env.NODE_ENV === 'development',
    }),
  ],
}

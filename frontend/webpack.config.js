const WriteFilePlugin = require('write-file-webpack-plugin');
const path = require('path');
const VueLoaderPlugin = require('vue-loader/lib/plugin')
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');
const webpack = require('webpack');

module.exports = {
  mode: "development",
  module: {
    rules: [
      {
        test: /\.vue$/,
        use: {
          loader: 'vue-loader',
          options: {
            loaders: {
              sass: [
                'vue-style-loader',
                'css-loader',
                'resolve-url-loader',
                'sass-loader?indentedSyntax=1&sourceMap',
                {
                  loader: 'sass-resources-loader',
                  options: {
                    resources: [
                    ],
                  },
                },
              ],
              scss: [
                'vue-style-loader',
                'css-loader',
                'resolve-url-loader',
                'sass-loader?sourceMap',
                {
                  loader: 'sass-resources-loader',
                  options: {
                    resources: [
                    ],
                  },
                },
              ],
            },
          },
        },
      },
      {
        test: /\.js$/,
        loader: 'babel-loader',
        exclude: /node_modules/,
        query: {
          presets: ['stage-2', ]
        }
      },
      {
        test: /\.(woff|woff2?|eot|ttf|otf)(\?.*)?$/,
        loader: 'file-loader',
        options: {
          name: 'fonts/[name].[ext]?[hash]'
        }
      },
      {
        test: /\.(png|jpg|gif)$/,
        loader: 'file-loader',
        options: {
          name: '[path][name].[ext]?[hash]'
        }
      },
      {
        test: /\.svg$/,
        use: [{
          loader: 'html-loader',
        },
        {
          loader: 'svgo-loader',
          options: {
            plugins: [
              {removeTitle: true},
              {cleanupIDs: {
                minify: false
              }},
            ]
          }
        }]
      },
      {
        test: /\.(css|scss)$/,
        use: [ 'style-loader', 'css-loader', 'sass-loader' ]
      }
    ]
  },
  resolve: {
    modules: [
      'node_modules',
    ],
    alias: {
      'vue$': 'vue/dist/vue.esm.js'
    }
  },
  entry: {
    app: './src/index.js',
  },
  output: {
    path: path.resolve(__dirname, '../hptx/hptx/static'),
    publicPath: 'http://localhost:9000/static/',
    filename: '[name].buildVue.js',
  },
  devServer: {
    publicPath: 'http://localhost:9000/static/',
    port: 9000,
    hot: true,
    headers: {
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'GET,OPTIONS,HEAD,PUT,POST,DELETE,PATCH',
      'Access-Control-Allow-Headers': 'Origin, Content-Type, Accept, Authorization, X-Request-With',
      'Access-Control-Allow-Credentials': 'true',
    },
  },
  watchOptions: {
    aggregateTimeout: 300,
    poll: 1000
  },
  plugins: [
    new VueLoaderPlugin(),
    new webpack.HotModuleReplacementPlugin(),
    new WriteFilePlugin({
        test: (val) => val.indexOf("hot-update") == -1,
        useHashIndex: true
    })
  ],
};


if (process.env.NODE_ENV === 'production') {
  module.exports.devtool = '';
  module.exports.mode = "production";

  // http://vue-loader.vuejs.org/en/workflow/production.html
  module.exports.output = {
    path: path.resolve(__dirname, '../hptx/hptx/static'),
    publicPath: '/static',
    filename: '[name].buildVue.js'
  };

  module.exports.optimization = {
    minimizer: [
      new UglifyJsPlugin({
        uglifyOptions: { warnings: false }
      })
    ]
  };

  module.exports.plugins = (module.exports.plugins || []).concat([
    new webpack.DefinePlugin({
      'process.env': {
        NODE_ENV: '"production"'
      }
    }),
    new webpack.LoaderOptionsPlugin({
      minimize: true
    })
  ]);
}

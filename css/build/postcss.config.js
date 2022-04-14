'use strict'

module.exports = ctx => ({
  map: {
    inline: false,
    annotation: true,
    sourcesContent: true
  },
  plugins: {
    autoprefixer: {
      cascade: false
    },
    "postcss-rename": {
      prefix: "cas-"
    }
  }
})

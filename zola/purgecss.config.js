/*
Custom extractor for purgeCSS to avoid
stripping classes with `:` prefixes
@see https://egghead.io/lessons/tailwind-removing-unused-css-in-tailwind-with-purgecss
*/
class TailwindExtractor {
  static extract(content) {
    return content.match(/[A-z0-9-:\/]+/g) || [];
  }
}

module.exports = {
  content: [
    './public/**/*.html',
    './public/**/*.js',
  ],
  css: [
    './public/css/**/*.css',
  ],
  extractors: [
    {
      extractor: TailwindExtractor,
      extensions: ['html', 'js']
    }
  ],
  whitelistPatterns: [
    // /^js-/,
  ],
}

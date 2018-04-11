if (typeof String.prototype.includes !== "function") {
  String.prototype.includes = function(str) {
    return this.indexOf(str) > -1;
  };
}

if (typeof String.prototype.endsWith !== "function") {
  String.prototype.endsWith = function(suffix) {
    return this.indexOf(suffix, this.length - suffix.length) !== -1;
  };
}

if (typeof String.prototype.humanize !== "function") {
  String.prototype.humanize = function() {
    var humanized, words;
    words = this.toLowerCase().replace(/[_:]+/g, ' ').split(' ');
    humanized = _(words).map(function(word) {
      return word.charAt(0).toUpperCase() + word.slice(1);
    }).reduce(function(a, b) {
      return a + " " + b;
    });
    return humanized;
  };
}

if (typeof String.prototype.startsWith !== "function") {
  String.prototype.startsWith = function(str) {
    return this.indexOf(str) === 0;
  };
}

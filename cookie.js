window.getCookie = function(name) {
  var parts, value;
  value = "; " + document.cookie;
  parts = value.split("; " + name + "=");
  if (parts.length === 2) {
    return parts.pop().split(";").shift();
  }
};

window.setCookie = function(name, value, days) {
  var date, expires;
  expires = "";
  days = days || 1;
  date = new Date();
  date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
  expires = "; expires=" + date.toUTCString();
  return document.cookie = name + "=" + value + expires + "; path=/";
};

window.deleteCookie = function(name) {
  return document.cookie = name + '=;expires=Thu, 01 Jan 1970 00:00:01 GMT;';
};

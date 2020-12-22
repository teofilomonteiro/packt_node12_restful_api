const defaultMiddlerware = require("./default");

module.exports = function registerMiddleware(server) {
    defaultMiddlerware(server);
};

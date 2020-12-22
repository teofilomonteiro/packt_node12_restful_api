import defaultMiddlerware from "./default";

export default function registerMiddleware(server) {
    defaultMiddlerware(server);
};

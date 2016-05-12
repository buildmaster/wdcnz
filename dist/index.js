'use strict';

var Hapi = require('hapi');

var server = new Hapi.Server();

server.connection({
    port: process.env.PORT || 3000
});

server.register(require('inert'), function (err) {

    if (err) {
        throw err;
    }

    server.route({
        method: 'GET',
        path: '/style.css',
        handler: function handler(request, reply) {
            reply.file('./dist/style.css');
        }
    });

    server.route({
        method: 'GET',
        path: '/images/{param*}',
        handler: {
            directory: {
                path: 'dist/images/'
            }
        }
    });
    server.route({
        method: 'GET',
        path: '/downloads/{param*}',
        handler: {
            directory: {
                path: 'dist/downloads/'
            }
        }
    });
    server.route({
        method: 'GET',
        path: '/fonts/{param*}',
        handler: {
            directory: {
                path: 'dist/fonts/'
            }
        }
    });

    server.route({
        method: 'GET',
        path: '/',
        handler: function handler(request, reply) {
            reply.file('./dist/index.html');
        }
    });

    server.start(function (err) {

        if (err) {
            throw err;
        }
        console.log('Server running at:', server.info.uri);
    });
});
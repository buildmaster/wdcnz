'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
var Hapi = require('hapi');

var server = new Hapi.Server();
server.connection({
  port: 3000
});

server.register(require('inert'), function (err) {

  if (err) {
    throw err;
  }

  server.route({
    method: 'GET',
    path: '/style.css',
    handler: function handler(request, reply) {
      reply.file('./style.css');
    }
  });
  server.route({
    method: 'GET',
    path: '/',
    handler: function handler(request, reply) {
      reply.file('./index.html');
    }
  });
});

exports.default = server;
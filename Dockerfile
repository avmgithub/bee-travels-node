FROM node:12.11.0-alpine
#FROM node:12.13.1-stretch-slim
#FROM node:current-alpine3.19

COPY .yarn .yarn
COPY packages packages
COPY .pnp.js .yarnrc.yml package.json yarn.lock ./

RUN npm update
RUN npm --depth 20 update --save caniuse-lite browserslist 
#RUN npx update-browserslist-db@latest
RUN npx browserslist@latest --update-db
#RUN npx update-browserslist-db@latest 

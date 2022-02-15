FROM skazuki/alpine-node:14

LABEL maintainer="S-Kazuki<contact@revoneo.com>"

ENV APP_ROOT=/node

WORKDIR $APP_ROOT

RUN apk -Uuv add groff less python3 py3-pip \
&& pip install awscli \
&& apk del py-pip \
&& rm /var/cache/apk/*

ONBUILD COPY package.json ${APP_ROOT}/
ONBUILD COPY yarn.lock ${APP_ROOT}/

ONBUILD RUN yarn install --frozen-lockfile --ignore-optional

CMD ["yarn", "start"]

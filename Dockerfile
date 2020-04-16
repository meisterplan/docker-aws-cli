FROM alpine:3.11

# Install common cli tools
RUN apk add --no-cache curl python3 jq

# Install AWS CLI v1
ENV AWS_CLI_VERSION=1.18.39
RUN pip3 install awscli==${AWS_CLI_VERSION} --upgrade

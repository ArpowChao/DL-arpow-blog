# 使用合適的 Ruby 基礎映像檔
FROM ruby:latest
WORKDIR /app
COPY Gemfile* /app/
RUN bundle install --jobs 4
COPY . /app
# CMD ["jekyll", "build"] # 因為我們用 compose 運行，所以註解掉了

FROM ruby:2.7.0

# Copy application code
COPY api-faker /opt/api-faker
# Change to the application's directory
WORKDIR /opt/api-faker

# Set Rails environment to production
# ENV RAILS_ENV production

# Install gems, nodejs and precompile the assets
RUN bundle install 

RUN rails db:create
RUN rails db:migrate
RUN rails db:seed

CMD ["rails", "server", "-b", "0.0.0.0"]


# Start the application server
# ENTRYPOINT ['rails server -b 0.0.0.0']
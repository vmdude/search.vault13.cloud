FROM searxng/searxng:2025.7.11-d8c74c8
COPY src/searxng.min.css /usr/local/searxng/searx/static/themes/simple/css/searxng.min.css
COPY src/background.jpg /usr/local/searxng/searx/static/themes/simple/css/images/background.jpg
COPY src/searxng.png /usr/local/searxng/searx/static/themes/simple/img/searxng.png
RUN cd /usr/local/searxng/searx/static/themes/simple/css/ && \
    rm -f searxng.min.css.* && \
    gzip -9 -k searxng.min.css
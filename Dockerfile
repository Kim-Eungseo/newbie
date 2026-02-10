FROM alpine:3.19

COPY main.tex /workspace/

RUN apk add --no-cache \
    texlive \
    texlive-luatex \
    texmf-dist-fontsextra

RUN apk add --no-cache python3 py3-pip

COPY *.tex /workspace/

WORKDIR /workspace

CMD ["lualatex", "main.tex"]

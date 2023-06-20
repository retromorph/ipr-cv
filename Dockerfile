FROM debian

RUN apt update
RUN apt upgrade
RUN apt install --yes --no-install-recommends \
    texlive-xetex \
    texlive-binaries \
    texlive-latex-extra \
    texlive-fonts-extra \
    dvipng \
    texlive-latex-recommended \
    texlive-base \
    texlive-pictures \
    texlive-lang-cyrillic \
    texlive-science \
    cm-super \
    fonts-crosextra-carlito

COPY build.sh /build.sh
COPY cv /.

ENTRYPOINT ["bash", "build.sh" ]
# TODO: the screen doesn't seem to clear itself... Why is that? If we just use the image I created with a volume, it works without issues :/ 
FROM themkat/mdp:1.0

ADD slides.md /slides/slides.md

ENTRYPOINT ["mdp"]
CMD ["/slides/slides.md"]

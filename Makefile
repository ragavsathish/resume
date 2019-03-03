filename=main
docker_exec=docker run --rm -t -v miktex:/miktex/.miktex \
	-v ${CURDIR}:/miktex/work \
        miktex/miktex	

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg}

pdf: 
	${docker_exec} xelatex ${filename}.tex

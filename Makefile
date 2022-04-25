
env:
	mamba env create -f environment.yml
	conda activate ligo
	python -m ipykernel install --user --name ligo --display-name "python2"

html:
	jupyter-book build .


html-hub:
	jupyter-book config sphinx .
	sphinx-build  . _build/html -D html_baseurl=${JUPYTERHUB_SERVICE_PREFIX}/proxy/absolute/8000
	cd _build/html
	python -m SimpleHTTPServer 8000


.PHONY: clean
clean:
	rm -rf _build/html/
	rm figures/*.png
	rm audio/*.wav
	rm data/GW150914_data.csv


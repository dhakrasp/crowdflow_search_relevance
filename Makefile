venv:
	virtualenv -p python3.6 venv

dep:
	pip3 install -r requirements.txt
	
active:
	source venv/bin/activate
	
kernel:
	ipython kernel install --user --name=venv

download:
	echo Download glove file from https://drive.google.com/uc?id=1TUPSMBCxGIa6SsfljtXEkSGrBK8I2Vgd&export=download
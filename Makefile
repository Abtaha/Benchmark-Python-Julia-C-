all:
	@g++ matrix.cpp -larmadillo -w -o matrix_cpp
	@./matrix_cpp
	@python3 matrix.py
	@julia matrix.jl

dependencies:
	sudo dnf install python3 g++ cmake openblas-devel lapack-devel arpack-devel SuperLU-devel armadillo-devel
	pip3 install matplotlib --user

clean:
	@rm matrix_cpp -f
	@rm "time taken.txt" -f
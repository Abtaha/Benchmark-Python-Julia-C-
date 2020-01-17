#include <iostream>
#include <fstream>
#include <string>

#include <armadillo>

using namespace std;
using namespace arma;

void nIncrease(mat matrix){
    inv(matrix);
    matrix.t();
}

int main(){
    cout << "C++ Started\n";
    for (int i = 10000; i <= 20000; i+=2000){
        mat randomMat = randu<mat>(i, i);

        const clock_t begin_time = clock();
        nIncrease(randomMat);
        cout << float(clock () - begin_time) /  CLOCKS_PER_SEC << endl;
    }

    float sum = 0;
    for (int i = 0; i <= 5; i++){
        mat randomMat = randu<mat>(i, i);

        const clock_t begin_time = clock();
        nIncrease(randomMat);
        sum += float(clock () - begin_time) /  CLOCKS_PER_SEC;
    }

    
    std::string averageTime = std::to_string(sum / 5);

    ofstream MyFile("time taken.txt");
    MyFile << "C++: " + averageTime + "\n";
    MyFile.close();

    cout << "C++ Ended\n\n\n";

    return 0;
}
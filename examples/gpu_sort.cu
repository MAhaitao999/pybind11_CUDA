#include <thrust/device_vector.h>
#include <thrust/sort.h>
#include <thrust/functional.h>

int main(int argc, char *argv[]) {

    thrust::device_vector<int> data(8);
	data[0] = 6;
	data[1] = 3;
	data[2] = 7;
	data[3] = 5;
	data[4] = 9;
	data[5] = 0;
	data[6] = 8;
	data[7] = 1;

	thrust::sort(data.begin(), data.end());

	std::cout << "ascending" << std::endl;
	for (int i = 0; i < data.size(); i++) {
	    std::cout << data[i] << std::endl;
	}

	thrust::sort(data.begin(), data.end(), thrust::greater<int>());
	std::cout << "descending" << std::endl;
	for (int i = 0; i < data.size(); i++) {
	    std::cout << data[i] << std::endl;
	}

	return 0;
}

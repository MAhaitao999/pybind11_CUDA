#include <sstream>
#include <iostream>
#include <thrust/sort.h>
#include <cuda_runtime.h>
#include <pybind11/pybind11.h>
#include <pybind11/numpy.h>
#include <pybind11/stl.h>

template <typename T>
void sort_in_gpu(T *vec, int N) {
    thrust::sort(vec, vec + N);
	// for (int i = 0; i < N; i++) {
	//     std::cout << vec[i] << std::endl;
	// }
}

template <typename T>
void map_array(pybind11::array_t<T> vec) {
    pybind11::buffer_info ha = vec.request();
	if (ha.ndim != 1) {
		std::stringstream strstr;
		strstr << "ha.ndim != 1" << std::endl;
		strstr << "ha.ndim: " << ha.ndim << std::endl;
		throw std::runtime_error(strstr.str());
	}
	std::cout << "Test-----------------" << std::endl;

	int size = ha.shape[0];
	
	T* ptr = reinterpret_cast<T*>(ha.ptr);
	sort_in_gpu(ptr, size);
}

/*
int main(int argc, char *argv[]) {

	int a = 100;
	std::cout << "a is: " << a << std::endl;

	double A[1000] = {9, 2, 3, 6, 4, 8, 9};
	sort_in_gpu(A, 1000);
	// std::cout << A << std::endl;
	// std::cout << A + 1 << std::endl;

    return 0;
}
*/

PYBIND11_MODULE(gpu_library, m) {
    m.def("gpu_sort", map_array<double>);
}

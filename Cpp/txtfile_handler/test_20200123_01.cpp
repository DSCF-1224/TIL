// =================================================================================================================================
// * target
//   * to handle CSV file
// =================================================================================================================================

#include <iostream>
#include <string>
#include <Windows.h>

#include "CSV.hpp"

using namespace std::literals;

int main (void)
{
	const std::string caption_check_point = "Check Point"s;

	CSV::ifstream ifs_CSV {};

	ifs_CSV.OpenFile( "test_20200123_01.csv"s );

	MessageBoxA(nullptr, "The target file was opened.", caption_check_point.c_str(), MB_ICONINFORMATION | MB_OK);

	ifs_CSV.CloseFile();

	MessageBoxA(nullptr, "The target file was closed.", caption_check_point.c_str(), MB_ICONINFORMATION | MB_OK);

	return EXIT_SUCCESS;
}

// =================================================================================================================================
// EOF
// =================================================================================================================================

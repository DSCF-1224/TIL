// =================================================================================================================================
// * target
//   * to handle text file
// * tested compiler version
//   * g++ (Rev1, Built by MSYS2 project) 7.2.0
// * reference
//   * https://qiita.com/takano_tak/items/acf34b4a30cb974bab65 備忘録：C++のStringでファイルのパス、ファイル名、拡張子の取得 - Qiita
//   * https://qiita.com/takoyaki3/items/92d45ab1cab0bf956396  C++からCSVファイルを読み取る（クラス化） - Qiita
// =================================================================================================================================

#include "txtfile_handler.hpp"

inline std::string txtfile_handler::support::GenerateMemberFunctionName (void) const noexcept
{
	return "txtfile_handler::support"s;
}



inline std::string txtfile_handler::support::GenerateMemberFunctionName (const std::string & function_name) const noexcept
{
	if   ( function_name.empty() )
	{
		return this->GenerateMemberFunctionName();
	}
	else
	{
		return this->GenerateMemberFunctionName() + function_name;
	}
}



inline std::string txtfile_handler::support::GenerateMessageWithFilePath (const std::string & message, const std::string & file_path) const
{
	return message + "\ngiven path>\n"s + file_path;
}


inline void txtfile_handler::support::ShowException (const std::exception & obj_exception, const std::string & function_name, const std::string & caption, const bool allow_msgbox) const
{
	// STEP.01
	// generate the message
	const std::string message
		= "[function]"s
		+ function_name
		+ "\n\n"s
		+ obj_exception.what()
	;

	// STEP.02
	// print what exception detected to the standard C error output stream
	std::cerr << message << std::endl;

	// STEP.03
	// show what exception detected using message box
	if (allow_msgbox)
	{
		MessageBoxA(nullptr, message.c_str(), caption.c_str(), MB_ICONEXCLAMATION | MB_OK);
	}

}



inline void txtfile_handler::support::ShowException (const std::exception & obj_exception, const std::string & function_name, const bool allow_msgbox) const
{
	this->ShowException(obj_exception, function_name, this->GenerateMemberFunctionName(), allow_msgbox);
}



inline void txtfile_handler::support::CheckFilePath (const std::string file_path, const bool allow_msgbox) const
{
	try
	{
		if ( file_path.empty() )
		{
			throw std::runtime_error("The target file path is EMPTY !"s);
		}
	}
	catch (const std::runtime_error & obj_exception)
	{
		this->ShowException(obj_exception, this->GenerateMemberFunctionName("CheckFilePath"s), allow_msgbox);
		std::exit(EXIT_FAILURE);
	}
}



inline std::string txtfile_handler::support::GetFileNameFromPath (const std::string & file_path, const bool allow_msgbox) const
{
	// STEP.01
	// check given file path
	this->CheckFilePath(file_path, allow_msgbox);

	// STEP.02
	// get the index of the last component separator of the given path
	auto index = file_path.find_last_of("\\");

	try
	{
		if ( index == std::string::npos )
		{
			throw std::runtime_error( this->GenerateMessageWithFilePath("Failed to detect component separator in the given file path !"s, file_path) );
		}

		if ( index == file_path.size() )
		{
			throw std::runtime_error( this->GenerateMessageWithFilePath("A file name may not be included in the given file."s, file_path) );
		}
	}
	catch (const std::exception & obj_exception)
	{
		this->ShowException(obj_exception, this->GenerateMemberFunctionName("GetFileNameFromPath"s), allow_msgbox);
	}

	/* TRUE_END */
	return file_path.substr( index + 1 );
}



inline std::string txtfile_handler::support::GetFileExtension (const std::string & file_path, const bool allow_msgbox) const
{
	// STEP.01
	// get the index of the dot of the given path
	auto index = file_path.find_last_of("\\");

	try
	{
		if ( index == std::string::npos )
		{
			throw std::runtime_error( this->GenerateMessageWithFilePath("Failed to detect a dot in the given file path !"s, file_path) );
		}

		if ( index == file_path.size() )
		{
			throw std::runtime_error( this->GenerateMessageWithFilePath("A file extension may not be included in the given file."s, file_path) );
		}
	}
	catch (const std::exception & obj_exception)
	{
		this->ShowException(obj_exception, this->GenerateMemberFunctionName("GetFileExtension"s), allow_msgbox);
	}

	/* TRUE_END */
	return file_path.substr( index + 1 );
}

// =================================================================================================================================
// EOF
// =================================================================================================================================

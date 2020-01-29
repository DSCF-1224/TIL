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



inline std::string txtfile_handler::cstdio::GenerateMemberName (void) const noexcept
{
	return txtfile_handler::support::GenerateMemberNameBase("cstdio"s);
}



inline std::string txtfile_handler::cstdio::GenerateMemberName (const std::string & function_name) const noexcept
{
	if   ( function_name.empty() )
	{
		return this->GenerateMemberName(nullptr);
	}
	else
	{
		return this->GenerateMemberName(nullptr) + "::"s + function_name;
	}
}



inline void txtfile_handler::cstdio::ShowException (const std::exception & obj_exception, const std::string & function_name, const bool allow_msgbox) const
{
	support::ShowException(obj_exception, this->GenerateMemberName(function_name), this->GenerateMemberName(), allow_msgbox);
}



// Deligate Constructor
explicit txtfile_handler::cstdio::cstdio (void)
{
	/* nothing to do in this block scope */
}


// =================================================================================================================================
// EOF
// =================================================================================================================================

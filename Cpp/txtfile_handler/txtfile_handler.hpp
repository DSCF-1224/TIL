// =================================================================================================================================
// * target
//   * to handle text file
// * tested compiler version
//   * g++ (Rev1, Built by MSYS2 project) 7.2.0
// * reference
//   * https://qiita.com/takano_tak/items/acf34b4a30cb974bab65 備忘録：C++のStringでファイルのパス、ファイル名、拡張子の取得 - Qiita
//   * https://qiita.com/takoyaki3/items/92d45ab1cab0bf956396  C++からCSVファイルを読み取る（クラス化） - Qiita
// =================================================================================================================================

#ifndef TXT_20200129_071027_HPP
#define TXT_20200129_071027_HPP

#include <cstdio>
// std::FILE

#include <fstream>
// std::ifstream

#include <iostream>
// std::cerr

#include <string>
// std::string
// namespace std::literals;

#include <Windows.h>
// int __stdcall MessageBoxA(HWND hWnd, LPCSTR lpText, LPCSTR lpCaption, UINT uType)

namespace txtfile_handler
{
	using namespace std::literals;

	class support
	{
		/* Member Function */
		private:
			inline std::string GenerateMemberName          (void) const noexcept;
			inline std::string GenerateMemberName          (const std::string & member_name) const noexcept;
			inline std::string GenerateMessageWithFilePath (const std::string & message, const std::string & file_path) const;
			inline std::string GetFileExtension            (const std::string & file_path, const bool allow_msgbox) const;
			inline std::string GetFileNameFromPath         (const std::string & file_path, const bool allow_msgbox) const;
			inline void        ShowException               (const std::exception & obj_exception, const std::string & function_name, const bool allow_msgbox) const;
		public:
			inline std::string GenerateMemberNameBase (const std::string & member_name) const;
			inline void        CheckFilePath          (const std::string file_path, const bool allow_msgbox) const;
			inline void        ShowException          (const std::exception & obj_exception, const std::string & function_name, const std::string & caption, const bool allow_msgbox) const;
	};

	class cstdio:
		public support
	{
		/* Data Member */
		private:
			std::FILE   *file_pointer;
			std::string  file_path;
			std::string  file_name;

		/* Member Function */
		private:
			inline std::string GenerateMemberName (void) const noexcept;
			inline std::string GenerateMemberName (const std::string & function_name) const noexcept;
			inline void        SetFileName        (void);
			inline void        ShowException      (const std::exception & obj_exception, const std::string & function_name, const bool allow_msgbox) const;
		public:
			explicit cstdio (void);
	};
}
// namespace TXT

#endif // TXT_20200129_071027_HPP

// =================================================================================================================================
// EOF
// =================================================================================================================================

// =================================================================================================================================
// * target
//   * to handle CSV file
// =================================================================================================================================

#include <fstream>
// std::ifstream

#include <iostream>
// std::cerr

#include <string>
// std::string
// namespace std::literals;

#include <Windows.h>
// int __stdcall MessageBoxA(HWND hWnd, LPCSTR lpText, LPCSTR lpCaption, UINT uType)

namespace CSV
{
	using namespace std::literals;

	namespace Support
	{
		namespace MsgBox
		{
			int Exception (const std::string & msg)
			{
				return MessageBoxA(nullptr, msg.c_str(), "CSV::Support::MsgBox::Exception", MB_ICONEXCLAMATION | MB_OK);
			}
		}
		// namespace MsgBox
		
		namespace Show
		{
			void ExceptionWhat ( const std::exception & obj_exception )
			{
				Support::MsgBox::Exception( obj_exception.what() );
			
				std::cerr << obj_exception.what() << '\n';

				return;
			}
		}
		// namespace Show
	}
	// namespace Support

	class ifstream
	{
		/* data member */
		private:
			std::string   path_file;
			std::ifstream obj;

		public:
			bool is_open (void) const noexcept
			{
				return this->obj.is_open();
			}

		private:
			void CheckPath (void)
			{
				try
				{
					if ( this->path_file.empty() )
					{
						throw std::runtime_error( "The path of the target file is EMPTY !"s );
					}
				}
				catch (const std::runtime_error & obj_exception)
				{
					Support::Show::ExceptionWhat( obj_exception );
					exit(1);
				}
			}

		private:
			void OpenFile (void)
			{
				// STEP.01
				// check the path of the target CSV file
				this->CheckPath();

				// STEP.02
				// try to open the target CSV file
				this->obj.open( this->path_file );

				// STEP.03
				// check whether it has succeeded to open the target CSV file
				try
				{
					if ( ! this->is_open() )
					{
						throw std::runtime_error( "Failed to open the target CSV file !\nPATH>"s + this->path_file );
					}
				}
				catch (const std::runtime_error & obj_exception)
				{
					Support::Show::ExceptionWhat( obj_exception );
					exit(1);
				}
			}

		public:
			void OpenFile (const std::string & path_file_open)
			{
				// STEP.01
				// assign the given file path to the instance
				this->path_file = path_file_open;

				// STEP.02
				// try to open the target CSV file
				this->OpenFile();
			}

		public:
			void CloseFile (void)
			{
				if ( this->is_open() )
				{
					this->obj.close();
				}
			}

		public:
			ifstream (const std::string & path_file_open)
			{
				this->OpenFile(path_file_open);
			}
	};
	
}
 // namespace CSV


// =================================================================================================================================
// EOF
// =================================================================================================================================
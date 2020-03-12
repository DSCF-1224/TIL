// =================================================================================================================================
// * target
//   * to handle coordinate
// * tested compiler version
//   * g++ (Rev1, Built by MSYS2 project) 7.2.0
// =================================================================================================================================

#ifndef COORDINATE_HPP_20200310_064126_INCLUDED
#define COORDINATE_HPP_20200310_064126_INCLUDED

namespace coordinate
{
	namespace rectangle
	{
		template <typename T>
		class D2
		{
			/* data */
			public:
				T first;
				T second;

			/* constructor */
			D2 (T const & first, T const & second);
		};

		template <typename T>
		class D3
		{
			/* data */
			public:
				T first;
				T second;
				T third;

			/* constructor */
			D3 (T const & first, T const & second, T const & third);
		};
	} // namespace rectangle
	
} // namespace coordinate



template <typename T>
coordinate::rectangle::D2<T>::D2 (T const & first, T const & second)
{
	this->first  = first;
	this->second = second;
}



template <typename T>
coordinate::rectangle::D3<T>::D3 (T const & first, T const & second, T const & third)
{
	this->first  = first;
	this->second = second;
	this->third  = third;
}


#endif　/* COORDINATE_HPP_20200310_064126_INCLUDED */


// =================================================================================================================================
// EOF
// =================================================================================================================================
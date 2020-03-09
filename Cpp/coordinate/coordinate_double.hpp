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
		class D2
		{
			/* data */
			public:
				double first;
				double second;

			/* constructor */
			explicit D2 (double const & first, double const & second);
			explicit D2 (double const & arg);
		};

		class D3
		{
			/* data */
			public:
				double first;
				double second;
				double third;

			/* constructor */
			explicit D3 (double const & first, double const & second, double const & third);
			explicit D3 (double const & arg);
		};
	} // namespace rectangle
	
} // namespace coordinate



explicit coordinate::rectangle::D2::D2 (double const & first, double const & second)
{
	this->first  = first;
	this->second = second;
}



explicit coordinate::rectangle::D2::D2 (double const & arg)
{
	this->first  = arg;
	this->second = arg;
}



explicit coordinate::rectangle::D3::D3 (double const & first, double const & second, double const & third)
{
	this->first  = first;
	this->second = second;
	this->third  = third;
}



explicit coordinate::rectangle::D3::D3 (double const & arg)
{
	this->first  = arg;
	this->second = arg;
	this->third  = arg;
}


#endif　/* COORDINATE_HPP_20200310_064126_INCLUDED */


// =================================================================================================================================
// EOF
// =================================================================================================================================

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
				double * ptr_first;
				double * ptr_second;

			/* constructor */
			public:
				explicit D2 (const double first = 0.0, const double second = 0.0);
			public:
				D2(const D2 &  source); // copy
				D2(      D2 && source); // move

			/* destructor */
			private:
				~D2 (void);

			/* operator */
			public:
				D2 & operator = (const D2 &  rhs); // copy
				D2   operator = (      D2 && rhs); // move



			/* implementation */
			D2 & operator = (const D2 & rhs) // copy
			{
				if (this != &rhs)
				{
					*ptr_first  = *rhs.ptr_first;
					*ptr_second = *rhs.ptr_second;
				}

				return *this;
			}

			D2 operator = (D2 && rhs) // move
			{
				delete this->ptr_first;
				delete this->ptr_second;

				this->ptr_first  = rhs.ptr_first;
				this->ptr_second = rhs.ptr_second;

				rhs.ptr_first  = nullptr;
				rhs.ptr_second = nullptr;

				return *this;
			}
		};
	} // namespace rectangle
	
} // namespace coordinate



/* constructor */
explicit coordinate::rectangle::D2::D2 (const double arg_first = 0.0, const double arg_second = 0.0):
	ptr_first  ( new double( arg_first  ) ),
	ptr_second ( new double( arg_second ) )
{
	/* nothing to do in this block scope */
}



/* copy constructor */
coordinate::rectangle::D2::D2 (const coordinate::rectangle::D2 & source):
	ptr_first  ( new double( *source.ptr_first  ) ),
	ptr_second ( new double( *source.ptr_second ) )
{
	/* nothing to do in this block scope */
}



/* move constructor */
coordinate::rectangle::D2::D2 (coordinate::rectangle::D2 && source):
	ptr_first  ( source.ptr_first  ),
	ptr_second ( source.ptr_second )
{
	source.ptr_first  = nullptr;
	source.ptr_second = nullptr;
}



/* destructor */
coordinate::rectangle::D2::~D2 (void)
{
	delete ptr_first;
	delete ptr_second;
}

#endif　/* COORDINATE_HPP_20200310_064126_INCLUDED */


// =================================================================================================================================
// EOF
// =================================================================================================================================

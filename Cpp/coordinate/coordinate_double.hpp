// =================================================================================================================================
// * target
//   * to handle coordinate
// * tested compiler version
//   * g++ (Rev1, Built by MSYS2 project) 7.2.0
// * reference
//   * https://ezoeryou.github.io/cpp17book/index.html
// =================================================================================================================================

#ifndef COORDINATE_HPP_20200310_064126_INCLUDED
#define COORDINATE_HPP_20200310_064126_INCLUDED

#include <utility>

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
			public:
				~D2 (void);

			/* operator */
			public:
				D2 & operator  = (const D2 &  rhs);          // copy     assignment
				D2   operator  = (      D2 && rhs);          // move     assignment
				D2 & operator += (const D2 &  rhs);          // compound assignment
				D2 & operator -= (const D2 &  rhs);          // compound assignment
				D2   operator +  (void) const &;             // uniary
				D2   operator -  (void) const &;             // uniary
				D2   operator -  (void) &&;                  // uniary
				D2   operator +  (const D2 &  rhs) const &;  // binary (lvalue + lvalue)
				D2   operator +  (const D2 &  rhs)       &&; // binary (rvalue + lvalue)
				D2   operator +  (      D2 && rhs) const &;  // binary (lvalue + rvalue)
				D2   operator +  (      D2 && rhs)       &&; // binary (rvalue + rvalue)



			/* constructor: implementation */
			explicit D2 (const double first = 0.0, const double second = 0.0):
				ptr_first  ( new double( first  ) ),
				ptr_second ( new double( second ) )
			{
				/* nothing to do in this block scope */
			}



			/* copy constructor: implementation */
			D2 (const D2 & source):
				ptr_first  ( new double( *source.ptr_first  ) ),
				ptr_second ( new double( *source.ptr_second ) )
			{
				/* nothing to do in this block scope */
			}



			/* move constructor: implementation */
			D2 (D2 && source)
			{
				// STEP.01
				// delete the storage of accepter
				delete ptr_first;
				delete ptr_second;

				// STEP.02
				// move the member
				this->ptr_first  = source.ptr_first;
				this->ptr_second = source.ptr_second;

				// STEP.03
				source.ptr_first  = nullptr;
				source.ptr_second = nullptr;
			}



			/* copy assignment operator: implementation */
			D2 & operator = (const D2 & rhs)
			{
				if (this != &rhs)
				{
					*ptr_first  = *rhs.ptr_first;
					*ptr_second = *rhs.ptr_second;
				}

				return *this;
			}



			/* move assignment operator: implementation */
			D2 operator = (D2 && rhs)
			{
				delete this->ptr_first;
				delete this->ptr_second;

				this->ptr_first  = rhs.ptr_first;
				this->ptr_second = rhs.ptr_second;

				rhs.ptr_first  = nullptr;
				rhs.ptr_second = nullptr;

				return *this;
			}


			/* compound assignment operator +=: implementation */
			D2 & operator += (const D2 & rhs)
			{
				*this->ptr_first  += *rhs.ptr_first;
				*this->ptr_second += *rhs.ptr_second;
			}


			/* compound assignment operator -=: implementation */
			D2 & operator -= (const D2 & rhs)
			{
				*this->ptr_first  -= *rhs.ptr_first;
				*this->ptr_second -= *rhs.ptr_second;
			}


			/* uniary operator +: lvalue: implementation */
			D2 operator + (void) const &
			{
				D2 result = D2( *this->ptr_first, *this->ptr_second );
				return result;
			}


			/* uniary operator -: lvalue: implementation */
			D2 operator - (void) const &
			{
				D2 result = D2( -(*this->ptr_first), -(*this->ptr_second) );
				return result;
			}


			/* uniary operator- : rvalue: implementation */
			D2 operator - (void) &&
			{
				auto result = std::move(*this);

				*result.ptr_first  = -(*result.ptr_first );
				*result.ptr_second = -(*result.ptr_second);

				return result;
			}


			/* binary operator +: lvalue + lvalue: implementation */
			D2 operator + (const D2 & rhs) const &
			{
				return D2( *this->ptr_first + *rhs.ptr_first, *this->ptr_first + *rhs.ptr_second );
			}


			/* binary operator +: rvalue + lvalue: implementation */
			D2 operator + (const D2 & rhs) &&
			{
				auto result = std::move(*this);
				result += rhs;
				return result;
			}


			/* binary operator +: lvalue + rvalue: implementation */
			D2 operator + (const D2 && rhs) const &
			{
				auto result = std::move(rhs);
				result += *this;
				return result;
			}


			/* binary operator +: rvalue + rvalue: implementation */
			D2 operator + (const D2 && rhs) &&
			{
				return std::move(*this) + rhs;
			}
		};
	} // namespace rectangle
	
} // namespace coordinate

#endif　/* COORDINATE_HPP_20200310_064126_INCLUDED */


// =================================================================================================================================
// EOF
// =================================================================================================================================

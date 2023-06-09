#include "duckdb/function/cast/default_casts.hpp"
#include "duckdb/function/cast/vector_cast_helpers.hpp"

namespace duckdb {

BoundCastInfo DefaultCasts::BlobCastSwitch(BindCastInput &input, const LogicalType &source, const LogicalType &target) {
	// now switch on the result type
	switch (target.id()) {
	case LogicalTypeId::VARCHAR:
		// blob to varchar
		return BoundCastInfo(&VectorCastHelpers::StringCast<string_t, duckdb::CastFromBlob>);
	case LogicalTypeId::AGGREGATE_STATE:
	case LogicalTypeId::BIT:
		return DefaultCasts::ReinterpretCast;
	default:
		return DefaultCasts::TryVectorNullCast;
	}
}

} // namespace duckdb

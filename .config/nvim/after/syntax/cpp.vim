syn keyword type i32 i64 f32 f64 u8 u32 u64
syn keyword type ivec2 ivec3 ivec4 fvec2 fvec3 fvec4 mat3 mat4 fmat3 fmat4 quat
syn keyword type irect frect box fbox
syn keyword type b2Vec2 b2World b2Draw b2Body b2BodyDef b2PolygonShape b2FixtureDef b2Fixture

syntax match type /\w\+_t\ze\W/
syntax match type /\w\+_t$/

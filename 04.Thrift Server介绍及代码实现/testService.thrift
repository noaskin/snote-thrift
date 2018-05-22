namespace java com.thrift.example.server

struct Test {
  1: required bool bool_; //required 必须填充也必须序列化
  2: optional byte byte_; //optional 不填充则不序列化
  3: i16 i16_;
  4: i32 i32_;
  5: i64 i64_;
  6: double double_;
  7: string string_;
  8: binary binary_;
}


service TestService {
  void getVoid(1:Test test);
  bool getBool(1:Test test);
  byte getByte(1:Test test);
  i16 getI16(1:Test test);
  i32 getI32(1:Test test);
  i64 getI64(1:Test test);
  double getDouble(1:Test test);
  string getString(1:Test test);
  binary getBinary(1:Test test);
}
  $ swan s0 evaluate <<EOF
  > size_type = kernel.size;
  > alloc = kernel.explicit(size_type);
  > size_type:~unref();
  > 
  > _lit = "250";
  > size = alloc.alloc();
  > size:~literal(_lit);
  > _lit:~unref();
  > size:print();
  > size:~unref();
  > 
  > alloc:~unref();
  > EOF
  250

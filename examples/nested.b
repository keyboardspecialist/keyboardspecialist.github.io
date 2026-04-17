SECTION "nested"

GET "libhdr"

LET start() = VALOF
{ LET inner(x) = VALOF
  { LET deep(y) = y + 1
    RESULTIS deep(x) * 2
  }

  writef("inner(3) = %n*n", inner(3))
  RESULTIS 0
}

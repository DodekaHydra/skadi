cdef:
  public enum Types:
    INT = 0
    FLOAT = 1
    VECTOR = 2
    VECTORXY = 3
    STRING = 4
    ARRAY = 5
    DATATABLE = 6
    INT64 = 7

  public enum Flags:
    UNSIGNED = 1 <<  0
    COORD = 1 <<  1
    NOSCALE = 1 <<  2
    ROUNDDOWN = 1 <<  3
    ROUNDUP = 1 <<  4
    NORMAL = 1 <<  5
    EXCLUDE = 1 <<  6
    XYZE = 1 <<  7
    INSIDEARRAY = 1 <<  8
    PROXYALWAYS = 1 <<  9
    VECTORELEM = 1 << 10
    COLLAPSIBLE = 1 << 11
    COORDMP = 1 << 12
    COORDMPLOWPRECISION = 1 << 13
    COORDMPINTEGRAL = 1 << 14
    CELLCOORD = 1 << 15
    CELLCOORDLOWPRECISION = 1 << 16
    CELLCOORDINTEGRAL = 1 << 17
    CHANGESOFTEN = 1 << 18
    ENCODEDAGAINSTTICKCOUNT = 1 << 19
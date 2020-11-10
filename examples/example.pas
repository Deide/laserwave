
Unit Math;

Interface

Const 
  PX_PER_METER = 14.0;
  // Number of soldat distance units per one "meter"

  ANG_PI   = 3.14159265;
  DEG_2_RAD = ANG_PI / 180;
  ANGLE_5 = DEG_2_RAD * 5;
  ANGLE_10 = DEG_2_RAD * 10;
  ANGLE_15 = ANG_PI / 12;
  ANGLE_30 = ANG_PI / 6;
  ANGLE_40 = DEG_2_RAD * 40;
  ANGLE_45 = ANG_PI / 4;
  ANGLE_60 = ANG_PI / 3;
  ANGLE_70 = DEG_2_RAD * 70;
  ANGLE_80 = DEG_2_RAD * 80;
  ANGLE_90 = ANG_PI / 2;
  ANGLE_100 = DEG_2_RAD * 100;
  ANGLE_110 = DEG_2_RAD * 110;
  ANG_2PI  = ANG_PI * 2;

Function ShortenAngle(x: single): single;

//function arctan2(X, Y: single): single; external 'arctan2@SCE.dll cdecl'; 

//function arccos(X: single): single; external 'arccos@SCE.dll cdecl';


//function power(Base, Exponent: double): double; external 'power@SCE.dll cdecl';

Function sqr(x: single): single;

Function dot(x1, y1, x2, y2: single): single;

Function ToRangeI(min, x, max: integer): integer;

Function ToRangeB(min, x, max: byte): byte;

Function ToRangeF(min, x, max: single): single;

Function IsBetween(a, b, c: integer): boolean;

Function absi(x: smallint): smallint;

Function sgn(x: single): shortint;

Implementation

Function sqr(x: single): single;
Begin
  Result := x * x;
End;

Function ShortenAngle(x: single): single;
Begin
  While x > ANG_PI Do
    x := x - ANG_2PI;
  While x < - ANG_PI Do
    x := x + ANG_2PI;
  Result := x;
End;

Function ToRangeI(min, x, max: integer): integer;
Begin
  If x < min Then Result := min
  Else
    If x > max Then Result := max
  Else
    Result := x;
End;

Function ToRangeB(min, x, max: byte): byte;
Begin
  If x < min Then Result := min
  Else
    If x > max Then Result := max
  Else
    Result := x;
End;

Function ToRangeF(min, x, max: single): single;
Begin
  If x < min Then Result := min
  Else
    If x > max Then Result := max
  Else
    Result := x;
End;

Function IsBetween(a, b, c: integer): boolean;
Begin
  Result := (a <= b) = (c >= b);
End;

Function absi(x: smallint): smallint;
Begin
  If x >= 0 Then Result := x
  Else Result := -x;
End;

Function sgn(x: single): shortint;
Begin
  If x > 0 Then Result := 1
  Else
    If x < 0 Then Result := -1
  Else
    Result := 0;
End;

Function dot(x1, y1, x2, y2: single): single;
Begin
  result := x1 * x2 + y1 * y2;
End;

Begin
End.

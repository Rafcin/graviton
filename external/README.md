# ascint64
```
Subroutine ascint64: This method converts a string of characters to an equivalent 8-byte (quad/dword) value. The binary value of the converted ASCII string is returned in the X0 register. If the numeric string contains a number that is too large (or too small) to fit in a quad, the Over Flow is set to 1 and the X0 register returns 0.

X0: Must point to a null terminated string that is a valid signed 64 bit decimal number
LR: Contains the return address

Returned register contents:
X0: signed quad result
ALL AAPCS Mandated Registers are preserved
```

# getstring
```
Subroutine getstring will read a string of characters terminated by a null

X0: Points to first byte of buffer to receive the string
X1: Maximum number of bytes in above buffer
LR: Contains the return address

Returned register contents:
All registers are preserved,cxcept X0. (String_Length???)
```

# hex64asc
```
Subroutine hex64asc: This method will display a 64-bit register in hex digits 

R0: Contains the value to be converted to ascii (hex)
R2: Number of nibbles to be displayed (from right side of R0) Note: If X2=0 or X2>16, leading zeroes (on left) will not be displayed.
LR: Contains the return address

All registers are preserved.
```

# int64asc
```
Subroutine int64asc: This method converts a binary quad to a printable string of ASCII characters. You have to provide the address of a string that is large enough to hold the converted value. Usually a string of 21 bytes is more than sufficient to allow for a sign as well as the largest possible value a quad could be.

X0: Contains the binary (signed) value to be converted to ascii
X1: Must point to address of a string large enough to hold the converted value.
LR: Contains the return address

Registers X0 - X10 are modified and not preserved
```

# putch
```
Subroutine putch: Provided a pointer to a character, putch will display the character to the terminal.

X0: Must point to a character byte in memory
LR: Must contain the return address
All registers are preserved, except X0, X1, X2, and X8
```

# putstring
```
Subroutine putstring: Provided a pointer to a null terminated string, putstring will display the string to the terminal
X0: Must point to a null terminated string
LR: Must contain the return address
All registers are preserved, except X0, X1, X2, and X8.
```
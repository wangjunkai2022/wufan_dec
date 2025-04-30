package com.google.zxing.oned;

import external.org.apache.commons.lang3.d;
/* loaded from: classes2.dex */
public class CodaBarWriter extends OneDimensionalCodeWriter {
    public CodaBarWriter() {
        super(20);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public byte[] encode(String str) {
        int i2;
        if (CodaBarReader.arrayContains(new char[]{'A', 'B', 'C', 'D'}, Character.toUpperCase(str.charAt(0)))) {
            if (CodaBarReader.arrayContains(new char[]{'T', 'N', '*', 'E'}, Character.toUpperCase(str.charAt(str.length() - 1)))) {
                int i4 = 20;
                char[] cArr = {'/', ':', '+', d.f65364a};
                for (int i5 = 1; i5 < str.length() - 1; i5++) {
                    if (Character.isDigit(str.charAt(i5)) || str.charAt(i5) == '-' || str.charAt(i5) == '$') {
                        i4 += 9;
                    } else if (!CodaBarReader.arrayContains(cArr, str.charAt(i5))) {
                        throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i5) + '\'');
                    } else {
                        i4 += 10;
                    }
                }
                byte[] bArr = new byte[i4 + (str.length() - 1)];
                int i6 = 0;
                for (int i7 = 0; i7 < str.length(); i7++) {
                    char upperCase = Character.toUpperCase(str.charAt(i7));
                    if (i7 == str.length() - 1) {
                        if (upperCase == '*') {
                            upperCase = 'C';
                        } else if (upperCase == 'E') {
                            upperCase = 'D';
                        }
                    }
                    int i8 = 0;
                    while (true) {
                        char[] cArr2 = CodaBarReader.ALPHABET;
                        if (i8 >= cArr2.length) {
                            i2 = 0;
                            break;
                        } else if (upperCase == cArr2[i8]) {
                            i2 = CodaBarReader.CHARACTER_ENCODINGS[i8];
                            break;
                        } else {
                            i8++;
                        }
                    }
                    int i9 = 0;
                    byte b4 = 1;
                    while (true) {
                        int i10 = 0;
                        while (i9 < 7) {
                            bArr[i6] = b4;
                            i6++;
                            if (((i2 >> (6 - i9)) & 1) == 0 || i10 == 1) {
                                b4 = (byte) (b4 ^ 1);
                                i9++;
                            } else {
                                i10++;
                            }
                        }
                        break;
                    }
                    if (i7 < str.length() - 1) {
                        bArr[i6] = 0;
                        i6++;
                    }
                }
                return bArr;
            }
            throw new IllegalArgumentException("Codabar should end with one of the following: 'T', 'N', '*' or 'E'");
        }
        throw new IllegalArgumentException("Codabar should start with one of the following: 'A', 'B', 'C' or 'D'");
    }
}

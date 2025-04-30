package com.fasterxml.jackson.core;

import com.tencent.bugly.Bugly;
/* loaded from: classes2.dex */
public enum JsonToken {
    NOT_AVAILABLE(null, -1),
    START_OBJECT("{", 1),
    END_OBJECT("}", 2),
    START_ARRAY("[", 3),
    END_ARRAY("]", 4),
    FIELD_NAME(null, 5),
    VALUE_EMBEDDED_OBJECT(null, 12),
    VALUE_STRING(null, 6),
    VALUE_NUMBER_INT(null, 7),
    VALUE_NUMBER_FLOAT(null, 8),
    VALUE_TRUE("true", 9),
    VALUE_FALSE(Bugly.SDK_IS_DEV, 10),
    VALUE_NULL("null", 11);
    
    final int _id;
    final boolean _isBoolean;
    final boolean _isNumber;
    final boolean _isScalar;
    final boolean _isStructEnd;
    final boolean _isStructStart;
    final String _serialized;
    final byte[] _serializedBytes;
    final char[] _serializedChars;

    JsonToken(String str, int i2) {
        boolean z3 = false;
        if (str == null) {
            this._serialized = null;
            this._serializedChars = null;
            this._serializedBytes = null;
        } else {
            this._serialized = str;
            char[] charArray = str.toCharArray();
            this._serializedChars = charArray;
            int length = charArray.length;
            this._serializedBytes = new byte[length];
            for (int i4 = 0; i4 < length; i4++) {
                this._serializedBytes[i4] = (byte) this._serializedChars[i4];
            }
        }
        this._id = i2;
        this._isBoolean = i2 == 10 || i2 == 9;
        this._isNumber = i2 == 7 || i2 == 8;
        boolean z4 = i2 == 1 || i2 == 3;
        this._isStructStart = z4;
        boolean z5 = i2 == 2 || i2 == 4;
        this._isStructEnd = z5;
        if (!z4 && !z5 && i2 != 5 && i2 != -1) {
            z3 = true;
        }
        this._isScalar = z3;
    }

    public final byte[] asByteArray() {
        return this._serializedBytes;
    }

    public final char[] asCharArray() {
        return this._serializedChars;
    }

    public final String asString() {
        return this._serialized;
    }

    public final int id() {
        return this._id;
    }

    public final boolean isBoolean() {
        return this._isBoolean;
    }

    public final boolean isNumeric() {
        return this._isNumber;
    }

    public final boolean isScalarValue() {
        return this._isScalar;
    }

    public final boolean isStructEnd() {
        return this._isStructEnd;
    }

    public final boolean isStructStart() {
        return this._isStructStart;
    }
}

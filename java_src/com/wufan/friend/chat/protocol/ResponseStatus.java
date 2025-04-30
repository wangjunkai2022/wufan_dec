package com.wufan.friend.chat.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes2.dex */
public enum ResponseStatus implements Internal.EnumLite {
    UNKNOWN_RS(0),
    OK(1),
    NON_SUPPORT_SERVICE(2),
    INTERNAL_EXCEPTION(3),
    UNAUTHORIZED(4),
    UNRECOGNIZED(-1);
    
    public static final int INTERNAL_EXCEPTION_VALUE = 3;
    public static final int NON_SUPPORT_SERVICE_VALUE = 2;
    public static final int OK_VALUE = 1;
    public static final int UNAUTHORIZED_VALUE = 4;
    public static final int UNKNOWN_RS_VALUE = 0;
    private static final Internal.EnumLiteMap<ResponseStatus> internalValueMap = new Internal.EnumLiteMap<ResponseStatus>() { // from class: com.wufan.friend.chat.protocol.ResponseStatus.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: a */
        public ResponseStatus findValueByNumber(int i2) {
            return ResponseStatus.forNumber(i2);
        }
    };
    private final int value;

    ResponseStatus(int i2) {
        this.value = i2;
    }

    public static ResponseStatus forNumber(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            return null;
                        }
                        return UNAUTHORIZED;
                    }
                    return INTERNAL_EXCEPTION;
                }
                return NON_SUPPORT_SERVICE;
            }
            return OK;
        }
        return UNKNOWN_RS;
    }

    public static Internal.EnumLiteMap<ResponseStatus> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static ResponseStatus valueOf(int i2) {
        return forNumber(i2);
    }
}

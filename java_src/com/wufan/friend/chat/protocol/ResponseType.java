package com.wufan.friend.chat.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes2.dex */
public enum ResponseType implements Internal.EnumLite {
    UNDEFINED_CT(0),
    RESPONSE(1),
    NOTIFICATION(2),
    UNRECOGNIZED(-1);
    
    public static final int NOTIFICATION_VALUE = 2;
    public static final int RESPONSE_VALUE = 1;
    public static final int UNDEFINED_CT_VALUE = 0;
    private static final Internal.EnumLiteMap<ResponseType> internalValueMap = new Internal.EnumLiteMap<ResponseType>() { // from class: com.wufan.friend.chat.protocol.ResponseType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: a */
        public ResponseType findValueByNumber(int i2) {
            return ResponseType.forNumber(i2);
        }
    };
    private final int value;

    ResponseType(int i2) {
        this.value = i2;
    }

    public static ResponseType forNumber(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return null;
                }
                return NOTIFICATION;
            }
            return RESPONSE;
        }
        return UNDEFINED_CT;
    }

    public static Internal.EnumLiteMap<ResponseType> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static ResponseType valueOf(int i2) {
        return forNumber(i2);
    }
}

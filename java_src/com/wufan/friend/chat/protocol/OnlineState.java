package com.wufan.friend.chat.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes2.dex */
public enum OnlineState implements Internal.EnumLite {
    ONLINE(0),
    INVISIBLE(1),
    OFFLINE(2),
    UNRECOGNIZED(-1);
    
    public static final int INVISIBLE_VALUE = 1;
    public static final int OFFLINE_VALUE = 2;
    public static final int ONLINE_VALUE = 0;
    private static final Internal.EnumLiteMap<OnlineState> internalValueMap = new Internal.EnumLiteMap<OnlineState>() { // from class: com.wufan.friend.chat.protocol.OnlineState.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: a */
        public OnlineState findValueByNumber(int i2) {
            return OnlineState.forNumber(i2);
        }
    };
    private final int value;

    OnlineState(int i2) {
        this.value = i2;
    }

    public static OnlineState forNumber(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return null;
                }
                return OFFLINE;
            }
            return INVISIBLE;
        }
        return ONLINE;
    }

    public static Internal.EnumLiteMap<OnlineState> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static OnlineState valueOf(int i2) {
        return forNumber(i2);
    }
}

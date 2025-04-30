package com.papa91.battle.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes4.dex */
public enum Platform implements Internal.EnumLite {
    MOBILE(0),
    PC(1),
    UNRECOGNIZED(-1);
    
    public static final int MOBILE_VALUE = 0;
    public static final int PC_VALUE = 1;
    private static final Internal.EnumLiteMap<Platform> internalValueMap = new Internal.EnumLiteMap<Platform>() { // from class: com.papa91.battle.protocol.Platform.1
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public Platform findValueByNumber(int i2) {
            return Platform.forNumber(i2);
        }
    };
    private final int value;

    Platform(int i2) {
        this.value = i2;
    }

    public static Platform forNumber(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return null;
            }
            return PC;
        }
        return MOBILE;
    }

    public static Internal.EnumLiteMap<Platform> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static Platform valueOf(int i2) {
        return forNumber(i2);
    }
}

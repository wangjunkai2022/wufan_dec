package com.papa91.battle.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes4.dex */
public enum PhoneType implements Internal.EnumLite {
    UNKNOWN(0),
    ANDROID_MOBILE(1),
    IOS_MOBILE(2),
    TV_MOBILE(3),
    WINDOWS_PC(4),
    UNRECOGNIZED(-1);
    
    public static final int ANDROID_MOBILE_VALUE = 1;
    public static final int IOS_MOBILE_VALUE = 2;
    public static final int TV_MOBILE_VALUE = 3;
    public static final int UNKNOWN_VALUE = 0;
    public static final int WINDOWS_PC_VALUE = 4;
    private static final Internal.EnumLiteMap<PhoneType> internalValueMap = new Internal.EnumLiteMap<PhoneType>() { // from class: com.papa91.battle.protocol.PhoneType.1
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public PhoneType findValueByNumber(int i2) {
            return PhoneType.forNumber(i2);
        }
    };
    private final int value;

    PhoneType(int i2) {
        this.value = i2;
    }

    public static PhoneType forNumber(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            return null;
                        }
                        return WINDOWS_PC;
                    }
                    return TV_MOBILE;
                }
                return IOS_MOBILE;
            }
            return ANDROID_MOBILE;
        }
        return UNKNOWN;
    }

    public static Internal.EnumLiteMap<PhoneType> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static PhoneType valueOf(int i2) {
        return forNumber(i2);
    }
}

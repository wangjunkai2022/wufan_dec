package com.wufan.friend.chat.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes2.dex */
public enum Platform implements Internal.EnumLite {
    UNDEFINED_PT(0),
    ANDROID(1),
    IOS(2),
    UNRECOGNIZED(-1);
    
    public static final int ANDROID_VALUE = 1;
    public static final int IOS_VALUE = 2;
    public static final int UNDEFINED_PT_VALUE = 0;
    private static final Internal.EnumLiteMap<Platform> internalValueMap = new Internal.EnumLiteMap<Platform>() { // from class: com.wufan.friend.chat.protocol.Platform.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: a */
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
                if (i2 != 2) {
                    return null;
                }
                return IOS;
            }
            return ANDROID;
        }
        return UNDEFINED_PT;
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

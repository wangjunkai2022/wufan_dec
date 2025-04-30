package com.wufan.friend.chat.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes2.dex */
public enum ServiceName implements Internal.EnumLite {
    UNDEFINED_SN(0),
    SYSTEM(1),
    FRIEND(2),
    BATTLE(3),
    RECOMMEND(4),
    UNRECOGNIZED(-1);
    
    public static final int BATTLE_VALUE = 3;
    public static final int FRIEND_VALUE = 2;
    public static final int RECOMMEND_VALUE = 4;
    public static final int SYSTEM_VALUE = 1;
    public static final int UNDEFINED_SN_VALUE = 0;
    private static final Internal.EnumLiteMap<ServiceName> internalValueMap = new Internal.EnumLiteMap<ServiceName>() { // from class: com.wufan.friend.chat.protocol.ServiceName.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: a */
        public ServiceName findValueByNumber(int i2) {
            return ServiceName.forNumber(i2);
        }
    };
    private final int value;

    ServiceName(int i2) {
        this.value = i2;
    }

    public static ServiceName forNumber(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            return null;
                        }
                        return RECOMMEND;
                    }
                    return BATTLE;
                }
                return FRIEND;
            }
            return SYSTEM;
        }
        return UNDEFINED_SN;
    }

    public static Internal.EnumLiteMap<ServiceName> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static ServiceName valueOf(int i2) {
        return forNumber(i2);
    }
}

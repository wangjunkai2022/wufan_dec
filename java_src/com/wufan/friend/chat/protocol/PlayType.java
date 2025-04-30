package com.wufan.friend.chat.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes2.dex */
public enum PlayType implements Internal.EnumLite {
    STAND(0),
    NET_BATTLE(1),
    UNRECOGNIZED(-1);
    
    public static final int NET_BATTLE_VALUE = 1;
    public static final int STAND_VALUE = 0;
    private static final Internal.EnumLiteMap<PlayType> internalValueMap = new Internal.EnumLiteMap<PlayType>() { // from class: com.wufan.friend.chat.protocol.PlayType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: a */
        public PlayType findValueByNumber(int i2) {
            return PlayType.forNumber(i2);
        }
    };
    private final int value;

    PlayType(int i2) {
        this.value = i2;
    }

    public static PlayType forNumber(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return null;
            }
            return NET_BATTLE;
        }
        return STAND;
    }

    public static Internal.EnumLiteMap<PlayType> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static PlayType valueOf(int i2) {
        return forNumber(i2);
    }
}

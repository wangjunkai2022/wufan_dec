package com.papa91.battle.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes4.dex */
public enum RoomCategory implements Internal.EnumLite {
    NORMAL(0),
    TOURNAMENT(1),
    LIVE(2),
    UNRECOGNIZED(-1);
    
    public static final int LIVE_VALUE = 2;
    public static final int NORMAL_VALUE = 0;
    public static final int TOURNAMENT_VALUE = 1;
    private static final Internal.EnumLiteMap<RoomCategory> internalValueMap = new Internal.EnumLiteMap<RoomCategory>() { // from class: com.papa91.battle.protocol.RoomCategory.1
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public RoomCategory findValueByNumber(int i2) {
            return RoomCategory.forNumber(i2);
        }
    };
    private final int value;

    RoomCategory(int i2) {
        this.value = i2;
    }

    public static RoomCategory forNumber(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return null;
                }
                return LIVE;
            }
            return TOURNAMENT;
        }
        return NORMAL;
    }

    public static Internal.EnumLiteMap<RoomCategory> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static RoomCategory valueOf(int i2) {
        return forNumber(i2);
    }
}

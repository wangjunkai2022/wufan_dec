package com.papa91.battle.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes4.dex */
public enum RoomState implements Internal.EnumLite {
    EMPTY(0),
    WAIT(1),
    READY(2),
    START(3),
    UNRECOGNIZED(-1);
    
    public static final int EMPTY_VALUE = 0;
    public static final int READY_VALUE = 2;
    public static final int START_VALUE = 3;
    public static final int WAIT_VALUE = 1;
    private static final Internal.EnumLiteMap<RoomState> internalValueMap = new Internal.EnumLiteMap<RoomState>() { // from class: com.papa91.battle.protocol.RoomState.1
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public RoomState findValueByNumber(int i2) {
            return RoomState.forNumber(i2);
        }
    };
    private final int value;

    RoomState(int i2) {
        this.value = i2;
    }

    public static RoomState forNumber(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    return START;
                }
                return READY;
            }
            return WAIT;
        }
        return EMPTY;
    }

    public static Internal.EnumLiteMap<RoomState> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static RoomState valueOf(int i2) {
        return forNumber(i2);
    }
}

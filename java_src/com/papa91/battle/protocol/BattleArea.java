package com.papa91.battle.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes4.dex */
public enum BattleArea implements Internal.EnumLite {
    ALL(0),
    BJ(1),
    SH(2),
    GZ(3),
    UNRECOGNIZED(-1);
    
    public static final int ALL_VALUE = 0;
    public static final int BJ_VALUE = 1;
    public static final int GZ_VALUE = 3;
    public static final int SH_VALUE = 2;
    private static final Internal.EnumLiteMap<BattleArea> internalValueMap = new Internal.EnumLiteMap<BattleArea>() { // from class: com.papa91.battle.protocol.BattleArea.1
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public BattleArea findValueByNumber(int i2) {
            return BattleArea.forNumber(i2);
        }
    };
    private final int value;

    BattleArea(int i2) {
        this.value = i2;
    }

    public static BattleArea forNumber(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    return GZ;
                }
                return SH;
            }
            return BJ;
        }
        return ALL;
    }

    public static Internal.EnumLiteMap<BattleArea> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static BattleArea valueOf(int i2) {
        return forNumber(i2);
    }
}

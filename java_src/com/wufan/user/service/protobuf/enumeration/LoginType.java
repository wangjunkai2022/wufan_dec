package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Internal;
/* loaded from: classes2.dex */
public enum LoginType implements Internal.EnumLite {
    QQ(0),
    WEI_XIN(1),
    WEI_BO(2),
    MOBILE(3),
    ACCOUNT(4),
    MIX_ACCOUNT(5),
    UNRECOGNIZED(-1);
    
    public static final int ACCOUNT_VALUE = 4;
    public static final int MIX_ACCOUNT_VALUE = 5;
    public static final int MOBILE_VALUE = 3;
    public static final int QQ_VALUE = 0;
    public static final int WEI_BO_VALUE = 2;
    public static final int WEI_XIN_VALUE = 1;
    private static final Internal.EnumLiteMap<LoginType> internalValueMap = new Internal.EnumLiteMap<LoginType>() { // from class: com.wufan.user.service.protobuf.enumeration.LoginType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: a */
        public LoginType findValueByNumber(int i2) {
            return LoginType.forNumber(i2);
        }
    };
    private final int value;

    LoginType(int i2) {
        this.value = i2;
    }

    public static LoginType forNumber(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 != 5) {
                                return null;
                            }
                            return MIX_ACCOUNT;
                        }
                        return ACCOUNT;
                    }
                    return MOBILE;
                }
                return WEI_BO;
            }
            return WEI_XIN;
        }
        return QQ;
    }

    public static Internal.EnumLiteMap<LoginType> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static LoginType valueOf(int i2) {
        return forNumber(i2);
    }
}

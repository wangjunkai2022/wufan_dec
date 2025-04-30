package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Internal;
/* loaded from: classes2.dex */
public enum ContentType implements Internal.EnumLite {
    MOBILE_REG(0),
    FIND_PWD(1),
    RANDOM_PWD(2),
    BIND_MOBILE(3),
    UNBIND_MOBILE(4),
    CHECK_BIND_MOBILE(5),
    MOBILE_FIND_PWD(6),
    GENERAL_SMS_CODE(7),
    UNRECOGNIZED(-1);
    
    public static final int BIND_MOBILE_VALUE = 3;
    public static final int CHECK_BIND_MOBILE_VALUE = 5;
    public static final int FIND_PWD_VALUE = 1;
    public static final int GENERAL_SMS_CODE_VALUE = 7;
    public static final int MOBILE_FIND_PWD_VALUE = 6;
    public static final int MOBILE_REG_VALUE = 0;
    public static final int RANDOM_PWD_VALUE = 2;
    public static final int UNBIND_MOBILE_VALUE = 4;
    private static final Internal.EnumLiteMap<ContentType> internalValueMap = new Internal.EnumLiteMap<ContentType>() { // from class: com.wufan.user.service.protobuf.enumeration.ContentType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: a */
        public ContentType findValueByNumber(int i2) {
            return ContentType.forNumber(i2);
        }
    };
    private final int value;

    ContentType(int i2) {
        this.value = i2;
    }

    public static ContentType forNumber(int i2) {
        switch (i2) {
            case 0:
                return MOBILE_REG;
            case 1:
                return FIND_PWD;
            case 2:
                return RANDOM_PWD;
            case 3:
                return BIND_MOBILE;
            case 4:
                return UNBIND_MOBILE;
            case 5:
                return CHECK_BIND_MOBILE;
            case 6:
                return MOBILE_FIND_PWD;
            case 7:
                return GENERAL_SMS_CODE;
            default:
                return null;
        }
    }

    public static Internal.EnumLiteMap<ContentType> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static ContentType valueOf(int i2) {
        return forNumber(i2);
    }
}

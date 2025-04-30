package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
/* compiled from: TypedValues.java */
/* loaded from: classes.dex */
public final /* synthetic */ class b {
    static {
        String str = TypedValues.Custom.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(String str) {
        char c4;
        str.hashCode();
        switch (str.hashCode()) {
            case -1095013018:
                if (str.equals(TypedValues.Custom.S_DIMENSION)) {
                    c4 = 0;
                    break;
                }
                c4 = 65535;
                break;
            case -891985903:
                if (str.equals(TypedValues.Custom.S_STRING)) {
                    c4 = 1;
                    break;
                }
                c4 = 65535;
                break;
            case -710953590:
                if (str.equals(TypedValues.Custom.S_REFERENCE)) {
                    c4 = 2;
                    break;
                }
                c4 = 65535;
                break;
            case 64711720:
                if (str.equals("boolean")) {
                    c4 = 3;
                    break;
                }
                c4 = 65535;
                break;
            case 94842723:
                if (str.equals(TypedValues.Custom.S_COLOR)) {
                    c4 = 4;
                    break;
                }
                c4 = 65535;
                break;
            case 97526364:
                if (str.equals("float")) {
                    c4 = 5;
                    break;
                }
                c4 = 65535;
                break;
            case 1958052158:
                if (str.equals(TypedValues.Custom.S_INT)) {
                    c4 = 6;
                    break;
                }
                c4 = 65535;
                break;
            default:
                c4 = 65535;
                break;
        }
        switch (c4) {
            case 0:
                return TypedValues.Custom.TYPE_DIMENSION;
            case 1:
                return TypedValues.Custom.TYPE_STRING;
            case 2:
                return TypedValues.Custom.TYPE_REFERENCE;
            case 3:
                return TypedValues.Custom.TYPE_BOOLEAN;
            case 4:
                return 902;
            case 5:
                return 901;
            case 6:
                return 900;
            default:
                return -1;
        }
    }
}

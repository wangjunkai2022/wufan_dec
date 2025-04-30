package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
/* compiled from: TypedValues.java */
/* loaded from: classes.dex */
public final /* synthetic */ class g {
    static {
        String str = TypedValues.TransitionType.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(String str) {
        char c4;
        str.hashCode();
        switch (str.hashCode()) {
            case -1996906958:
                if (str.equals(TypedValues.TransitionType.S_TRANSITION_FLAGS)) {
                    c4 = 0;
                    break;
                }
                c4 = 65535;
                break;
            case -1992012396:
                if (str.equals("duration")) {
                    c4 = 1;
                    break;
                }
                c4 = 65535;
                break;
            case -1357874275:
                if (str.equals(TypedValues.TransitionType.S_INTERPOLATOR)) {
                    c4 = 2;
                    break;
                }
                c4 = 65535;
                break;
            case -1298065308:
                if (str.equals(TypedValues.TransitionType.S_AUTO_TRANSITION)) {
                    c4 = 3;
                    break;
                }
                c4 = 65535;
                break;
            case 3707:
                if (str.equals(TypedValues.TransitionType.S_TO)) {
                    c4 = 4;
                    break;
                }
                c4 = 65535;
                break;
            case 3151786:
                if (str.equals("from")) {
                    c4 = 5;
                    break;
                }
                c4 = 65535;
                break;
            case 1310733335:
                if (str.equals(TypedValues.TransitionType.S_PATH_MOTION_ARC)) {
                    c4 = 6;
                    break;
                }
                c4 = 65535;
                break;
            case 1839260940:
                if (str.equals(TypedValues.TransitionType.S_STAGGERED)) {
                    c4 = 7;
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
                return TypedValues.TransitionType.TYPE_TRANSITION_FLAGS;
            case 1:
                return 700;
            case 2:
                return TypedValues.TransitionType.TYPE_INTERPOLATOR;
            case 3:
                return TypedValues.TransitionType.TYPE_AUTO_TRANSITION;
            case 4:
                return 702;
            case 5:
                return 701;
            case 6:
                return 509;
            case 7:
                return TypedValues.TransitionType.TYPE_STAGGERED;
            default:
                return -1;
        }
    }

    public static int b(int i2) {
        if (i2 != 509) {
            switch (i2) {
                case 700:
                    return 2;
                case 701:
                case 702:
                    return 8;
                default:
                    switch (i2) {
                        case TypedValues.TransitionType.TYPE_INTERPOLATOR /* 705 */:
                        case TypedValues.TransitionType.TYPE_TRANSITION_FLAGS /* 707 */:
                            return 8;
                        case TypedValues.TransitionType.TYPE_STAGGERED /* 706 */:
                            return 4;
                        default:
                            return -1;
                    }
            }
        }
        return 2;
    }
}

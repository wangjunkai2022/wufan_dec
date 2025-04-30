package kotlin.math;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.join.mgps.activity.SimulatorExitPlayActivity_;
import com.join.mgps.dto.Constant;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MathJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0010\u0006\n\u0002\b$\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0012\u001a\u0011\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0019\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\n\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\f\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0019\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0018\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0000H\u0007\u001a\u0011\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0010\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0011\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0011\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0019\u0010\"\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0000H\u0087\b\u001a\u0019\u0010#\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010$\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010$\u001a\u00020\u0000*\u00020\u00002\u0006\u0010&\u001a\u00020%H\u0087\b\u001a\u0015\u0010(\u001a\u00020\u0000*\u00020\u00002\u0006\u0010'\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010)\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010)\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001f\u001a\u00020%H\u0087\b\u001a\r\u0010*\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010+\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\u0015\u0010-\u001a\u00020\u0000*\u00020\u00002\u0006\u0010,\u001a\u00020\u0000H\u0087\b\u001a\f\u0010.\u001a\u00020%*\u00020\u0000H\u0007\u001a\f\u00100\u001a\u00020/*\u00020\u0000H\u0007\u001a\u0011\u0010\u0002\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u0003\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u0004\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u0005\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u0006\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u0007\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0019\u0010\t\u001a\u0002012\u0006\u0010\b\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\n\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u000b\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\f\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\r\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u000e\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u000f\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0019\u0010\u0010\u001a\u0002012\u0006\u0010\u0001\u001a\u0002012\u0006\u0010\b\u001a\u000201H\u0087\b\u001a\u0011\u0010\u0011\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u0012\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u0013\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0018\u0010\u0015\u001a\u0002012\u0006\u0010\u0001\u001a\u0002012\u0006\u0010\u0014\u001a\u000201H\u0007\u001a\u0011\u0010\u0016\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u0017\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0010\u0010\u0018\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0007\u001a\u0011\u0010\u0019\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u001a\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u001b\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0010\u0010\u001c\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0007\u001a\u0011\u0010\u001d\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u001e\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0011\u0010\u001f\u001a\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0019\u0010\"\u001a\u0002012\u0006\u0010 \u001a\u0002012\u0006\u0010!\u001a\u000201H\u0087\b\u001a\u0019\u0010#\u001a\u0002012\u0006\u0010 \u001a\u0002012\u0006\u0010!\u001a\u000201H\u0087\b\u001a\u0015\u0010$\u001a\u000201*\u0002012\u0006\u0010\u0001\u001a\u000201H\u0087\b\u001a\u0015\u0010$\u001a\u000201*\u0002012\u0006\u0010&\u001a\u00020%H\u0087\b\u001a\u0015\u0010(\u001a\u000201*\u0002012\u0006\u0010'\u001a\u000201H\u0087\b\u001a\u0015\u0010)\u001a\u000201*\u0002012\u0006\u0010\u001f\u001a\u000201H\u0087\b\u001a\u0015\u0010)\u001a\u000201*\u0002012\u0006\u0010\u001f\u001a\u00020%H\u0087\b\u001a\r\u0010*\u001a\u000201*\u000201H\u0087\b\u001a\r\u0010+\u001a\u000201*\u000201H\u0087\b\u001a\u0015\u0010-\u001a\u000201*\u0002012\u0006\u0010,\u001a\u000201H\u0087\b\u001a\f\u0010.\u001a\u00020%*\u000201H\u0007\u001a\f\u00100\u001a\u00020/*\u000201H\u0007\u001a\u0011\u0010\u001e\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0087\b\u001a\u0019\u0010\"\u001a\u00020%2\u0006\u0010 \u001a\u00020%2\u0006\u0010!\u001a\u00020%H\u0087\b\u001a\u0019\u0010#\u001a\u00020%2\u0006\u0010 \u001a\u00020%2\u0006\u0010!\u001a\u00020%H\u0087\b\u001a\u0011\u0010\u001e\u001a\u00020/2\u0006\u0010&\u001a\u00020/H\u0087\b\u001a\u0019\u0010\"\u001a\u00020/2\u0006\u0010 \u001a\u00020/2\u0006\u0010!\u001a\u00020/H\u0087\b\u001a\u0019\u0010#\u001a\u00020/2\u0006\u0010 \u001a\u00020/2\u0006\u0010!\u001a\u00020/H\u0087\b\" \u0010\u001f\u001a\u00020%*\u00020/8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b4\u00105\u001a\u0004\b2\u00103\"!\u0010:\u001a\u00020\u0000*\u00020\u00008Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b8\u00109\u001a\u0004\b6\u00107\"!\u0010:\u001a\u000201*\u0002018Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b8\u0010<\u001a\u0004\b6\u0010;\"!\u0010?\u001a\u000201*\u0002018Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b>\u0010<\u001a\u0004\b=\u0010;\"!\u0010\u001f\u001a\u00020\u0000*\u00020\u00008Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b4\u00109\u001a\u0004\b2\u00107\"!\u0010?\u001a\u00020\u0000*\u00020\u00008Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b>\u00109\u001a\u0004\b=\u00107\"!\u0010:\u001a\u00020/*\u00020/8Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b8\u00105\u001a\u0004\b6\u0010@\"!\u0010\u001f\u001a\u000201*\u0002018Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b4\u0010<\u001a\u0004\b2\u0010;\" \u0010\u001f\u001a\u00020%*\u00020%8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b4\u0010B\u001a\u0004\b2\u0010A\"!\u0010:\u001a\u00020%*\u00020%8Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b8\u0010B\u001a\u0004\b6\u0010A¨\u0006C"}, d2 = {"", "x", "sin", "cos", "tan", "asin", "acos", "atan", "y", "atan2", "sinh", "cosh", "tanh", "asinh", "acosh", "atanh", "hypot", "sqrt", "exp", "expm1", "base", "log", "ln", "log10", "log2", "ln1p", "ceil", "floor", "truncate", "round", "abs", Constant.MD5, "a", "b", "min", SimulatorExitPlayActivity_.G, "pow", "", "n", "divisor", "IEEErem", "withSign", "nextUp", "nextDown", TypedValues.TransitionType.S_TO, "nextTowards", "roundToInt", "", "roundToLong", "", "getSign", "(J)I", "getSign$annotations", "(J)V", "getAbsoluteValue", "(D)D", "getAbsoluteValue$annotations", "(D)V", "absoluteValue", "(F)F", "(F)V", "getUlp", "getUlp$annotations", "ulp", "(J)J", "(I)I", "(I)V", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/math/MathKt")
/* loaded from: classes5.dex */
public class MathKt__MathJVMKt extends MathKt__MathHKt {
    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double IEEErem(double d4, double d5) {
        return Math.IEEEremainder(d4, d5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double abs(double d4) {
        return Math.abs(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double acos(double d4) {
        return Math.acos(d4);
    }

    @SinceKotlin(version = "1.2")
    public static final double acosh(double d4) {
        double d5 = 1;
        if (d4 < d5) {
            return Double.NaN;
        }
        if (d4 > Constants.upper_taylor_2_bound) {
            return Math.log(d4) + Constants.LN2;
        }
        Double.isNaN(d5);
        double d6 = d4 - d5;
        if (d6 >= Constants.taylor_n_bound) {
            Double.isNaN(d5);
            return Math.log(d4 + Math.sqrt((d4 * d4) - d5));
        }
        double sqrt = Math.sqrt(d6);
        if (sqrt >= Constants.taylor_2_bound) {
            double d7 = 12;
            Double.isNaN(d7);
            sqrt -= ((sqrt * sqrt) * sqrt) / d7;
        }
        return sqrt * Math.sqrt(2.0d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double asin(double d4) {
        return Math.asin(d4);
    }

    @SinceKotlin(version = "1.2")
    public static final double asinh(double d4) {
        double d5 = Constants.taylor_n_bound;
        if (d4 < d5) {
            if (d4 <= (-d5)) {
                return -asinh(-d4);
            }
            if (Math.abs(d4) >= Constants.taylor_2_bound) {
                double d6 = 6;
                Double.isNaN(d6);
                return d4 - (((d4 * d4) * d4) / d6);
            }
            return d4;
        } else if (d4 > Constants.upper_taylor_n_bound) {
            if (d4 > Constants.upper_taylor_2_bound) {
                return Math.log(d4) + Constants.LN2;
            }
            double d7 = 2;
            Double.isNaN(d7);
            double d8 = d4 * d7;
            double d9 = 1;
            Double.isNaN(d9);
            return Math.log(d8 + (d9 / d8));
        } else {
            double d10 = 1;
            Double.isNaN(d10);
            return Math.log(d4 + Math.sqrt((d4 * d4) + d10));
        }
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double atan(double d4) {
        return Math.atan(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double atan2(double d4, double d5) {
        return Math.atan2(d4, d5);
    }

    @SinceKotlin(version = "1.2")
    public static final double atanh(double d4) {
        if (Math.abs(d4) < Constants.taylor_n_bound) {
            if (Math.abs(d4) > Constants.taylor_2_bound) {
                double d5 = 3;
                Double.isNaN(d5);
                return d4 + (((d4 * d4) * d4) / d5);
            }
            return d4;
        }
        double d6 = 1;
        Double.isNaN(d6);
        Double.isNaN(d6);
        double log = Math.log((d6 + d4) / (d6 - d4));
        double d7 = 2;
        Double.isNaN(d7);
        return log / d7;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double ceil(double d4) {
        return Math.ceil(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double cos(double d4) {
        return Math.cos(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double cosh(double d4) {
        return Math.cosh(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double exp(double d4) {
        return Math.exp(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double expm1(double d4) {
        return Math.expm1(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double floor(double d4) {
        return Math.floor(d4);
    }

    private static final double getAbsoluteValue(double d4) {
        return Math.abs(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(double d4) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(float f4) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(int i2) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(long j4) {
    }

    private static final double getSign(double d4) {
        return Math.signum(d4);
    }

    public static int getSign(int i2) {
        if (i2 < 0) {
            return -1;
        }
        return i2 > 0 ? 1 : 0;
    }

    public static int getSign(long j4) {
        if (j4 < 0) {
            return -1;
        }
        return j4 > 0 ? 1 : 0;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getSign$annotations(double d4) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getSign$annotations(float f4) {
    }

    @SinceKotlin(version = "1.2")
    public static /* synthetic */ void getSign$annotations(int i2) {
    }

    @SinceKotlin(version = "1.2")
    public static /* synthetic */ void getSign$annotations(long j4) {
    }

    private static final double getUlp(double d4) {
        return Math.ulp(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getUlp$annotations(double d4) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getUlp$annotations(float f4) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double hypot(double d4, double d5) {
        return Math.hypot(d4, d5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double ln(double d4) {
        return Math.log(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double ln1p(double d4) {
        return Math.log1p(d4);
    }

    @SinceKotlin(version = "1.2")
    public static final double log(double d4, double d5) {
        if (d5 <= 0.0d || d5 == 1.0d) {
            return Double.NaN;
        }
        return Math.log(d4) / Math.log(d5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double log10(double d4) {
        return Math.log10(d4);
    }

    @SinceKotlin(version = "1.2")
    public static final double log2(double d4) {
        return Math.log(d4) / Constants.LN2;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double max(double d4, double d5) {
        return Math.max(d4, d5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double min(double d4, double d5) {
        return Math.min(d4, d5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double nextDown(double d4) {
        return Math.nextAfter(d4, Double.NEGATIVE_INFINITY);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double nextTowards(double d4, double d5) {
        return Math.nextAfter(d4, d5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double nextUp(double d4) {
        return Math.nextUp(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double pow(double d4, double d5) {
        return Math.pow(d4, d5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double round(double d4) {
        return Math.rint(d4);
    }

    @SinceKotlin(version = "1.2")
    public static int roundToInt(double d4) {
        if (Double.isNaN(d4)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        if (d4 > Integer.MAX_VALUE) {
            return Integer.MAX_VALUE;
        }
        if (d4 < Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d4);
    }

    @SinceKotlin(version = "1.2")
    public static final long roundToLong(double d4) {
        if (Double.isNaN(d4)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sign(double d4) {
        return Math.signum(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sin(double d4) {
        return Math.sin(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sinh(double d4) {
        return Math.sinh(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sqrt(double d4) {
        return Math.sqrt(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double tan(double d4) {
        return Math.tan(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double tanh(double d4) {
        return Math.tanh(d4);
    }

    @SinceKotlin(version = "1.2")
    public static final double truncate(double d4) {
        if (Double.isNaN(d4) || Double.isInfinite(d4)) {
            return d4;
        }
        if (d4 > 0) {
            return Math.floor(d4);
        }
        return Math.ceil(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double withSign(double d4, double d5) {
        return Math.copySign(d4, d5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float IEEErem(float f4, float f5) {
        return (float) Math.IEEEremainder(f4, f5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float abs(float f4) {
        return Math.abs(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float acos(float f4) {
        return (float) Math.acos(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float asin(float f4) {
        return (float) Math.asin(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float atan(float f4) {
        return (float) Math.atan(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float atan2(float f4, float f5) {
        return (float) Math.atan2(f4, f5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float ceil(float f4) {
        return (float) Math.ceil(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float cos(float f4) {
        return (float) Math.cos(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float cosh(float f4) {
        return (float) Math.cosh(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float exp(float f4) {
        return (float) Math.exp(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float expm1(float f4) {
        return (float) Math.expm1(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float floor(float f4) {
        return (float) Math.floor(f4);
    }

    private static final float getAbsoluteValue(float f4) {
        return Math.abs(f4);
    }

    private static final float getSign(float f4) {
        return Math.signum(f4);
    }

    private static final float getUlp(float f4) {
        return Math.ulp(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float hypot(float f4, float f5) {
        return (float) Math.hypot(f4, f5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float ln(float f4) {
        return (float) Math.log(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float ln1p(float f4) {
        return (float) Math.log1p(f4);
    }

    @SinceKotlin(version = "1.2")
    public static final float log(float f4, float f5) {
        if (f5 <= 0.0f || f5 == 1.0f) {
            return Float.NaN;
        }
        return (float) (Math.log(f4) / Math.log(f5));
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float log10(float f4) {
        return (float) Math.log10(f4);
    }

    @SinceKotlin(version = "1.2")
    public static final float log2(float f4) {
        return (float) (Math.log(f4) / Constants.LN2);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float max(float f4, float f5) {
        return Math.max(f4, f5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float min(float f4, float f5) {
        return Math.min(f4, f5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float nextDown(float f4) {
        return Math.nextAfter(f4, Double.NEGATIVE_INFINITY);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float nextTowards(float f4, float f5) {
        return Math.nextAfter(f4, f5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float nextUp(float f4) {
        return Math.nextUp(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double pow(double d4, int i2) {
        return Math.pow(d4, i2);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float round(float f4) {
        return (float) Math.rint(f4);
    }

    @SinceKotlin(version = "1.2")
    public static final long roundToLong(float f4) {
        return roundToLong(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sign(float f4) {
        return Math.signum(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sin(float f4) {
        return (float) Math.sin(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sinh(float f4) {
        return (float) Math.sinh(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sqrt(float f4) {
        return (float) Math.sqrt(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float tan(float f4) {
        return (float) Math.tan(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float tanh(float f4) {
        return (float) Math.tanh(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double withSign(double d4, int i2) {
        return Math.copySign(d4, i2);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int abs(int i2) {
        return Math.abs(i2);
    }

    private static final int getAbsoluteValue(int i2) {
        return Math.abs(i2);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int max(int i2, int i4) {
        return Math.max(i2, i4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int min(int i2, int i4) {
        return Math.min(i2, i4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float pow(float f4, float f5) {
        return (float) Math.pow(f4, f5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float withSign(float f4, float f5) {
        return Math.copySign(f4, f5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long abs(long j4) {
        return Math.abs(j4);
    }

    private static final long getAbsoluteValue(long j4) {
        return Math.abs(j4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long max(long j4, long j5) {
        return Math.max(j4, j5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long min(long j4, long j5) {
        return Math.min(j4, j5);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float pow(float f4, int i2) {
        return (float) Math.pow(f4, i2);
    }

    @SinceKotlin(version = "1.2")
    public static final int roundToInt(float f4) {
        if (Float.isNaN(f4)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(f4);
    }

    @SinceKotlin(version = "1.2")
    public static final float truncate(float f4) {
        double ceil;
        if (Float.isNaN(f4) || Float.isInfinite(f4)) {
            return f4;
        }
        if (f4 > 0) {
            ceil = Math.floor(f4);
        } else {
            ceil = Math.ceil(f4);
        }
        return (float) ceil;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float withSign(float f4, int i2) {
        return Math.copySign(f4, i2);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float atanh(float f4) {
        return (float) atanh(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float acosh(float f4) {
        return (float) acosh(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float asinh(float f4) {
        return (float) asinh(f4);
    }
}

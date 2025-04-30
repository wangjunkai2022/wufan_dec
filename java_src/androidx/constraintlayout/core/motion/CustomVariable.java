package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.TypedValues;
/* loaded from: classes.dex */
public class CustomVariable {

    /* renamed from: g  reason: collision with root package name */
    private static final String f1863g = "TransitionLayout";

    /* renamed from: a  reason: collision with root package name */
    String f1864a;

    /* renamed from: b  reason: collision with root package name */
    private int f1865b;

    /* renamed from: c  reason: collision with root package name */
    private int f1866c;

    /* renamed from: d  reason: collision with root package name */
    private float f1867d;

    /* renamed from: e  reason: collision with root package name */
    private String f1868e;

    /* renamed from: f  reason: collision with root package name */
    boolean f1869f;

    public CustomVariable(CustomVariable customVariable) {
        this.f1866c = Integer.MIN_VALUE;
        this.f1867d = Float.NaN;
        this.f1868e = null;
        this.f1864a = customVariable.f1864a;
        this.f1865b = customVariable.f1865b;
        this.f1866c = customVariable.f1866c;
        this.f1867d = customVariable.f1867d;
        this.f1868e = customVariable.f1868e;
        this.f1869f = customVariable.f1869f;
    }

    private static int a(int i2) {
        int i4 = (i2 & ((i2 >> 31) ^ (-1))) - 255;
        return (i4 & (i4 >> 31)) + 255;
    }

    public static String colorString(int i2) {
        String str = "00000000" + Integer.toHexString(i2);
        return "#" + str.substring(str.length() - 8);
    }

    public static int hsvToRgb(float f4, float f5, float f6) {
        float f7 = f4 * 6.0f;
        int i2 = (int) f7;
        float f8 = f7 - i2;
        float f9 = f6 * 255.0f;
        int i4 = (int) (((1.0f - f5) * f9) + 0.5f);
        int i5 = (int) (((1.0f - (f8 * f5)) * f9) + 0.5f);
        int i6 = (int) (((1.0f - ((1.0f - f8) * f5)) * f9) + 0.5f);
        int i7 = (int) (f9 + 0.5f);
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 != 5) {
                                return 0;
                            }
                            return ((i7 << 16) + (i4 << 8) + i5) | (-16777216);
                        }
                        return ((i6 << 16) + (i4 << 8) + i7) | (-16777216);
                    }
                    return ((i4 << 16) + (i5 << 8) + i7) | (-16777216);
                }
                return ((i4 << 16) + (i7 << 8) + i6) | (-16777216);
            }
            return ((i5 << 16) + (i7 << 8) + i4) | (-16777216);
        }
        return ((i7 << 16) + (i6 << 8) + i4) | (-16777216);
    }

    public static int rgbaTocColor(float f4, float f5, float f6, float f7) {
        int a4 = a((int) (f4 * 255.0f));
        int a5 = a((int) (f5 * 255.0f));
        return (a4 << 16) | (a((int) (f7 * 255.0f)) << 24) | (a5 << 8) | a((int) (f6 * 255.0f));
    }

    public void applyToWidget(MotionWidget motionWidget) {
        int i2 = this.f1865b;
        switch (i2) {
            case 900:
            case 902:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                motionWidget.setCustomAttribute(this.f1864a, i2, this.f1866c);
                return;
            case 901:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                motionWidget.setCustomAttribute(this.f1864a, i2, this.f1867d);
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                motionWidget.setCustomAttribute(this.f1864a, i2, this.f1868e);
                return;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                motionWidget.setCustomAttribute(this.f1864a, i2, this.f1869f);
                return;
            default:
                return;
        }
    }

    public CustomVariable copy() {
        return new CustomVariable(this);
    }

    public boolean diff(CustomVariable customVariable) {
        int i2;
        if (customVariable == null || (i2 = this.f1865b) != customVariable.f1865b) {
            return false;
        }
        switch (i2) {
            case 900:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                return this.f1866c == customVariable.f1866c;
            case 901:
                return this.f1867d == customVariable.f1867d;
            case 902:
                return this.f1866c == customVariable.f1866c;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                return this.f1866c == customVariable.f1866c;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                return this.f1869f == customVariable.f1869f;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                return this.f1867d == customVariable.f1867d;
            default:
                return false;
        }
    }

    public boolean getBooleanValue() {
        return this.f1869f;
    }

    public int getColorValue() {
        return this.f1866c;
    }

    public float getFloatValue() {
        return this.f1867d;
    }

    public int getIntegerValue() {
        return this.f1866c;
    }

    public int getInterpolatedColor(float[] fArr) {
        int a4 = a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
        int a5 = a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
        return (a((int) (fArr[3] * 255.0f)) << 24) | (a4 << 16) | (a5 << 8) | a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
    }

    public String getName() {
        return this.f1864a;
    }

    public String getStringValue() {
        return this.f1868e;
    }

    public int getType() {
        return this.f1865b;
    }

    public float getValueToInterpolate() {
        switch (this.f1865b) {
            case 900:
                return this.f1866c;
            case 901:
                return this.f1867d;
            case 902:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                return this.f1869f ? 1.0f : 0.0f;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                return this.f1867d;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        switch (this.f1865b) {
            case 900:
                fArr[0] = this.f1866c;
                return;
            case 901:
                fArr[0] = this.f1867d;
                return;
            case 902:
                int i2 = this.f1866c;
                float pow = (float) Math.pow(((i2 >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i2 >> 8) & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = (float) Math.pow((i2 & 255) / 255.0f, 2.2d);
                fArr[3] = ((i2 >> 24) & 255) / 255.0f;
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                fArr[0] = this.f1869f ? 1.0f : 0.0f;
                return;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                fArr[0] = this.f1867d;
                return;
            default:
                return;
        }
    }

    public boolean isContinuous() {
        int i2 = this.f1865b;
        return (i2 == 903 || i2 == 904 || i2 == 906) ? false : true;
    }

    public int numberOfInterpolatedValues() {
        return this.f1865b != 902 ? 1 : 4;
    }

    public void setBooleanValue(boolean z3) {
        this.f1869f = z3;
    }

    public void setFloatValue(float f4) {
        this.f1867d = f4;
    }

    public void setIntValue(int i2) {
        this.f1866c = i2;
    }

    public void setInterpolatedValue(MotionWidget motionWidget, float[] fArr) {
        int i2 = this.f1865b;
        switch (i2) {
            case 900:
                motionWidget.setCustomAttribute(this.f1864a, i2, (int) fArr[0]);
                return;
            case 901:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                motionWidget.setCustomAttribute(this.f1864a, i2, fArr[0]);
                return;
            case 902:
                int a4 = a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
                int a5 = a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
                motionWidget.setCustomAttribute(this.f1864a, this.f1865b, (a((int) (fArr[3] * 255.0f)) << 24) | (a4 << 16) | (a5 << 8) | a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f)));
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                throw new RuntimeException("unable to interpolate " + this.f1864a);
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                motionWidget.setCustomAttribute(this.f1864a, i2, fArr[0] > 0.5f);
                return;
            default:
                return;
        }
    }

    public void setStringValue(String str) {
        this.f1868e = str;
    }

    public void setValue(float[] fArr) {
        switch (this.f1865b) {
            case 900:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                this.f1866c = (int) fArr[0];
                return;
            case 901:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                this.f1867d = fArr[0];
                return;
            case 902:
                this.f1866c = ((Math.round(fArr[3] * 255.0f) & 255) << 24) | ((Math.round(((float) Math.pow(fArr[0], 0.5d)) * 255.0f) & 255) << 16) | ((Math.round(((float) Math.pow(fArr[1], 0.5d)) * 255.0f) & 255) << 8) | (Math.round(((float) Math.pow(fArr[2], 0.5d)) * 255.0f) & 255);
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                this.f1869f = ((double) fArr[0]) > 0.5d;
                return;
            default:
                return;
        }
    }

    public String toString() {
        String str = this.f1864a + ':';
        switch (this.f1865b) {
            case 900:
                return str + this.f1866c;
            case 901:
                return str + this.f1867d;
            case 902:
                return str + colorString(this.f1866c);
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                return str + this.f1868e;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                return str + Boolean.valueOf(this.f1869f);
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                return str + this.f1867d;
            default:
                return str + "????";
        }
    }

    public CustomVariable(String str, int i2, String str2) {
        this.f1866c = Integer.MIN_VALUE;
        this.f1867d = Float.NaN;
        this.f1868e = null;
        this.f1864a = str;
        this.f1865b = i2;
        this.f1868e = str2;
    }

    public void setValue(Object obj) {
        switch (this.f1865b) {
            case 900:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                this.f1866c = ((Integer) obj).intValue();
                return;
            case 901:
                this.f1867d = ((Float) obj).floatValue();
                return;
            case 902:
                this.f1866c = ((Integer) obj).intValue();
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                this.f1868e = (String) obj;
                return;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                this.f1869f = ((Boolean) obj).booleanValue();
                return;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                this.f1867d = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public CustomVariable(String str, int i2, int i4) {
        this.f1866c = Integer.MIN_VALUE;
        this.f1867d = Float.NaN;
        this.f1868e = null;
        this.f1864a = str;
        this.f1865b = i2;
        if (i2 == 901) {
            this.f1867d = i4;
        } else {
            this.f1866c = i4;
        }
    }

    public CustomVariable(String str, int i2, float f4) {
        this.f1866c = Integer.MIN_VALUE;
        this.f1867d = Float.NaN;
        this.f1868e = null;
        this.f1864a = str;
        this.f1865b = i2;
        this.f1867d = f4;
    }

    public CustomVariable(String str, int i2, boolean z3) {
        this.f1866c = Integer.MIN_VALUE;
        this.f1867d = Float.NaN;
        this.f1868e = null;
        this.f1864a = str;
        this.f1865b = i2;
        this.f1869f = z3;
    }

    public CustomVariable(String str, int i2) {
        this.f1866c = Integer.MIN_VALUE;
        this.f1867d = Float.NaN;
        this.f1868e = null;
        this.f1864a = str;
        this.f1865b = i2;
    }

    public CustomVariable(String str, int i2, Object obj) {
        this.f1866c = Integer.MIN_VALUE;
        this.f1867d = Float.NaN;
        this.f1868e = null;
        this.f1864a = str;
        this.f1865b = i2;
        setValue(obj);
    }

    public CustomVariable(CustomVariable customVariable, Object obj) {
        this.f1866c = Integer.MIN_VALUE;
        this.f1867d = Float.NaN;
        this.f1868e = null;
        this.f1864a = customVariable.f1864a;
        this.f1865b = customVariable.f1865b;
        setValue(obj);
    }
}

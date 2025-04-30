package androidx.constraintlayout.core.motion;
/* loaded from: classes.dex */
public class CustomAttribute {

    /* renamed from: i  reason: collision with root package name */
    private static final String f1853i = "TransitionLayout";

    /* renamed from: a  reason: collision with root package name */
    private boolean f1854a;

    /* renamed from: b  reason: collision with root package name */
    String f1855b;

    /* renamed from: c  reason: collision with root package name */
    private AttributeType f1856c;

    /* renamed from: d  reason: collision with root package name */
    private int f1857d;

    /* renamed from: e  reason: collision with root package name */
    private float f1858e;

    /* renamed from: f  reason: collision with root package name */
    private String f1859f;

    /* renamed from: g  reason: collision with root package name */
    boolean f1860g;

    /* renamed from: h  reason: collision with root package name */
    private int f1861h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.motion.CustomAttribute$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1862a;

        static {
            int[] iArr = new int[AttributeType.values().length];
            f1862a = iArr;
            try {
                iArr[AttributeType.REFERENCE_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1862a[AttributeType.BOOLEAN_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1862a[AttributeType.STRING_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1862a[AttributeType.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1862a[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1862a[AttributeType.INT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1862a[AttributeType.FLOAT_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f1862a[AttributeType.DIMENSION_TYPE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum AttributeType {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE,
        REFERENCE_TYPE
    }

    public CustomAttribute(String str, AttributeType attributeType) {
        this.f1854a = false;
        this.f1855b = str;
        this.f1856c = attributeType;
    }

    private static int a(int i2) {
        int i4 = (i2 & ((i2 >> 31) ^ (-1))) - 255;
        return (i4 & (i4 >> 31)) + 255;
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

    public boolean diff(CustomAttribute customAttribute) {
        AttributeType attributeType;
        if (customAttribute == null || (attributeType = this.f1856c) != customAttribute.f1856c) {
            return false;
        }
        switch (AnonymousClass1.f1862a[attributeType.ordinal()]) {
            case 1:
            case 6:
                return this.f1857d == customAttribute.f1857d;
            case 2:
                return this.f1860g == customAttribute.f1860g;
            case 3:
                return this.f1857d == customAttribute.f1857d;
            case 4:
            case 5:
                return this.f1861h == customAttribute.f1861h;
            case 7:
                return this.f1858e == customAttribute.f1858e;
            case 8:
                return this.f1858e == customAttribute.f1858e;
            default:
                return false;
        }
    }

    public AttributeType getType() {
        return this.f1856c;
    }

    public float getValueToInterpolate() {
        switch (AnonymousClass1.f1862a[this.f1856c.ordinal()]) {
            case 2:
                return this.f1860g ? 1.0f : 0.0f;
            case 3:
                throw new RuntimeException("Cannot interpolate String");
            case 4:
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                return this.f1857d;
            case 7:
                return this.f1858e;
            case 8:
                return this.f1858e;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        switch (AnonymousClass1.f1862a[this.f1856c.ordinal()]) {
            case 2:
                fArr[0] = this.f1860g ? 1.0f : 0.0f;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int i2 = this.f1861h;
                float pow = (float) Math.pow(((i2 >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i2 >> 8) & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = (float) Math.pow((i2 & 255) / 255.0f, 2.2d);
                fArr[3] = ((i2 >> 24) & 255) / 255.0f;
                return;
            case 6:
                fArr[0] = this.f1857d;
                return;
            case 7:
                fArr[0] = this.f1858e;
                return;
            case 8:
                fArr[0] = this.f1858e;
                return;
            default:
                return;
        }
    }

    public boolean isContinuous() {
        int i2 = AnonymousClass1.f1862a[this.f1856c.ordinal()];
        return (i2 == 1 || i2 == 2 || i2 == 3) ? false : true;
    }

    public int numberOfInterpolatedValues() {
        int i2 = AnonymousClass1.f1862a[this.f1856c.ordinal()];
        return (i2 == 4 || i2 == 5) ? 4 : 1;
    }

    public void setColorValue(int i2) {
        this.f1861h = i2;
    }

    public void setFloatValue(float f4) {
        this.f1858e = f4;
    }

    public void setIntValue(int i2) {
        this.f1857d = i2;
    }

    public void setStringValue(String str) {
        this.f1859f = str;
    }

    public void setValue(float[] fArr) {
        switch (AnonymousClass1.f1862a[this.f1856c.ordinal()]) {
            case 1:
            case 6:
                this.f1857d = (int) fArr[0];
                return;
            case 2:
                this.f1860g = ((double) fArr[0]) > 0.5d;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int hsvToRgb = hsvToRgb(fArr[0], fArr[1], fArr[2]);
                this.f1861h = hsvToRgb;
                this.f1861h = (a((int) (fArr[3] * 255.0f)) << 24) | (hsvToRgb & 16777215);
                return;
            case 7:
                this.f1858e = fArr[0];
                return;
            case 8:
                this.f1858e = fArr[0];
                return;
            default:
                return;
        }
    }

    public CustomAttribute(String str, AttributeType attributeType, Object obj, boolean z3) {
        this.f1854a = false;
        this.f1855b = str;
        this.f1856c = attributeType;
        this.f1854a = z3;
        setValue(obj);
    }

    public void setValue(Object obj) {
        switch (AnonymousClass1.f1862a[this.f1856c.ordinal()]) {
            case 1:
            case 6:
                this.f1857d = ((Integer) obj).intValue();
                return;
            case 2:
                this.f1860g = ((Boolean) obj).booleanValue();
                return;
            case 3:
                this.f1859f = (String) obj;
                return;
            case 4:
            case 5:
                this.f1861h = ((Integer) obj).intValue();
                return;
            case 7:
                this.f1858e = ((Float) obj).floatValue();
                return;
            case 8:
                this.f1858e = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public CustomAttribute(CustomAttribute customAttribute, Object obj) {
        this.f1854a = false;
        this.f1855b = customAttribute.f1855b;
        this.f1856c = customAttribute.f1856c;
        setValue(obj);
    }
}

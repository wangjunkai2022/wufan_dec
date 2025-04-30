package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes.dex */
public class ConstraintAttribute {

    /* renamed from: i  reason: collision with root package name */
    private static final String f3354i = "TransitionLayout";

    /* renamed from: a  reason: collision with root package name */
    private boolean f3355a;

    /* renamed from: b  reason: collision with root package name */
    String f3356b;

    /* renamed from: c  reason: collision with root package name */
    private AttributeType f3357c;

    /* renamed from: d  reason: collision with root package name */
    private int f3358d;

    /* renamed from: e  reason: collision with root package name */
    private float f3359e;

    /* renamed from: f  reason: collision with root package name */
    private String f3360f;

    /* renamed from: g  reason: collision with root package name */
    boolean f3361g;

    /* renamed from: h  reason: collision with root package name */
    private int f3362h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.widget.ConstraintAttribute$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3363a;

        static {
            int[] iArr = new int[AttributeType.values().length];
            f3363a = iArr;
            try {
                iArr[AttributeType.REFERENCE_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3363a[AttributeType.BOOLEAN_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3363a[AttributeType.STRING_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3363a[AttributeType.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3363a[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3363a[AttributeType.INT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3363a[AttributeType.FLOAT_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3363a[AttributeType.DIMENSION_TYPE.ordinal()] = 8;
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

    public ConstraintAttribute(String name, AttributeType attributeType) {
        this.f3355a = false;
        this.f3356b = name;
        this.f3357c = attributeType;
    }

    private static int a(int c4) {
        int i2 = (c4 & ((c4 >> 31) ^ (-1))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    public static HashMap<String, ConstraintAttribute> extractAttributes(HashMap<String, ConstraintAttribute> base, View view) {
        HashMap<String, ConstraintAttribute> hashMap = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : base.keySet()) {
            ConstraintAttribute constraintAttribute = base.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    hashMap.put(str, new ConstraintAttribute(constraintAttribute, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    hashMap.put(str, new ConstraintAttribute(constraintAttribute, cls.getMethod("getMap" + str, new Class[0]).invoke(view, new Object[0])));
                }
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
        }
        return hashMap;
    }

    public static void parse(Context context, XmlPullParser parser, HashMap<String, ConstraintAttribute> custom) {
        AttributeType attributeType;
        Object valueOf;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.CustomAttribute);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        Object obj = null;
        AttributeType attributeType2 = null;
        boolean z3 = false;
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.CustomAttribute_attributeName) {
                str = obtainStyledAttributes.getString(index);
                if (str != null && str.length() > 0) {
                    str = Character.toUpperCase(str.charAt(0)) + str.substring(1);
                }
            } else if (index == R.styleable.CustomAttribute_methodName) {
                str = obtainStyledAttributes.getString(index);
                z3 = true;
            } else if (index == R.styleable.CustomAttribute_customBoolean) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                attributeType2 = AttributeType.BOOLEAN_TYPE;
            } else {
                if (index == R.styleable.CustomAttribute_customColorValue) {
                    attributeType = AttributeType.COLOR_TYPE;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == R.styleable.CustomAttribute_customColorDrawableValue) {
                    attributeType = AttributeType.COLOR_DRAWABLE_TYPE;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == R.styleable.CustomAttribute_customPixelDimension) {
                    attributeType = AttributeType.DIMENSION_TYPE;
                    valueOf = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == R.styleable.CustomAttribute_customDimension) {
                    attributeType = AttributeType.DIMENSION_TYPE;
                    valueOf = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R.styleable.CustomAttribute_customFloatValue) {
                    attributeType = AttributeType.FLOAT_TYPE;
                    valueOf = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == R.styleable.CustomAttribute_customIntegerValue) {
                    attributeType = AttributeType.INT_TYPE;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                } else if (index == R.styleable.CustomAttribute_customStringValue) {
                    attributeType = AttributeType.STRING_TYPE;
                    valueOf = obtainStyledAttributes.getString(index);
                } else if (index == R.styleable.CustomAttribute_customReference) {
                    attributeType = AttributeType.REFERENCE_TYPE;
                    int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                    if (resourceId == -1) {
                        resourceId = obtainStyledAttributes.getInt(index, -1);
                    }
                    valueOf = Integer.valueOf(resourceId);
                }
                Object obj2 = valueOf;
                attributeType2 = attributeType;
                obj = obj2;
            }
        }
        if (str != null && obj != null) {
            custom.put(str, new ConstraintAttribute(str, attributeType2, obj, z3));
        }
        obtainStyledAttributes.recycle();
    }

    public static void setAttributes(View view, HashMap<String, ConstraintAttribute> map) {
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            ConstraintAttribute constraintAttribute = map.get(str);
            String str2 = constraintAttribute.f3355a ? str : "set" + str;
            try {
                switch (AnonymousClass1.f3363a[constraintAttribute.f3357c.ordinal()]) {
                    case 1:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.f3358d));
                        break;
                    case 2:
                        cls.getMethod(str2, Boolean.TYPE).invoke(view, Boolean.valueOf(constraintAttribute.f3361g));
                        break;
                    case 3:
                        cls.getMethod(str2, CharSequence.class).invoke(view, constraintAttribute.f3360f);
                        break;
                    case 4:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.f3362h));
                        break;
                    case 5:
                        Method method = cls.getMethod(str2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(constraintAttribute.f3362h);
                        method.invoke(view, colorDrawable);
                        break;
                    case 6:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.f3358d));
                        break;
                    case 7:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.f3359e));
                        break;
                    case 8:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.f3359e));
                        break;
                }
            } catch (IllegalAccessException e4) {
                StringBuilder sb = new StringBuilder();
                sb.append(" Custom Attribute \"");
                sb.append(str);
                sb.append("\" not found on ");
                sb.append(cls.getName());
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.getMessage();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(" Custom Attribute \"");
                sb2.append(str);
                sb2.append("\" not found on ");
                sb2.append(cls.getName());
                StringBuilder sb3 = new StringBuilder();
                sb3.append(cls.getName());
                sb3.append(" must have a method ");
                sb3.append(str2);
            } catch (InvocationTargetException e6) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(" Custom Attribute \"");
                sb4.append(str);
                sb4.append("\" not found on ");
                sb4.append(cls.getName());
                e6.printStackTrace();
            }
        }
    }

    public void applyCustom(View view) {
        String str;
        Class<?> cls = view.getClass();
        String str2 = this.f3356b;
        if (this.f3355a) {
            str = str2;
        } else {
            str = "set" + str2;
        }
        try {
            switch (AnonymousClass1.f3363a[this.f3357c.ordinal()]) {
                case 1:
                case 6:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf(this.f3358d));
                    return;
                case 2:
                    cls.getMethod(str, Boolean.TYPE).invoke(view, Boolean.valueOf(this.f3361g));
                    return;
                case 3:
                    cls.getMethod(str, CharSequence.class).invoke(view, this.f3360f);
                    return;
                case 4:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf(this.f3362h));
                    return;
                case 5:
                    Method method = cls.getMethod(str, Drawable.class);
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(this.f3362h);
                    method.invoke(view, colorDrawable);
                    return;
                case 7:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(this.f3359e));
                    return;
                case 8:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(this.f3359e));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e4) {
            StringBuilder sb = new StringBuilder();
            sb.append(" Custom Attribute \"");
            sb.append(str2);
            sb.append("\" not found on ");
            sb.append(cls.getName());
            e4.printStackTrace();
        } catch (NoSuchMethodException e5) {
            e5.getMessage();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" Custom Attribute \"");
            sb2.append(str2);
            sb2.append("\" not found on ");
            sb2.append(cls.getName());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(cls.getName());
            sb3.append(" must have a method ");
            sb3.append(str);
        } catch (InvocationTargetException e6) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(" Custom Attribute \"");
            sb4.append(str2);
            sb4.append("\" not found on ");
            sb4.append(cls.getName());
            e6.printStackTrace();
        }
    }

    public boolean diff(ConstraintAttribute constraintAttribute) {
        AttributeType attributeType;
        if (constraintAttribute == null || (attributeType = this.f3357c) != constraintAttribute.f3357c) {
            return false;
        }
        switch (AnonymousClass1.f3363a[attributeType.ordinal()]) {
            case 1:
            case 6:
                return this.f3358d == constraintAttribute.f3358d;
            case 2:
                return this.f3361g == constraintAttribute.f3361g;
            case 3:
                return this.f3358d == constraintAttribute.f3358d;
            case 4:
            case 5:
                return this.f3362h == constraintAttribute.f3362h;
            case 7:
                return this.f3359e == constraintAttribute.f3359e;
            case 8:
                return this.f3359e == constraintAttribute.f3359e;
            default:
                return false;
        }
    }

    public int getColorValue() {
        return this.f3362h;
    }

    public float getFloatValue() {
        return this.f3359e;
    }

    public int getIntegerValue() {
        return this.f3358d;
    }

    public String getName() {
        return this.f3356b;
    }

    public String getStringValue() {
        return this.f3360f;
    }

    public AttributeType getType() {
        return this.f3357c;
    }

    public float getValueToInterpolate() {
        switch (AnonymousClass1.f3363a[this.f3357c.ordinal()]) {
            case 2:
                return this.f3361g ? 1.0f : 0.0f;
            case 3:
                throw new RuntimeException("Cannot interpolate String");
            case 4:
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                return this.f3358d;
            case 7:
                return this.f3359e;
            case 8:
                return this.f3359e;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] ret) {
        switch (AnonymousClass1.f3363a[this.f3357c.ordinal()]) {
            case 2:
                ret[0] = this.f3361g ? 1.0f : 0.0f;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int i2 = this.f3362h;
                float pow = (float) Math.pow(((i2 >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i2 >> 8) & 255) / 255.0f, 2.2d);
                ret[0] = pow;
                ret[1] = pow2;
                ret[2] = (float) Math.pow((i2 & 255) / 255.0f, 2.2d);
                ret[3] = ((i2 >> 24) & 255) / 255.0f;
                return;
            case 6:
                ret[0] = this.f3358d;
                return;
            case 7:
                ret[0] = this.f3359e;
                return;
            case 8:
                ret[0] = this.f3359e;
                return;
            default:
                return;
        }
    }

    public boolean isBooleanValue() {
        return this.f3361g;
    }

    public boolean isContinuous() {
        int i2 = AnonymousClass1.f3363a[this.f3357c.ordinal()];
        return (i2 == 1 || i2 == 2 || i2 == 3) ? false : true;
    }

    public boolean isMethod() {
        return this.f3355a;
    }

    public int numberOfInterpolatedValues() {
        int i2 = AnonymousClass1.f3363a[this.f3357c.ordinal()];
        return (i2 == 4 || i2 == 5) ? 4 : 1;
    }

    public void setColorValue(int value) {
        this.f3362h = value;
    }

    public void setFloatValue(float value) {
        this.f3359e = value;
    }

    public void setIntValue(int value) {
        this.f3358d = value;
    }

    public void setStringValue(String value) {
        this.f3360f = value;
    }

    public void setValue(float[] value) {
        switch (AnonymousClass1.f3363a[this.f3357c.ordinal()]) {
            case 1:
            case 6:
                this.f3358d = (int) value[0];
                return;
            case 2:
                this.f3361g = ((double) value[0]) > 0.5d;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int HSVToColor = Color.HSVToColor(value);
                this.f3362h = HSVToColor;
                this.f3362h = (a((int) (value[3] * 255.0f)) << 24) | (HSVToColor & 16777215);
                return;
            case 7:
                this.f3359e = value[0];
                return;
            case 8:
                this.f3359e = value[0];
                return;
            default:
                return;
        }
    }

    public ConstraintAttribute(String name, AttributeType attributeType, Object value, boolean method) {
        this.f3355a = false;
        this.f3356b = name;
        this.f3357c = attributeType;
        this.f3355a = method;
        setValue(value);
    }

    public void setValue(Object value) {
        switch (AnonymousClass1.f3363a[this.f3357c.ordinal()]) {
            case 1:
            case 6:
                this.f3358d = ((Integer) value).intValue();
                return;
            case 2:
                this.f3361g = ((Boolean) value).booleanValue();
                return;
            case 3:
                this.f3360f = (String) value;
                return;
            case 4:
            case 5:
                this.f3362h = ((Integer) value).intValue();
                return;
            case 7:
                this.f3359e = ((Float) value).floatValue();
                return;
            case 8:
                this.f3359e = ((Float) value).floatValue();
                return;
            default:
                return;
        }
    }

    public ConstraintAttribute(ConstraintAttribute source, Object value) {
        this.f3355a = false;
        this.f3356b = source.f3356b;
        this.f3357c = source.f3357c;
        setValue(value);
    }
}

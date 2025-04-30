package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
/* loaded from: classes.dex */
public class Dimension {

    /* renamed from: a  reason: collision with root package name */
    private final int f2346a;

    /* renamed from: b  reason: collision with root package name */
    int f2347b;

    /* renamed from: c  reason: collision with root package name */
    int f2348c;

    /* renamed from: d  reason: collision with root package name */
    float f2349d;

    /* renamed from: e  reason: collision with root package name */
    int f2350e;

    /* renamed from: f  reason: collision with root package name */
    String f2351f;

    /* renamed from: g  reason: collision with root package name */
    Object f2352g;

    /* renamed from: h  reason: collision with root package name */
    boolean f2353h;
    public static final Object FIXED_DIMENSION = new Object();
    public static final Object WRAP_DIMENSION = new Object();
    public static final Object SPREAD_DIMENSION = new Object();
    public static final Object PARENT_DIMENSION = new Object();
    public static final Object PERCENT_DIMENSION = new Object();
    public static final Object RATIO_DIMENSION = new Object();

    /* loaded from: classes.dex */
    public enum Type {
        FIXED,
        WRAP,
        MATCH_PARENT,
        MATCH_CONSTRAINT
    }

    private Dimension() {
        this.f2346a = -2;
        this.f2347b = 0;
        this.f2348c = Integer.MAX_VALUE;
        this.f2349d = 1.0f;
        this.f2350e = 0;
        this.f2351f = null;
        this.f2352g = WRAP_DIMENSION;
        this.f2353h = false;
    }

    public static Dimension Fixed(int i2) {
        Dimension dimension = new Dimension(FIXED_DIMENSION);
        dimension.fixed(i2);
        return dimension;
    }

    public static Dimension Parent() {
        return new Dimension(PARENT_DIMENSION);
    }

    public static Dimension Percent(Object obj, float f4) {
        Dimension dimension = new Dimension(PERCENT_DIMENSION);
        dimension.percent(obj, f4);
        return dimension;
    }

    public static Dimension Ratio(String str) {
        Dimension dimension = new Dimension(RATIO_DIMENSION);
        dimension.ratio(str);
        return dimension;
    }

    public static Dimension Spread() {
        return new Dimension(SPREAD_DIMENSION);
    }

    public static Dimension Suggested(int i2) {
        Dimension dimension = new Dimension();
        dimension.suggested(i2);
        return dimension;
    }

    public static Dimension Wrap() {
        return new Dimension(WRAP_DIMENSION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.f2350e;
    }

    public void apply(State state, ConstraintWidget constraintWidget, int i2) {
        String str = this.f2351f;
        if (str != null) {
            constraintWidget.setDimensionRatio(str);
        }
        int i4 = 2;
        if (i2 == 0) {
            if (this.f2353h) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                Object obj = this.f2352g;
                if (obj == WRAP_DIMENSION) {
                    i4 = 1;
                } else if (obj != PERCENT_DIMENSION) {
                    i4 = 0;
                }
                constraintWidget.setHorizontalMatchStyle(i4, this.f2347b, this.f2348c, this.f2349d);
                return;
            }
            int i5 = this.f2347b;
            if (i5 > 0) {
                constraintWidget.setMinWidth(i5);
            }
            int i6 = this.f2348c;
            if (i6 < Integer.MAX_VALUE) {
                constraintWidget.setMaxWidth(i6);
            }
            Object obj2 = this.f2352g;
            if (obj2 == WRAP_DIMENSION) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            } else if (obj2 == PARENT_DIMENSION) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            } else if (obj2 == null) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidget.setWidth(this.f2350e);
            }
        } else if (this.f2353h) {
            constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            Object obj3 = this.f2352g;
            if (obj3 == WRAP_DIMENSION) {
                i4 = 1;
            } else if (obj3 != PERCENT_DIMENSION) {
                i4 = 0;
            }
            constraintWidget.setVerticalMatchStyle(i4, this.f2347b, this.f2348c, this.f2349d);
        } else {
            int i7 = this.f2347b;
            if (i7 > 0) {
                constraintWidget.setMinHeight(i7);
            }
            int i8 = this.f2348c;
            if (i8 < Integer.MAX_VALUE) {
                constraintWidget.setMaxHeight(i8);
            }
            Object obj4 = this.f2352g;
            if (obj4 == WRAP_DIMENSION) {
                constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            } else if (obj4 == PARENT_DIMENSION) {
                constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            } else if (obj4 == null) {
                constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidget.setHeight(this.f2350e);
            }
        }
    }

    void b(int i2) {
        this.f2353h = false;
        this.f2352g = null;
        this.f2350e = i2;
    }

    public boolean equalsFixedValue(int i2) {
        return this.f2352g == null && this.f2350e == i2;
    }

    public Dimension fixed(Object obj) {
        this.f2352g = obj;
        if (obj instanceof Integer) {
            this.f2350e = ((Integer) obj).intValue();
            this.f2352g = null;
        }
        return this;
    }

    public Dimension max(int i2) {
        if (this.f2348c >= 0) {
            this.f2348c = i2;
        }
        return this;
    }

    public Dimension min(int i2) {
        if (i2 >= 0) {
            this.f2347b = i2;
        }
        return this;
    }

    public Dimension percent(Object obj, float f4) {
        this.f2349d = f4;
        return this;
    }

    public Dimension ratio(String str) {
        this.f2351f = str;
        return this;
    }

    public Dimension suggested(int i2) {
        this.f2353h = true;
        if (i2 >= 0) {
            this.f2348c = i2;
        }
        return this;
    }

    public Dimension min(Object obj) {
        if (obj == WRAP_DIMENSION) {
            this.f2347b = -2;
        }
        return this;
    }

    public static Dimension Fixed(Object obj) {
        Dimension dimension = new Dimension(FIXED_DIMENSION);
        dimension.fixed(obj);
        return dimension;
    }

    public static Dimension Suggested(Object obj) {
        Dimension dimension = new Dimension();
        dimension.suggested(obj);
        return dimension;
    }

    public Dimension max(Object obj) {
        Object obj2 = WRAP_DIMENSION;
        if (obj == obj2 && this.f2353h) {
            this.f2352g = obj2;
            this.f2348c = Integer.MAX_VALUE;
        }
        return this;
    }

    public Dimension suggested(Object obj) {
        this.f2352g = obj;
        this.f2353h = true;
        return this;
    }

    public Dimension fixed(int i2) {
        this.f2352g = null;
        this.f2350e = i2;
        return this;
    }

    private Dimension(Object obj) {
        this.f2346a = -2;
        this.f2347b = 0;
        this.f2348c = Integer.MAX_VALUE;
        this.f2349d = 1.0f;
        this.f2350e = 0;
        this.f2351f = null;
        this.f2352g = WRAP_DIMENSION;
        this.f2353h = false;
        this.f2352g = obj;
    }
}

package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.state.helpers.AlignHorizontallyReference;
import androidx.constraintlayout.core.state.helpers.AlignVerticallyReference;
import androidx.constraintlayout.core.state.helpers.BarrierReference;
import androidx.constraintlayout.core.state.helpers.GuidelineReference;
import androidx.constraintlayout.core.state.helpers.HorizontalChainReference;
import androidx.constraintlayout.core.state.helpers.VerticalChainReference;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class State {
    public static final Integer PARENT = 0;

    /* renamed from: e  reason: collision with root package name */
    static final int f2360e = -1;

    /* renamed from: f  reason: collision with root package name */
    static final int f2361f = 0;

    /* renamed from: g  reason: collision with root package name */
    static final int f2362g = 1;

    /* renamed from: h  reason: collision with root package name */
    static final int f2363h = 2;

    /* renamed from: a  reason: collision with root package name */
    protected HashMap<Object, Reference> f2364a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    protected HashMap<Object, HelperReference> f2365b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    HashMap<String, ArrayList<String>> f2366c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private int f2367d;
    public final ConstraintReference mParent;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.state.State$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2368a;

        static {
            int[] iArr = new int[Helper.values().length];
            f2368a = iArr;
            try {
                iArr[Helper.HORIZONTAL_CHAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2368a[Helper.VERTICAL_CHAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2368a[Helper.ALIGN_HORIZONTALLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2368a[Helper.ALIGN_VERTICALLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2368a[Helper.BARRIER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum Chain {
        SPREAD,
        SPREAD_INSIDE,
        PACKED
    }

    /* loaded from: classes.dex */
    public enum Constraint {
        LEFT_TO_LEFT,
        LEFT_TO_RIGHT,
        RIGHT_TO_LEFT,
        RIGHT_TO_RIGHT,
        START_TO_START,
        START_TO_END,
        END_TO_START,
        END_TO_END,
        TOP_TO_TOP,
        TOP_TO_BOTTOM,
        BOTTOM_TO_TOP,
        BOTTOM_TO_BOTTOM,
        BASELINE_TO_BASELINE,
        BASELINE_TO_TOP,
        BASELINE_TO_BOTTOM,
        CENTER_HORIZONTALLY,
        CENTER_VERTICALLY,
        CIRCULAR_CONSTRAINT
    }

    /* loaded from: classes.dex */
    public enum Direction {
        LEFT,
        RIGHT,
        START,
        END,
        TOP,
        BOTTOM
    }

    /* loaded from: classes.dex */
    public enum Helper {
        HORIZONTAL_CHAIN,
        VERTICAL_CHAIN,
        ALIGN_HORIZONTALLY,
        ALIGN_VERTICALLY,
        BARRIER,
        LAYER,
        FLOW
    }

    public State() {
        ConstraintReference constraintReference = new ConstraintReference(this);
        this.mParent = constraintReference;
        this.f2367d = 0;
        this.f2364a.put(PARENT, constraintReference);
    }

    private String a() {
        StringBuilder sb = new StringBuilder();
        sb.append("__HELPER_KEY_");
        int i2 = this.f2367d;
        this.f2367d = i2 + 1;
        sb.append(i2);
        sb.append("__");
        return sb.toString();
    }

    public void apply(ConstraintWidgetContainer constraintWidgetContainer) {
        HelperReference helperReference;
        HelperWidget helperWidget;
        HelperWidget helperWidget2;
        constraintWidgetContainer.removeAllChildren();
        this.mParent.getWidth().apply(this, constraintWidgetContainer, 0);
        this.mParent.getHeight().apply(this, constraintWidgetContainer, 1);
        for (Object obj : this.f2365b.keySet()) {
            HelperWidget helperWidget3 = this.f2365b.get(obj).getHelperWidget();
            if (helperWidget3 != null) {
                Reference reference = this.f2364a.get(obj);
                if (reference == null) {
                    reference = constraints(obj);
                }
                reference.setConstraintWidget(helperWidget3);
            }
        }
        for (Object obj2 : this.f2364a.keySet()) {
            Reference reference2 = this.f2364a.get(obj2);
            if (reference2 != this.mParent && (reference2.getFacade() instanceof HelperReference) && (helperWidget2 = ((HelperReference) reference2.getFacade()).getHelperWidget()) != null) {
                Reference reference3 = this.f2364a.get(obj2);
                if (reference3 == null) {
                    reference3 = constraints(obj2);
                }
                reference3.setConstraintWidget(helperWidget2);
            }
        }
        for (Object obj3 : this.f2364a.keySet()) {
            Reference reference4 = this.f2364a.get(obj3);
            if (reference4 != this.mParent) {
                ConstraintWidget constraintWidget = reference4.getConstraintWidget();
                constraintWidget.setDebugName(reference4.getKey().toString());
                constraintWidget.setParent(null);
                if (reference4.getFacade() instanceof GuidelineReference) {
                    reference4.apply();
                }
                constraintWidgetContainer.add(constraintWidget);
            } else {
                reference4.setConstraintWidget(constraintWidgetContainer);
            }
        }
        for (Object obj4 : this.f2365b.keySet()) {
            HelperReference helperReference2 = this.f2365b.get(obj4);
            if (helperReference2.getHelperWidget() != null) {
                Iterator<Object> it2 = helperReference2.f2356l0.iterator();
                while (it2.hasNext()) {
                    helperReference2.getHelperWidget().add(this.f2364a.get(it2.next()).getConstraintWidget());
                }
                helperReference2.apply();
            } else {
                helperReference2.apply();
            }
        }
        for (Object obj5 : this.f2364a.keySet()) {
            Reference reference5 = this.f2364a.get(obj5);
            if (reference5 != this.mParent && (reference5.getFacade() instanceof HelperReference) && (helperWidget = (helperReference = (HelperReference) reference5.getFacade()).getHelperWidget()) != null) {
                Iterator<Object> it3 = helperReference.f2356l0.iterator();
                while (it3.hasNext()) {
                    Object next = it3.next();
                    Reference reference6 = this.f2364a.get(next);
                    if (reference6 != null) {
                        helperWidget.add(reference6.getConstraintWidget());
                    } else if (next instanceof Reference) {
                        helperWidget.add(((Reference) next).getConstraintWidget());
                    } else {
                        PrintStream printStream = System.out;
                        printStream.println("couldn't find reference for " + next);
                    }
                }
                reference5.apply();
            }
        }
        for (Object obj6 : this.f2364a.keySet()) {
            Reference reference7 = this.f2364a.get(obj6);
            reference7.apply();
            ConstraintWidget constraintWidget2 = reference7.getConstraintWidget();
            if (constraintWidget2 != null && obj6 != null) {
                constraintWidget2.stringId = obj6.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Reference b(Object obj) {
        return this.f2364a.get(obj);
    }

    public BarrierReference barrier(Object obj, Direction direction) {
        ConstraintReference constraints = constraints(obj);
        if (constraints.getFacade() == null || !(constraints.getFacade() instanceof BarrierReference)) {
            BarrierReference barrierReference = new BarrierReference(this);
            barrierReference.setBarrierDirection(direction);
            constraints.setFacade(barrierReference);
        }
        return (BarrierReference) constraints.getFacade();
    }

    public AlignHorizontallyReference centerHorizontally(Object... objArr) {
        AlignHorizontallyReference alignHorizontallyReference = (AlignHorizontallyReference) helper(null, Helper.ALIGN_HORIZONTALLY);
        alignHorizontallyReference.add(objArr);
        return alignHorizontallyReference;
    }

    public AlignVerticallyReference centerVertically(Object... objArr) {
        AlignVerticallyReference alignVerticallyReference = (AlignVerticallyReference) helper(null, Helper.ALIGN_VERTICALLY);
        alignVerticallyReference.add(objArr);
        return alignVerticallyReference;
    }

    public ConstraintReference constraints(Object obj) {
        Reference reference = this.f2364a.get(obj);
        if (reference == null) {
            reference = createConstraintReference(obj);
            this.f2364a.put(obj, reference);
            reference.setKey(obj);
        }
        if (reference instanceof ConstraintReference) {
            return (ConstraintReference) reference;
        }
        return null;
    }

    public int convertDimension(Object obj) {
        if (obj instanceof Float) {
            return ((Float) obj).intValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    public ConstraintReference createConstraintReference(Object obj) {
        return new ConstraintReference(this);
    }

    public void directMapping() {
        for (Object obj : this.f2364a.keySet()) {
            ConstraintReference constraints = constraints(obj);
            if (constraints instanceof ConstraintReference) {
                constraints.setView(obj);
            }
        }
    }

    public ArrayList<String> getIdsForTag(String str) {
        if (this.f2366c.containsKey(str)) {
            return this.f2366c.get(str);
        }
        return null;
    }

    public GuidelineReference guideline(Object obj, int i2) {
        ConstraintReference constraints = constraints(obj);
        if (constraints.getFacade() == null || !(constraints.getFacade() instanceof GuidelineReference)) {
            GuidelineReference guidelineReference = new GuidelineReference(this);
            guidelineReference.setOrientation(i2);
            guidelineReference.setKey(obj);
            constraints.setFacade(guidelineReference);
        }
        return (GuidelineReference) constraints.getFacade();
    }

    public State height(Dimension dimension) {
        return setHeight(dimension);
    }

    public HelperReference helper(Object obj, Helper helper) {
        HelperReference horizontalChainReference;
        if (obj == null) {
            obj = a();
        }
        HelperReference helperReference = this.f2365b.get(obj);
        if (helperReference == null) {
            int i2 = AnonymousClass1.f2368a[helper.ordinal()];
            if (i2 == 1) {
                horizontalChainReference = new HorizontalChainReference(this);
            } else if (i2 == 2) {
                horizontalChainReference = new VerticalChainReference(this);
            } else if (i2 == 3) {
                horizontalChainReference = new AlignHorizontallyReference(this);
            } else if (i2 == 4) {
                horizontalChainReference = new AlignVerticallyReference(this);
            } else if (i2 != 5) {
                helperReference = new HelperReference(this, helper);
                helperReference.setKey(obj);
                this.f2365b.put(obj, helperReference);
            } else {
                horizontalChainReference = new BarrierReference(this);
            }
            helperReference = horizontalChainReference;
            helperReference.setKey(obj);
            this.f2365b.put(obj, helperReference);
        }
        return helperReference;
    }

    public HorizontalChainReference horizontalChain() {
        return (HorizontalChainReference) helper(null, Helper.HORIZONTAL_CHAIN);
    }

    public GuidelineReference horizontalGuideline(Object obj) {
        return guideline(obj, 0);
    }

    public void map(Object obj, Object obj2) {
        ConstraintReference constraints = constraints(obj);
        if (constraints instanceof ConstraintReference) {
            constraints.setView(obj2);
        }
    }

    public void reset() {
        this.f2365b.clear();
        this.f2366c.clear();
    }

    public boolean sameFixedHeight(int i2) {
        return this.mParent.getHeight().equalsFixedValue(i2);
    }

    public boolean sameFixedWidth(int i2) {
        return this.mParent.getWidth().equalsFixedValue(i2);
    }

    public State setHeight(Dimension dimension) {
        this.mParent.setHeight(dimension);
        return this;
    }

    public void setTag(String str, String str2) {
        ArrayList<String> arrayList;
        ConstraintReference constraints = constraints(str);
        if (constraints instanceof ConstraintReference) {
            constraints.setTag(str2);
            if (!this.f2366c.containsKey(str2)) {
                arrayList = new ArrayList<>();
                this.f2366c.put(str2, arrayList);
            } else {
                arrayList = this.f2366c.get(str2);
            }
            arrayList.add(str);
        }
    }

    public State setWidth(Dimension dimension) {
        this.mParent.setWidth(dimension);
        return this;
    }

    public VerticalChainReference verticalChain() {
        return (VerticalChainReference) helper(null, Helper.VERTICAL_CHAIN);
    }

    public GuidelineReference verticalGuideline(Object obj) {
        return guideline(obj, 1);
    }

    public State width(Dimension dimension) {
        return setWidth(dimension);
    }

    public HorizontalChainReference horizontalChain(Object... objArr) {
        HorizontalChainReference horizontalChainReference = (HorizontalChainReference) helper(null, Helper.HORIZONTAL_CHAIN);
        horizontalChainReference.add(objArr);
        return horizontalChainReference;
    }

    public VerticalChainReference verticalChain(Object... objArr) {
        VerticalChainReference verticalChainReference = (VerticalChainReference) helper(null, Helper.VERTICAL_CHAIN);
        verticalChainReference.add(objArr);
        return verticalChainReference;
    }
}

package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import net.lingala.zip4j.util.e;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class ConstraintLayoutStates {
    public static final String TAG = "ConstraintLayoutStates";

    /* renamed from: h  reason: collision with root package name */
    private static final boolean f3430h = false;

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f3431a;

    /* renamed from: b  reason: collision with root package name */
    ConstraintSet f3432b;

    /* renamed from: c  reason: collision with root package name */
    int f3433c = -1;

    /* renamed from: d  reason: collision with root package name */
    int f3434d = -1;

    /* renamed from: e  reason: collision with root package name */
    private SparseArray<State> f3435e = new SparseArray<>();

    /* renamed from: f  reason: collision with root package name */
    private SparseArray<ConstraintSet> f3436f = new SparseArray<>();

    /* renamed from: g  reason: collision with root package name */
    private ConstraintsChangedListener f3437g = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class State {

        /* renamed from: a  reason: collision with root package name */
        int f3438a;

        /* renamed from: b  reason: collision with root package name */
        ArrayList<Variant> f3439b = new ArrayList<>();

        /* renamed from: c  reason: collision with root package name */
        int f3440c;

        /* renamed from: d  reason: collision with root package name */
        ConstraintSet f3441d;

        public State(Context context, XmlPullParser parser) {
            this.f3440c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.State_android_id) {
                    this.f3438a = obtainStyledAttributes.getResourceId(index, this.f3438a);
                } else if (index == R.styleable.State_constraints) {
                    this.f3440c = obtainStyledAttributes.getResourceId(index, this.f3440c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f3440c);
                    context.getResources().getResourceName(this.f3440c);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f3441d = constraintSet;
                        constraintSet.clone(context, this.f3440c);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        void a(Variant size) {
            this.f3439b.add(size);
        }

        public int findMatch(float width, float height) {
            for (int i2 = 0; i2 < this.f3439b.size(); i2++) {
                if (this.f3439b.get(i2).a(width, height)) {
                    return i2;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Variant {

        /* renamed from: a  reason: collision with root package name */
        int f3442a;

        /* renamed from: b  reason: collision with root package name */
        float f3443b;

        /* renamed from: c  reason: collision with root package name */
        float f3444c;

        /* renamed from: d  reason: collision with root package name */
        float f3445d;

        /* renamed from: e  reason: collision with root package name */
        float f3446e;

        /* renamed from: f  reason: collision with root package name */
        int f3447f;

        /* renamed from: g  reason: collision with root package name */
        ConstraintSet f3448g;

        public Variant(Context context, XmlPullParser parser) {
            this.f3443b = Float.NaN;
            this.f3444c = Float.NaN;
            this.f3445d = Float.NaN;
            this.f3446e = Float.NaN;
            this.f3447f = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.Variant_constraints) {
                    this.f3447f = obtainStyledAttributes.getResourceId(index, this.f3447f);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f3447f);
                    context.getResources().getResourceName(this.f3447f);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f3448g = constraintSet;
                        constraintSet.clone(context, this.f3447f);
                    }
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.f3446e = obtainStyledAttributes.getDimension(index, this.f3446e);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.f3444c = obtainStyledAttributes.getDimension(index, this.f3444c);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.f3445d = obtainStyledAttributes.getDimension(index, this.f3445d);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.f3443b = obtainStyledAttributes.getDimension(index, this.f3443b);
                }
            }
            obtainStyledAttributes.recycle();
        }

        boolean a(float widthDp, float heightDp) {
            if (Float.isNaN(this.f3443b) || widthDp >= this.f3443b) {
                if (Float.isNaN(this.f3444c) || heightDp >= this.f3444c) {
                    if (Float.isNaN(this.f3445d) || widthDp <= this.f3445d) {
                        return Float.isNaN(this.f3446e) || heightDp <= this.f3446e;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConstraintLayoutStates(Context context, ConstraintLayout layout, int resourceID) {
        this.f3431a = layout;
        a(context, resourceID);
    }

    private void a(Context context, int resourceId) {
        XmlResourceParser xml = context.getResources().getXml(resourceId);
        State state = null;
        try {
            int eventType = xml.getEventType();
            while (true) {
                char c4 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                    continue;
                } else if (eventType != 2) {
                    continue;
                } else {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c4 = 4;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                c4 = 2;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                c4 = 0;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                c4 = 3;
                                break;
                            }
                            c4 = 65535;
                            break;
                        default:
                            c4 = 65535;
                            break;
                    }
                    if (c4 == 2) {
                        state = new State(context, xml);
                        this.f3435e.put(state.f3438a, state);
                        continue;
                    } else if (c4 == 3) {
                        Variant variant = new Variant(context, xml);
                        if (state != null) {
                            state.a(variant);
                            continue;
                        } else {
                            continue;
                        }
                    } else if (c4 != 4) {
                        continue;
                    } else {
                        b(context, xml);
                        continue;
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    private void b(Context context, XmlPullParser parser) {
        ConstraintSet constraintSet = new ConstraintSet();
        int attributeCount = parser.getAttributeCount();
        for (int i2 = 0; i2 < attributeCount; i2++) {
            String attributeName = parser.getAttributeName(i2);
            String attributeValue = parser.getAttributeValue(i2);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains(e.F0) ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1 && attributeValue.length() > 1) {
                    identifier = Integer.parseInt(attributeValue.substring(1));
                }
                constraintSet.load(context, parser);
                this.f3436f.put(identifier, constraintSet);
                return;
            }
        }
    }

    public boolean needsToChange(int id, float width, float height) {
        int i2 = this.f3433c;
        if (i2 != id) {
            return true;
        }
        State valueAt = id == -1 ? this.f3435e.valueAt(0) : this.f3435e.get(i2);
        int i4 = this.f3434d;
        return (i4 == -1 || !valueAt.f3439b.get(i4).a(width, height)) && this.f3434d != valueAt.findMatch(width, height);
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.f3437g = constraintsChangedListener;
    }

    public void updateConstraints(int id, float width, float height) {
        ConstraintSet constraintSet;
        int i2;
        State state;
        int findMatch;
        ConstraintSet constraintSet2;
        int i4;
        int i5 = this.f3433c;
        if (i5 == id) {
            if (id == -1) {
                state = this.f3435e.valueAt(0);
            } else {
                state = this.f3435e.get(i5);
            }
            int i6 = this.f3434d;
            if ((i6 == -1 || !state.f3439b.get(i6).a(width, height)) && this.f3434d != (findMatch = state.findMatch(width, height))) {
                if (findMatch == -1) {
                    constraintSet2 = this.f3432b;
                } else {
                    constraintSet2 = state.f3439b.get(findMatch).f3448g;
                }
                if (findMatch == -1) {
                    i4 = state.f3440c;
                } else {
                    i4 = state.f3439b.get(findMatch).f3447f;
                }
                if (constraintSet2 == null) {
                    return;
                }
                this.f3434d = findMatch;
                ConstraintsChangedListener constraintsChangedListener = this.f3437g;
                if (constraintsChangedListener != null) {
                    constraintsChangedListener.preLayoutChange(-1, i4);
                }
                constraintSet2.applyTo(this.f3431a);
                ConstraintsChangedListener constraintsChangedListener2 = this.f3437g;
                if (constraintsChangedListener2 != null) {
                    constraintsChangedListener2.postLayoutChange(-1, i4);
                    return;
                }
                return;
            }
            return;
        }
        this.f3433c = id;
        State state2 = this.f3435e.get(id);
        int findMatch2 = state2.findMatch(width, height);
        if (findMatch2 == -1) {
            constraintSet = state2.f3441d;
        } else {
            constraintSet = state2.f3439b.get(findMatch2).f3448g;
        }
        if (findMatch2 == -1) {
            i2 = state2.f3440c;
        } else {
            i2 = state2.f3439b.get(findMatch2).f3447f;
        }
        if (constraintSet == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("NO Constraint set found ! id=");
            sb.append(id);
            sb.append(", dim =");
            sb.append(width);
            sb.append(", ");
            sb.append(height);
            return;
        }
        this.f3434d = findMatch2;
        ConstraintsChangedListener constraintsChangedListener3 = this.f3437g;
        if (constraintsChangedListener3 != null) {
            constraintsChangedListener3.preLayoutChange(id, i2);
        }
        constraintSet.applyTo(this.f3431a);
        ConstraintsChangedListener constraintsChangedListener4 = this.f3437g;
        if (constraintsChangedListener4 != null) {
            constraintsChangedListener4.postLayoutChange(id, i2);
        }
    }
}

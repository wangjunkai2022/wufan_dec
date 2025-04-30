package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class StateSet {
    public static final String TAG = "ConstraintLayoutStates";

    /* renamed from: h  reason: collision with root package name */
    private static final boolean f3646h = false;

    /* renamed from: b  reason: collision with root package name */
    ConstraintSet f3648b;

    /* renamed from: a  reason: collision with root package name */
    int f3647a = -1;

    /* renamed from: c  reason: collision with root package name */
    int f3649c = -1;

    /* renamed from: d  reason: collision with root package name */
    int f3650d = -1;

    /* renamed from: e  reason: collision with root package name */
    private SparseArray<State> f3651e = new SparseArray<>();

    /* renamed from: f  reason: collision with root package name */
    private SparseArray<ConstraintSet> f3652f = new SparseArray<>();

    /* renamed from: g  reason: collision with root package name */
    private ConstraintsChangedListener f3653g = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class State {

        /* renamed from: a  reason: collision with root package name */
        int f3654a;

        /* renamed from: b  reason: collision with root package name */
        ArrayList<Variant> f3655b = new ArrayList<>();

        /* renamed from: c  reason: collision with root package name */
        int f3656c;

        /* renamed from: d  reason: collision with root package name */
        boolean f3657d;

        public State(Context context, XmlPullParser parser) {
            this.f3656c = -1;
            this.f3657d = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.State_android_id) {
                    this.f3654a = obtainStyledAttributes.getResourceId(index, this.f3654a);
                } else if (index == R.styleable.State_constraints) {
                    this.f3656c = obtainStyledAttributes.getResourceId(index, this.f3656c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f3656c);
                    context.getResources().getResourceName(this.f3656c);
                    if ("layout".equals(resourceTypeName)) {
                        this.f3657d = true;
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        void a(Variant size) {
            this.f3655b.add(size);
        }

        public int findMatch(float width, float height) {
            for (int i2 = 0; i2 < this.f3655b.size(); i2++) {
                if (this.f3655b.get(i2).a(width, height)) {
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
        int f3658a;

        /* renamed from: b  reason: collision with root package name */
        float f3659b;

        /* renamed from: c  reason: collision with root package name */
        float f3660c;

        /* renamed from: d  reason: collision with root package name */
        float f3661d;

        /* renamed from: e  reason: collision with root package name */
        float f3662e;

        /* renamed from: f  reason: collision with root package name */
        int f3663f;

        /* renamed from: g  reason: collision with root package name */
        boolean f3664g;

        public Variant(Context context, XmlPullParser parser) {
            this.f3659b = Float.NaN;
            this.f3660c = Float.NaN;
            this.f3661d = Float.NaN;
            this.f3662e = Float.NaN;
            this.f3663f = -1;
            this.f3664g = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.Variant_constraints) {
                    this.f3663f = obtainStyledAttributes.getResourceId(index, this.f3663f);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f3663f);
                    context.getResources().getResourceName(this.f3663f);
                    if ("layout".equals(resourceTypeName)) {
                        this.f3664g = true;
                    }
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.f3662e = obtainStyledAttributes.getDimension(index, this.f3662e);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.f3660c = obtainStyledAttributes.getDimension(index, this.f3660c);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.f3661d = obtainStyledAttributes.getDimension(index, this.f3661d);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.f3659b = obtainStyledAttributes.getDimension(index, this.f3659b);
                }
            }
            obtainStyledAttributes.recycle();
        }

        boolean a(float widthDp, float heightDp) {
            if (Float.isNaN(this.f3659b) || widthDp >= this.f3659b) {
                if (Float.isNaN(this.f3660c) || heightDp >= this.f3660c) {
                    if (Float.isNaN(this.f3661d) || widthDp <= this.f3661d) {
                        return Float.isNaN(this.f3662e) || heightDp <= this.f3662e;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
    }

    public StateSet(Context context, XmlPullParser parser) {
        a(context, parser);
    }

    private void a(Context context, XmlPullParser parser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.StateSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.StateSet_defaultState) {
                this.f3647a = obtainStyledAttributes.getResourceId(index, this.f3647a);
            }
        }
        obtainStyledAttributes.recycle();
        State state = null;
        try {
            int eventType = parser.getEventType();
            while (true) {
                char c4 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    parser.getName();
                } else if (eventType == 2) {
                    String name = parser.getName();
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                c4 = 2;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 1301459538:
                            if (name.equals("LayoutDescription")) {
                                c4 = 0;
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
                        state = new State(context, parser);
                        this.f3651e.put(state.f3654a, state);
                    } else if (c4 == 3) {
                        Variant variant = new Variant(context, parser);
                        if (state != null) {
                            state.a(variant);
                        }
                    }
                } else if (eventType != 3) {
                    continue;
                } else if ("StateSet".equals(parser.getName())) {
                    return;
                }
                eventType = parser.next();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    public int convertToConstraintSet(int currentConstrainSettId, int stateId, float width, float height) {
        State state = this.f3651e.get(stateId);
        if (state == null) {
            return stateId;
        }
        if (width != -1.0f && height != -1.0f) {
            Variant variant = null;
            Iterator<Variant> it2 = state.f3655b.iterator();
            while (it2.hasNext()) {
                Variant next = it2.next();
                if (next.a(width, height)) {
                    if (currentConstrainSettId == next.f3663f) {
                        return currentConstrainSettId;
                    }
                    variant = next;
                }
            }
            if (variant != null) {
                return variant.f3663f;
            }
            return state.f3656c;
        } else if (state.f3656c == currentConstrainSettId) {
            return currentConstrainSettId;
        } else {
            Iterator<Variant> it3 = state.f3655b.iterator();
            while (it3.hasNext()) {
                if (currentConstrainSettId == it3.next().f3663f) {
                    return currentConstrainSettId;
                }
            }
            return state.f3656c;
        }
    }

    public boolean needsToChange(int id, float width, float height) {
        int i2 = this.f3649c;
        if (i2 != id) {
            return true;
        }
        State valueAt = id == -1 ? this.f3651e.valueAt(0) : this.f3651e.get(i2);
        int i4 = this.f3650d;
        return (i4 == -1 || !valueAt.f3655b.get(i4).a(width, height)) && this.f3650d != valueAt.findMatch(width, height);
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.f3653g = constraintsChangedListener;
    }

    public int stateGetConstraintID(int id, int width, int height) {
        return updateConstraints(-1, id, width, height);
    }

    public int updateConstraints(int currentId, int id, float width, float height) {
        State state;
        int findMatch;
        if (currentId != id) {
            State state2 = this.f3651e.get(id);
            if (state2 == null) {
                return -1;
            }
            int findMatch2 = state2.findMatch(width, height);
            return findMatch2 == -1 ? state2.f3656c : state2.f3655b.get(findMatch2).f3663f;
        }
        if (id == -1) {
            state = this.f3651e.valueAt(0);
        } else {
            state = this.f3651e.get(this.f3649c);
        }
        if (state == null) {
            return -1;
        }
        return ((this.f3650d == -1 || !state.f3655b.get(currentId).a(width, height)) && currentId != (findMatch = state.findMatch(width, height))) ? findMatch == -1 ? state.f3656c : state.f3655b.get(findMatch).f3663f : currentId;
    }
}

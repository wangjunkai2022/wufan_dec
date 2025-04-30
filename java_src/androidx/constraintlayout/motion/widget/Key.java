package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes.dex */
public abstract class Key {
    public static final String ALPHA = "alpha";
    public static final String CURVEFIT = "curveFit";
    public static final String CUSTOM = "CUSTOM";
    public static final String ELEVATION = "elevation";
    public static final String MOTIONPROGRESS = "motionProgress";
    public static final String PIVOT_X = "transformPivotX";
    public static final String PIVOT_Y = "transformPivotY";
    public static final String PROGRESS = "progress";
    public static final String ROTATION = "rotation";
    public static final String ROTATION_X = "rotationX";
    public static final String ROTATION_Y = "rotationY";
    public static final String SCALE_X = "scaleX";
    public static final String SCALE_Y = "scaleY";
    public static final String TRANSITIONEASING = "transitionEasing";
    public static final String TRANSITION_PATH_ROTATE = "transitionPathRotate";
    public static final String TRANSLATION_X = "translationX";
    public static final String TRANSLATION_Y = "translationY";
    public static final String TRANSLATION_Z = "translationZ";
    public static int UNSET = -1;
    public static final String VISIBILITY = "visibility";
    public static final String WAVE_OFFSET = "waveOffset";
    public static final String WAVE_PERIOD = "wavePeriod";
    public static final String WAVE_PHASE = "wavePhase";
    public static final String WAVE_VARIES_BY = "waveVariesBy";

    /* renamed from: a  reason: collision with root package name */
    int f2719a;

    /* renamed from: b  reason: collision with root package name */
    int f2720b;

    /* renamed from: c  reason: collision with root package name */
    String f2721c;

    /* renamed from: d  reason: collision with root package name */
    protected int f2722d;

    /* renamed from: e  reason: collision with root package name */
    HashMap<String, ConstraintAttribute> f2723e;

    public Key() {
        int i2 = UNSET;
        this.f2719a = i2;
        this.f2720b = i2;
        this.f2721c = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(String constraintTag) {
        String str = this.f2721c;
        if (str == null || constraintTag == null) {
            return false;
        }
        return constraintTag.matches(str);
    }

    public abstract void addValues(HashMap<String, ViewSpline> splines);

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(Object value) {
        return value instanceof Boolean ? ((Boolean) value).booleanValue() : Boolean.parseBoolean(value.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c(Object value) {
        return value instanceof Float ? ((Float) value).floatValue() : Float.parseFloat(value.toString());
    }

    @Override // 
    /* renamed from: clone */
    public abstract Key mo3clone();

    public Key copy(Key src) {
        this.f2719a = src.f2719a;
        this.f2720b = src.f2720b;
        this.f2721c = src.f2721c;
        this.f2722d = src.f2722d;
        this.f2723e = src.f2723e;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d(Object value) {
        return value instanceof Integer ? ((Integer) value).intValue() : Integer.parseInt(value.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void getAttributeNames(HashSet<String> attributes);

    public int getFramePosition() {
        return this.f2719a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void load(Context context, AttributeSet attrs);

    public void setFramePosition(int pos) {
        this.f2719a = pos;
    }

    public void setInterpolation(HashMap<String, Integer> interpolation) {
    }

    public abstract void setValue(String tag, Object value);

    public Key setViewId(int id) {
        this.f2720b = id;
        return this;
    }
}

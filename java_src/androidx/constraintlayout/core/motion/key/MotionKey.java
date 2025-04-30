package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes.dex */
public abstract class MotionKey implements TypedValues {
    public static final String ALPHA = "alpha";
    public static final String CUSTOM = "CUSTOM";
    public static final String ELEVATION = "elevation";
    public static final String ROTATION = "rotationZ";
    public static final String ROTATION_X = "rotationX";
    public static final String SCALE_X = "scaleX";
    public static final String SCALE_Y = "scaleY";
    public static final String TRANSITION_PATH_ROTATE = "transitionPathRotate";
    public static final String TRANSLATION_X = "translationX";
    public static final String TRANSLATION_Y = "translationY";
    public static int UNSET = -1;
    public static final String VISIBILITY = "visibility";

    /* renamed from: a  reason: collision with root package name */
    int f1968a;

    /* renamed from: b  reason: collision with root package name */
    String f1969b;
    public HashMap<String, CustomVariable> mCustom;
    public int mFramePosition;
    public int mType;

    public MotionKey() {
        int i2 = UNSET;
        this.mFramePosition = i2;
        this.f1968a = i2;
        this.f1969b = null;
    }

    boolean a(String str) {
        String str2 = this.f1969b;
        if (str2 == null || str == null) {
            return false;
        }
        return str.matches(str2);
    }

    public abstract void addValues(HashMap<String, SplineSet> hashMap);

    boolean b(Object obj) {
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(obj.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c(Object obj) {
        return obj instanceof Float ? ((Float) obj).floatValue() : Float.parseFloat(obj.toString());
    }

    @Override // 
    /* renamed from: clone */
    public abstract MotionKey mo2clone();

    public MotionKey copy(MotionKey motionKey) {
        this.mFramePosition = motionKey.mFramePosition;
        this.f1968a = motionKey.f1968a;
        this.f1969b = motionKey.f1969b;
        this.mType = motionKey.mType;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d(Object obj) {
        return obj instanceof Integer ? ((Integer) obj).intValue() : Integer.parseInt(obj.toString());
    }

    public abstract void getAttributeNames(HashSet<String> hashSet);

    public int getFramePosition() {
        return this.mFramePosition;
    }

    public void setCustomAttribute(String str, int i2, float f4) {
        this.mCustom.put(str, new CustomVariable(str, i2, f4));
    }

    public void setFramePosition(int i2) {
        this.mFramePosition = i2;
    }

    public void setInterpolation(HashMap<String, Integer> hashMap) {
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, float f4) {
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, int i4) {
        if (i2 != 100) {
            return false;
        }
        this.mFramePosition = i4;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, boolean z3) {
        return false;
    }

    public MotionKey setViewId(int i2) {
        this.f1968a = i2;
        return this;
    }

    public void setCustomAttribute(String str, int i2, int i4) {
        this.mCustom.put(str, new CustomVariable(str, i2, i4));
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, String str) {
        if (i2 != 101) {
            return false;
        }
        this.f1969b = str;
        return true;
    }

    public void setCustomAttribute(String str, int i2, boolean z3) {
        this.mCustom.put(str, new CustomVariable(str, i2, z3));
    }

    public void setCustomAttribute(String str, int i2, String str2) {
        this.mCustom.put(str, new CustomVariable(str, i2, str2));
    }
}

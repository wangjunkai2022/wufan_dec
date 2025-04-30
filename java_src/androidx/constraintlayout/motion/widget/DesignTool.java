package androidx.constraintlayout.motion.widget;

import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintSet;
import java.io.PrintStream;
import java.util.HashMap;
/* loaded from: classes.dex */
public class DesignTool implements ProxyInterface {

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f2709g = false;

    /* renamed from: h  reason: collision with root package name */
    private static final String f2710h = "DesignTool";

    /* renamed from: i  reason: collision with root package name */
    static final HashMap<Pair<Integer, Integer>, String> f2711i;

    /* renamed from: j  reason: collision with root package name */
    static final HashMap<String, String> f2712j;

    /* renamed from: a  reason: collision with root package name */
    private final MotionLayout f2713a;

    /* renamed from: b  reason: collision with root package name */
    private MotionScene f2714b;

    /* renamed from: c  reason: collision with root package name */
    private String f2715c = null;

    /* renamed from: d  reason: collision with root package name */
    private String f2716d = null;

    /* renamed from: e  reason: collision with root package name */
    private int f2717e = -1;

    /* renamed from: f  reason: collision with root package name */
    private int f2718f = -1;

    static {
        HashMap<Pair<Integer, Integer>, String> hashMap = new HashMap<>();
        f2711i = hashMap;
        HashMap<String, String> hashMap2 = new HashMap<>();
        f2712j = hashMap2;
        hashMap.put(Pair.create(4, 4), "layout_constraintBottom_toBottomOf");
        hashMap.put(Pair.create(4, 3), "layout_constraintBottom_toTopOf");
        hashMap.put(Pair.create(3, 4), "layout_constraintTop_toBottomOf");
        hashMap.put(Pair.create(3, 3), "layout_constraintTop_toTopOf");
        hashMap.put(Pair.create(6, 6), "layout_constraintStart_toStartOf");
        hashMap.put(Pair.create(6, 7), "layout_constraintStart_toEndOf");
        hashMap.put(Pair.create(7, 6), "layout_constraintEnd_toStartOf");
        hashMap.put(Pair.create(7, 7), "layout_constraintEnd_toEndOf");
        hashMap.put(Pair.create(1, 1), "layout_constraintLeft_toLeftOf");
        hashMap.put(Pair.create(1, 2), "layout_constraintLeft_toRightOf");
        hashMap.put(Pair.create(2, 2), "layout_constraintRight_toRightOf");
        hashMap.put(Pair.create(2, 1), "layout_constraintRight_toLeftOf");
        hashMap.put(Pair.create(5, 5), "layout_constraintBaseline_toBaselineOf");
        hashMap2.put("layout_constraintBottom_toBottomOf", "layout_marginBottom");
        hashMap2.put("layout_constraintBottom_toTopOf", "layout_marginBottom");
        hashMap2.put("layout_constraintTop_toBottomOf", "layout_marginTop");
        hashMap2.put("layout_constraintTop_toTopOf", "layout_marginTop");
        hashMap2.put("layout_constraintStart_toStartOf", "layout_marginStart");
        hashMap2.put("layout_constraintStart_toEndOf", "layout_marginStart");
        hashMap2.put("layout_constraintEnd_toStartOf", "layout_marginEnd");
        hashMap2.put("layout_constraintEnd_toEndOf", "layout_marginEnd");
        hashMap2.put("layout_constraintLeft_toLeftOf", "layout_marginLeft");
        hashMap2.put("layout_constraintLeft_toRightOf", "layout_marginLeft");
        hashMap2.put("layout_constraintRight_toRightOf", "layout_marginRight");
        hashMap2.put("layout_constraintRight_toLeftOf", "layout_marginRight");
    }

    public DesignTool(MotionLayout motionLayout) {
        this.f2713a = motionLayout;
    }

    private static void a(int dpi, ConstraintSet set, View view, HashMap<String, String> attributes, int from, int to) {
        String str = f2711i.get(Pair.create(Integer.valueOf(from), Integer.valueOf(to)));
        String str2 = attributes.get(str);
        if (str2 != null) {
            String str3 = f2712j.get(str);
            set.connect(view.getId(), from, Integer.parseInt(str2), to, str3 != null ? b(dpi, attributes.get(str3)) : 0);
        }
    }

    private static int b(int dpi, String value) {
        int indexOf;
        if (value == null || (indexOf = value.indexOf(100)) == -1) {
            return 0;
        }
        return (int) ((Integer.valueOf(value.substring(0, indexOf)).intValue() * dpi) / 160.0f);
    }

    private static void c(int dpi, ConstraintSet set, View view, HashMap<String, String> attributes) {
        String str = attributes.get("layout_editor_absoluteX");
        if (str != null) {
            set.setEditorAbsoluteX(view.getId(), b(dpi, str));
        }
        String str2 = attributes.get("layout_editor_absoluteY");
        if (str2 != null) {
            set.setEditorAbsoluteY(view.getId(), b(dpi, str2));
        }
    }

    private static void d(ConstraintSet set, View view, HashMap<String, String> attributes, int type) {
        String str = attributes.get(type == 1 ? "layout_constraintVertical_bias" : "layout_constraintHorizontal_bias");
        if (str != null) {
            if (type == 0) {
                set.setHorizontalBias(view.getId(), Float.parseFloat(str));
            } else if (type == 1) {
                set.setVerticalBias(view.getId(), Float.parseFloat(str));
            }
        }
    }

    private static void e(int dpi, ConstraintSet set, View view, HashMap<String, String> attributes, int type) {
        String str = attributes.get(type == 1 ? "layout_height" : "layout_width");
        if (str != null) {
            int b4 = str.equalsIgnoreCase("wrap_content") ? -2 : b(dpi, str);
            if (type == 0) {
                set.constrainWidth(view.getId(), b4);
            } else {
                set.constrainHeight(view.getId(), b4);
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public int designAccess(int cmd, String type, Object viewObject, float[] in2, int inLength, float[] out, int outLength) {
        MotionController motionController;
        View view = (View) viewObject;
        if (cmd != 0) {
            MotionLayout motionLayout = this.f2713a;
            if (motionLayout.G == null || view == null || (motionController = motionLayout.f2996s0.get(view)) == null) {
                return -1;
            }
        } else {
            motionController = null;
        }
        if (cmd != 0) {
            if (cmd == 1) {
                int duration = this.f2713a.G.getDuration() / 16;
                motionController.e(out, duration);
                return duration;
            } else if (cmd == 2) {
                int duration2 = this.f2713a.G.getDuration() / 16;
                motionController.d(out, null);
                return duration2;
            } else if (cmd != 3) {
                return -1;
            } else {
                int duration3 = this.f2713a.G.getDuration() / 16;
                return motionController.j(type, out, outLength);
            }
        }
        return 1;
    }

    public void disableAutoTransition(boolean disable) {
        this.f2713a.Z(disable);
    }

    public void dumpConstraintSet(String set) {
        MotionLayout motionLayout = this.f2713a;
        if (motionLayout.G == null) {
            motionLayout.G = this.f2714b;
        }
        int l02 = motionLayout.l0(set);
        PrintStream printStream = System.out;
        printStream.println(" dumping  " + set + " (" + l02 + ")");
        try {
            this.f2713a.G.h(l02).dump(this.f2713a.G, new int[0]);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public int getAnimationKeyFrames(Object view, float[] key) {
        MotionScene motionScene = this.f2713a.G;
        if (motionScene == null) {
            return -1;
        }
        int duration = motionScene.getDuration() / 16;
        MotionController motionController = this.f2713a.f2996s0.get(view);
        if (motionController == null) {
            return 0;
        }
        motionController.d(key, null);
        return duration;
    }

    public int getAnimationPath(Object view, float[] path, int len) {
        MotionLayout motionLayout = this.f2713a;
        if (motionLayout.G == null) {
            return -1;
        }
        MotionController motionController = motionLayout.f2996s0.get(view);
        if (motionController == null) {
            return 0;
        }
        motionController.e(path, len);
        return len;
    }

    public void getAnimationRectangles(Object view, float[] path) {
        MotionScene motionScene = this.f2713a.G;
        if (motionScene == null) {
            return;
        }
        int duration = motionScene.getDuration() / 16;
        MotionController motionController = this.f2713a.f2996s0.get(view);
        if (motionController == null) {
            return;
        }
        motionController.g(path, duration);
    }

    public String getEndState() {
        int endState = this.f2713a.getEndState();
        if (this.f2718f == endState) {
            return this.f2716d;
        }
        String h02 = this.f2713a.h0(endState);
        if (h02 != null) {
            this.f2716d = h02;
            this.f2718f = endState;
        }
        return h02;
    }

    public int getKeyFrameInfo(Object view, int type, int[] info) {
        MotionController motionController = this.f2713a.f2996s0.get((View) view);
        if (motionController == null) {
            return 0;
        }
        return motionController.getKeyFrameInfo(type, info);
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public float getKeyFramePosition(Object view, int type, float x3, float y3) {
        MotionController motionController;
        if ((view instanceof View) && (motionController = this.f2713a.f2996s0.get((View) view)) != null) {
            return motionController.n(type, x3, y3);
        }
        return 0.0f;
    }

    public int getKeyFramePositions(Object view, int[] type, float[] pos) {
        MotionController motionController = this.f2713a.f2996s0.get((View) view);
        if (motionController == null) {
            return 0;
        }
        return motionController.getKeyFramePositions(type, pos);
    }

    public Object getKeyframe(int type, int target, int position) {
        MotionLayout motionLayout = this.f2713a;
        MotionScene motionScene = motionLayout.G;
        if (motionScene == null) {
            return null;
        }
        return motionScene.m(motionLayout.getContext(), type, target, position);
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public Object getKeyframeAtLocation(Object viewObject, float x3, float y3) {
        MotionController motionController;
        View view = (View) viewObject;
        MotionLayout motionLayout = this.f2713a;
        if (motionLayout.G == null) {
            return -1;
        }
        if (view == null || (motionController = motionLayout.f2996s0.get(view)) == null) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        return motionController.p(viewGroup.getWidth(), viewGroup.getHeight(), x3, y3);
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public Boolean getPositionKeyframe(Object keyFrame, Object view, float x3, float y3, String[] attribute, float[] value) {
        if (keyFrame instanceof KeyPositionBase) {
            View view2 = (View) view;
            this.f2713a.f2996s0.get(view2).v(view2, (KeyPositionBase) keyFrame, x3, y3, attribute, value);
            this.f2713a.rebuildScene();
            this.f2713a.A0 = true;
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    public float getProgress() {
        return this.f2713a.getProgress();
    }

    public String getStartState() {
        int startState = this.f2713a.getStartState();
        if (this.f2717e == startState) {
            return this.f2715c;
        }
        String h02 = this.f2713a.h0(startState);
        if (h02 != null) {
            this.f2715c = h02;
            this.f2717e = startState;
        }
        return this.f2713a.h0(startState);
    }

    public String getState() {
        if (this.f2715c != null && this.f2716d != null) {
            float progress = getProgress();
            if (progress <= 0.01f) {
                return this.f2715c;
            }
            if (progress >= 0.99f) {
                return this.f2716d;
            }
        }
        return this.f2715c;
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public long getTransitionTimeMs() {
        return this.f2713a.getTransitionTimeMs();
    }

    public boolean isInTransition() {
        return (this.f2715c == null || this.f2716d == null) ? false : true;
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public void setAttributes(int dpi, String constraintSetId, Object opaqueView, Object opaqueAttributes) {
        View view = (View) opaqueView;
        HashMap hashMap = (HashMap) opaqueAttributes;
        int l02 = this.f2713a.l0(constraintSetId);
        ConstraintSet h4 = this.f2713a.G.h(l02);
        if (h4 == null) {
            return;
        }
        h4.clear(view.getId());
        e(dpi, h4, view, hashMap, 0);
        e(dpi, h4, view, hashMap, 1);
        a(dpi, h4, view, hashMap, 6, 6);
        a(dpi, h4, view, hashMap, 6, 7);
        a(dpi, h4, view, hashMap, 7, 7);
        a(dpi, h4, view, hashMap, 7, 6);
        a(dpi, h4, view, hashMap, 1, 1);
        a(dpi, h4, view, hashMap, 1, 2);
        a(dpi, h4, view, hashMap, 2, 2);
        a(dpi, h4, view, hashMap, 2, 1);
        a(dpi, h4, view, hashMap, 3, 3);
        a(dpi, h4, view, hashMap, 3, 4);
        a(dpi, h4, view, hashMap, 4, 3);
        a(dpi, h4, view, hashMap, 4, 4);
        a(dpi, h4, view, hashMap, 5, 5);
        d(h4, view, hashMap, 0);
        d(h4, view, hashMap, 1);
        c(dpi, h4, view, hashMap);
        this.f2713a.updateState(l02, h4);
        this.f2713a.requestLayout();
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public void setKeyFrame(Object view, int position, String name, Object value) {
        MotionScene motionScene = this.f2713a.G;
        if (motionScene != null) {
            motionScene.setKeyframe((View) view, position, name, value);
            MotionLayout motionLayout = this.f2713a;
            motionLayout.f3008y0 = position / 100.0f;
            motionLayout.f3004w0 = 0.0f;
            motionLayout.rebuildScene();
            this.f2713a.b0(true);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public boolean setKeyFramePosition(Object view, int position, int type, float x3, float y3) {
        if (view instanceof View) {
            MotionLayout motionLayout = this.f2713a;
            if (motionLayout.G != null) {
                MotionController motionController = motionLayout.f2996s0.get(view);
                MotionLayout motionLayout2 = this.f2713a;
                int i2 = (int) (motionLayout2.f3002v0 * 100.0f);
                if (motionController != null) {
                    View view2 = (View) view;
                    if (motionLayout2.G.B(view2, i2)) {
                        float n4 = motionController.n(2, x3, y3);
                        float n5 = motionController.n(5, x3, y3);
                        this.f2713a.G.setKeyframe(view2, i2, "motion:percentX", Float.valueOf(n4));
                        this.f2713a.G.setKeyframe(view2, i2, "motion:percentY", Float.valueOf(n5));
                        this.f2713a.rebuildScene();
                        this.f2713a.b0(true);
                        this.f2713a.invalidate();
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public void setKeyframe(Object keyFrame, String tag, Object value) {
        if (keyFrame instanceof Key) {
            ((Key) keyFrame).setValue(tag, value);
            this.f2713a.rebuildScene();
            this.f2713a.A0 = true;
        }
    }

    public void setState(String id) {
        if (id == null) {
            id = "motion_base";
        }
        if (this.f2715c == id) {
            return;
        }
        this.f2715c = id;
        this.f2716d = null;
        MotionLayout motionLayout = this.f2713a;
        if (motionLayout.G == null) {
            motionLayout.G = this.f2714b;
        }
        int l02 = motionLayout.l0(id);
        this.f2717e = l02;
        if (l02 != 0) {
            if (l02 == this.f2713a.getStartState()) {
                this.f2713a.setProgress(0.0f);
            } else if (l02 == this.f2713a.getEndState()) {
                this.f2713a.setProgress(1.0f);
            } else {
                this.f2713a.transitionToState(l02);
                this.f2713a.setProgress(1.0f);
            }
        }
        this.f2713a.requestLayout();
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public void setToolPosition(float position) {
        MotionLayout motionLayout = this.f2713a;
        if (motionLayout.G == null) {
            motionLayout.G = this.f2714b;
        }
        motionLayout.setProgress(position);
        this.f2713a.b0(true);
        this.f2713a.requestLayout();
        this.f2713a.invalidate();
    }

    public void setTransition(String start, String end) {
        MotionLayout motionLayout = this.f2713a;
        if (motionLayout.G == null) {
            motionLayout.G = this.f2714b;
        }
        int l02 = motionLayout.l0(start);
        int l03 = this.f2713a.l0(end);
        this.f2713a.setTransition(l02, l03);
        this.f2717e = l02;
        this.f2718f = l03;
        this.f2715c = start;
        this.f2716d = end;
    }

    public void setViewDebug(Object view, int debugMode) {
        MotionController motionController;
        if ((view instanceof View) && (motionController = this.f2713a.f2996s0.get(view)) != null) {
            motionController.setDrawPath(debugMode);
            this.f2713a.invalidate();
        }
    }

    public Object getKeyframe(Object view, int type, int position) {
        if (this.f2713a.G == null) {
            return null;
        }
        int id = ((View) view).getId();
        MotionLayout motionLayout = this.f2713a;
        return motionLayout.G.m(motionLayout.getContext(), type, id, position);
    }
}

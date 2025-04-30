package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Xml;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class KeyFrames {
    public static final int UNSET = -1;

    /* renamed from: b  reason: collision with root package name */
    private static final String f2806b = "CustomMethod";

    /* renamed from: c  reason: collision with root package name */
    private static final String f2807c = "CustomAttribute";

    /* renamed from: d  reason: collision with root package name */
    static HashMap<String, Constructor<? extends Key>> f2808d = null;

    /* renamed from: e  reason: collision with root package name */
    private static final String f2809e = "KeyFrames";

    /* renamed from: a  reason: collision with root package name */
    private HashMap<Integer, ArrayList<Key>> f2810a = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends Key>> hashMap = new HashMap<>();
        f2808d = hashMap;
        try {
            hashMap.put("KeyAttribute", KeyAttributes.class.getConstructor(new Class[0]));
            f2808d.put(TypedValues.PositionType.NAME, KeyPosition.class.getConstructor(new Class[0]));
            f2808d.put(TypedValues.CycleType.NAME, KeyCycle.class.getConstructor(new Class[0]));
            f2808d.put("KeyTimeCycle", KeyTimeCycle.class.getConstructor(new Class[0]));
            f2808d.put(TypedValues.TriggerType.NAME, KeyTrigger.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException unused) {
        }
    }

    public KeyFrames() {
    }

    static String a(int viewId, Context context) {
        return context.getResources().getResourceEntryName(viewId);
    }

    public void addAllFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.f2810a.get(-1);
        if (arrayList != null) {
            motionController.a(arrayList);
        }
    }

    public void addFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.f2810a.get(Integer.valueOf(motionController.f2944c));
        if (arrayList != null) {
            motionController.a(arrayList);
        }
        ArrayList<Key> arrayList2 = this.f2810a.get(-1);
        if (arrayList2 != null) {
            Iterator<Key> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Key next = it2.next();
                if (next.a(((ConstraintLayout.LayoutParams) motionController.f2943b.getLayoutParams()).constraintTag)) {
                    motionController.addKey(next);
                }
            }
        }
    }

    public void addKey(Key key) {
        if (!this.f2810a.containsKey(Integer.valueOf(key.f2720b))) {
            this.f2810a.put(Integer.valueOf(key.f2720b), new ArrayList<>());
        }
        ArrayList<Key> arrayList = this.f2810a.get(Integer.valueOf(key.f2720b));
        if (arrayList != null) {
            arrayList.add(key);
        }
    }

    public ArrayList<Key> getKeyFramesForView(int id) {
        return this.f2810a.get(Integer.valueOf(id));
    }

    public Set<Integer> getKeys() {
        return this.f2810a.keySet();
    }

    public KeyFrames(Context context, XmlPullParser parser) {
        HashMap<String, ConstraintAttribute> hashMap;
        HashMap<String, ConstraintAttribute> hashMap2;
        Key key = null;
        try {
            int eventType = parser.getEventType();
            while (eventType != 1) {
                if (eventType != 2) {
                    if (eventType == 3 && ViewTransition.KEY_FRAME_SET_TAG.equals(parser.getName())) {
                        return;
                    }
                } else {
                    String name = parser.getName();
                    if (f2808d.containsKey(name)) {
                        try {
                            Constructor<? extends Key> constructor = f2808d.get(name);
                            if (constructor != null) {
                                Key newInstance = constructor.newInstance(new Object[0]);
                                try {
                                    newInstance.load(context, Xml.asAttributeSet(parser));
                                    addKey(newInstance);
                                } catch (Exception unused) {
                                }
                                key = newInstance;
                                continue;
                            } else {
                                throw new NullPointerException("Keymaker for " + name + " not found");
                                break;
                            }
                        } catch (Exception unused2) {
                            continue;
                        }
                    } else if (name.equalsIgnoreCase("CustomAttribute")) {
                        if (key != null && (hashMap2 = key.f2723e) != null) {
                            ConstraintAttribute.parse(context, parser, hashMap2);
                            continue;
                        }
                    } else if (name.equalsIgnoreCase("CustomMethod") && key != null && (hashMap = key.f2723e) != null) {
                        ConstraintAttribute.parse(context, parser, hashMap);
                        continue;
                    }
                }
                eventType = parser.next();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }
}

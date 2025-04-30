package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.os.Build;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class AccessibilityWindowInfoCompat {
    public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
    public static final int TYPE_APPLICATION = 1;
    public static final int TYPE_INPUT_METHOD = 2;
    public static final int TYPE_SPLIT_SCREEN_DIVIDER = 5;
    public static final int TYPE_SYSTEM = 3;

    /* renamed from: b  reason: collision with root package name */
    private static final int f4996b = -1;

    /* renamed from: a  reason: collision with root package name */
    private Object f4997a;

    private AccessibilityWindowInfoCompat(Object obj) {
        this.f4997a = obj;
    }

    private static String a(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "<UNKNOWN>" : "TYPE_ACCESSIBILITY_OVERLAY" : "TYPE_SYSTEM" : "TYPE_INPUT_METHOD" : "TYPE_APPLICATION";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessibilityWindowInfoCompat b(Object obj) {
        if (obj != null) {
            return new AccessibilityWindowInfoCompat(obj);
        }
        return null;
    }

    public static AccessibilityWindowInfoCompat obtain() {
        if (Build.VERSION.SDK_INT >= 21) {
            return b(AccessibilityWindowInfo.obtain());
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof AccessibilityWindowInfoCompat)) {
            AccessibilityWindowInfoCompat accessibilityWindowInfoCompat = (AccessibilityWindowInfoCompat) obj;
            Object obj2 = this.f4997a;
            if (obj2 == null) {
                if (accessibilityWindowInfoCompat.f4997a != null) {
                    return false;
                }
            } else if (!obj2.equals(accessibilityWindowInfoCompat.f4997a)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public AccessibilityNodeInfoCompat getAnchor() {
        if (Build.VERSION.SDK_INT >= 24) {
            return AccessibilityNodeInfoCompat.l(((AccessibilityWindowInfo) this.f4997a).getAnchor());
        }
        return null;
    }

    public void getBoundsInScreen(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            ((AccessibilityWindowInfo) this.f4997a).getBoundsInScreen(rect);
        }
    }

    public AccessibilityWindowInfoCompat getChild(int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return b(((AccessibilityWindowInfo) this.f4997a).getChild(i2));
        }
        return null;
    }

    public int getChildCount() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f4997a).getChildCount();
        }
        return 0;
    }

    public int getId() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f4997a).getId();
        }
        return -1;
    }

    public int getLayer() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f4997a).getLayer();
        }
        return -1;
    }

    public AccessibilityWindowInfoCompat getParent() {
        if (Build.VERSION.SDK_INT >= 21) {
            return b(((AccessibilityWindowInfo) this.f4997a).getParent());
        }
        return null;
    }

    public AccessibilityNodeInfoCompat getRoot() {
        if (Build.VERSION.SDK_INT >= 21) {
            return AccessibilityNodeInfoCompat.l(((AccessibilityWindowInfo) this.f4997a).getRoot());
        }
        return null;
    }

    public CharSequence getTitle() {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((AccessibilityWindowInfo) this.f4997a).getTitle();
        }
        return null;
    }

    public int getType() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f4997a).getType();
        }
        return -1;
    }

    public int hashCode() {
        Object obj = this.f4997a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean isAccessibilityFocused() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f4997a).isAccessibilityFocused();
        }
        return true;
    }

    public boolean isActive() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f4997a).isActive();
        }
        return true;
    }

    public boolean isFocused() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f4997a).isFocused();
        }
        return true;
    }

    public void recycle() {
        if (Build.VERSION.SDK_INT >= 21) {
            ((AccessibilityWindowInfo) this.f4997a).recycle();
        }
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        Rect rect = new Rect();
        getBoundsInScreen(rect);
        sb.append("AccessibilityWindowInfo[");
        sb.append("id=");
        sb.append(getId());
        sb.append(", type=");
        sb.append(a(getType()));
        sb.append(", layer=");
        sb.append(getLayer());
        sb.append(", bounds=");
        sb.append(rect);
        sb.append(", focused=");
        sb.append(isFocused());
        sb.append(", active=");
        sb.append(isActive());
        sb.append(", hasParent=");
        sb.append(getParent() != null);
        sb.append(", hasChildren=");
        sb.append(getChildCount() > 0);
        sb.append(']');
        return sb.toString();
    }

    public static AccessibilityWindowInfoCompat obtain(AccessibilityWindowInfoCompat accessibilityWindowInfoCompat) {
        if (Build.VERSION.SDK_INT < 21 || accessibilityWindowInfoCompat == null) {
            return null;
        }
        return b(AccessibilityWindowInfo.obtain((AccessibilityWindowInfo) accessibilityWindowInfoCompat.f4997a));
    }
}

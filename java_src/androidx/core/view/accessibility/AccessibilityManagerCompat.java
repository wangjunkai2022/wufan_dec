package androidx.core.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.List;
/* loaded from: classes.dex */
public final class AccessibilityManagerCompat {

    @Deprecated
    /* loaded from: classes.dex */
    public interface AccessibilityStateChangeListener {
        @Deprecated
        void onAccessibilityStateChanged(boolean z3);
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class AccessibilityStateChangeListenerCompat implements AccessibilityStateChangeListener {
    }

    /* loaded from: classes.dex */
    private static class AccessibilityStateChangeListenerWrapper implements AccessibilityManager.AccessibilityStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        AccessibilityStateChangeListener f4963a;

        AccessibilityStateChangeListenerWrapper(@NonNull AccessibilityStateChangeListener accessibilityStateChangeListener) {
            this.f4963a = accessibilityStateChangeListener;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof AccessibilityStateChangeListenerWrapper) {
                return this.f4963a.equals(((AccessibilityStateChangeListenerWrapper) obj).f4963a);
            }
            return false;
        }

        public int hashCode() {
            return this.f4963a.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public void onAccessibilityStateChanged(boolean z3) {
            this.f4963a.onAccessibilityStateChanged(z3);
        }
    }

    /* loaded from: classes.dex */
    public interface TouchExplorationStateChangeListener {
        void onTouchExplorationStateChanged(boolean z3);
    }

    @RequiresApi(19)
    /* loaded from: classes.dex */
    private static final class TouchExplorationStateChangeListenerWrapper implements AccessibilityManager.TouchExplorationStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final TouchExplorationStateChangeListener f4964a;

        TouchExplorationStateChangeListenerWrapper(@NonNull TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            this.f4964a = touchExplorationStateChangeListener;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TouchExplorationStateChangeListenerWrapper) {
                return this.f4964a.equals(((TouchExplorationStateChangeListenerWrapper) obj).f4964a);
            }
            return false;
        }

        public int hashCode() {
            return this.f4964a.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z3) {
            this.f4964a.onTouchExplorationStateChanged(z3);
        }
    }

    private AccessibilityManagerCompat() {
    }

    @Deprecated
    public static boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
        if (accessibilityStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.addAccessibilityStateChangeListener(new AccessibilityStateChangeListenerWrapper(accessibilityStateChangeListener));
    }

    public static boolean addTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        if (Build.VERSION.SDK_INT < 19 || touchExplorationStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.addTouchExplorationStateChangeListener(new TouchExplorationStateChangeListenerWrapper(touchExplorationStateChangeListener));
    }

    @Deprecated
    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i2) {
        return accessibilityManager.getEnabledAccessibilityServiceList(i2);
    }

    @Deprecated
    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
        return accessibilityManager.getInstalledAccessibilityServiceList();
    }

    @Deprecated
    public static boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
        return accessibilityManager.isTouchExplorationEnabled();
    }

    @Deprecated
    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
        if (accessibilityStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.removeAccessibilityStateChangeListener(new AccessibilityStateChangeListenerWrapper(accessibilityStateChangeListener));
    }

    public static boolean removeTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        if (Build.VERSION.SDK_INT < 19 || touchExplorationStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.removeTouchExplorationStateChangeListener(new TouchExplorationStateChangeListenerWrapper(touchExplorationStateChangeListener));
    }
}

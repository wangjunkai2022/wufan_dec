package androidx.core.view.accessibility;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class AccessibilityNodeProviderCompat {
    public static final int HOST_VIEW_ID = -1;

    /* renamed from: a  reason: collision with root package name */
    private final Object f4992a;

    @RequiresApi(16)
    /* loaded from: classes.dex */
    static class AccessibilityNodeProviderApi16 extends AccessibilityNodeProvider {

        /* renamed from: a  reason: collision with root package name */
        final AccessibilityNodeProviderCompat f4993a;

        AccessibilityNodeProviderApi16(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            this.f4993a = accessibilityNodeProviderCompat;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i2) {
            AccessibilityNodeInfoCompat createAccessibilityNodeInfo = this.f4993a.createAccessibilityNodeInfo(i2);
            if (createAccessibilityNodeInfo == null) {
                return null;
            }
            return createAccessibilityNodeInfo.unwrap();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i2) {
            List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText = this.f4993a.findAccessibilityNodeInfosByText(str, i2);
            if (findAccessibilityNodeInfosByText == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = findAccessibilityNodeInfosByText.size();
            for (int i4 = 0; i4 < size; i4++) {
                arrayList.add(findAccessibilityNodeInfosByText.get(i4).unwrap());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i2, int i4, Bundle bundle) {
            return this.f4993a.performAction(i2, i4, bundle);
        }
    }

    @RequiresApi(19)
    /* loaded from: classes.dex */
    static class AccessibilityNodeProviderApi19 extends AccessibilityNodeProviderApi16 {
        AccessibilityNodeProviderApi19(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            super(accessibilityNodeProviderCompat);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i2) {
            AccessibilityNodeInfoCompat findFocus = this.f4993a.findFocus(i2);
            if (findFocus == null) {
                return null;
            }
            return findFocus.unwrap();
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    static class AccessibilityNodeProviderApi26 extends AccessibilityNodeProviderApi19 {
        AccessibilityNodeProviderApi26(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            super(accessibilityNodeProviderCompat);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public void addExtraDataToAccessibilityNodeInfo(int i2, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            this.f4993a.addExtraDataToAccessibilityNodeInfo(i2, AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo), str, bundle);
        }
    }

    public AccessibilityNodeProviderCompat() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.f4992a = new AccessibilityNodeProviderApi26(this);
        } else if (i2 >= 19) {
            this.f4992a = new AccessibilityNodeProviderApi19(this);
        } else if (i2 >= 16) {
            this.f4992a = new AccessibilityNodeProviderApi16(this);
        } else {
            this.f4992a = null;
        }
    }

    public void addExtraDataToAccessibilityNodeInfo(int i2, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, @NonNull String str, @Nullable Bundle bundle) {
    }

    @Nullable
    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i2) {
        return null;
    }

    @Nullable
    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str, int i2) {
        return null;
    }

    @Nullable
    public AccessibilityNodeInfoCompat findFocus(int i2) {
        return null;
    }

    public Object getProvider() {
        return this.f4992a;
    }

    public boolean performAction(int i2, int i4, Bundle bundle) {
        return false;
    }

    public AccessibilityNodeProviderCompat(Object obj) {
        this.f4992a = obj;
    }
}

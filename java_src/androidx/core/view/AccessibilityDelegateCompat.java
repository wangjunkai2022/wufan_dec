package androidx.core.view;

import android.os.Build;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.view.accessibility.AccessibilityClickableSpanCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class AccessibilityDelegateCompat {
    private static final View.AccessibilityDelegate DEFAULT_DELEGATE = new View.AccessibilityDelegate();
    private final View.AccessibilityDelegate mBridge;
    private final View.AccessibilityDelegate mOriginalDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class AccessibilityDelegateAdapter extends View.AccessibilityDelegate {

        /* renamed from: a  reason: collision with root package name */
        final AccessibilityDelegateCompat f4726a;

        AccessibilityDelegateAdapter(AccessibilityDelegateCompat accessibilityDelegateCompat) {
            this.f4726a = accessibilityDelegateCompat;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f4726a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        @RequiresApi(16)
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            AccessibilityNodeProviderCompat accessibilityNodeProvider = this.f4726a.getAccessibilityNodeProvider(view);
            if (accessibilityNodeProvider != null) {
                return (AccessibilityNodeProvider) accessibilityNodeProvider.getProvider();
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f4726a.onInitializeAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            wrap.setScreenReaderFocusable(ViewCompat.isScreenReaderFocusable(view));
            wrap.setHeading(ViewCompat.isAccessibilityHeading(view));
            wrap.setPaneTitle(ViewCompat.getAccessibilityPaneTitle(view));
            wrap.setStateDescription(ViewCompat.getStateDescription(view));
            this.f4726a.onInitializeAccessibilityNodeInfo(view, wrap);
            wrap.addSpansToExtras(accessibilityNodeInfo.getText(), view);
            List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> actionList = AccessibilityDelegateCompat.getActionList(view);
            for (int i2 = 0; i2 < actionList.size(); i2++) {
                wrap.addAction(actionList.get(i2));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f4726a.onPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f4726a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            return this.f4726a.performAccessibilityAction(view, i2, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i2) {
            this.f4726a.sendAccessibilityEvent(view, i2);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f4726a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        }
    }

    public AccessibilityDelegateCompat() {
        this(DEFAULT_DELEGATE);
    }

    static List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> getActionList(View view) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> list = (List) view.getTag(R.id.tag_accessibility_actions);
        return list == null ? Collections.emptyList() : list;
    }

    private boolean isSpanStillValid(ClickableSpan clickableSpan, View view) {
        if (clickableSpan != null) {
            ClickableSpan[] clickableSpans = AccessibilityNodeInfoCompat.getClickableSpans(view.createAccessibilityNodeInfo().getText());
            for (int i2 = 0; clickableSpans != null && i2 < clickableSpans.length; i2++) {
                if (clickableSpan.equals(clickableSpans[i2])) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean performClickableSpanAction(int i2, View view) {
        WeakReference weakReference;
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray == null || (weakReference = (WeakReference) sparseArray.get(i2)) == null) {
            return false;
        }
        ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
        if (isSpanStillValid(clickableSpan, view)) {
            clickableSpan.onClick(view);
            return true;
        }
        return false;
    }

    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.mOriginalDelegate.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (Build.VERSION.SDK_INT < 16 || (accessibilityNodeProvider = this.mOriginalDelegate.getAccessibilityNodeProvider(view)) == null) {
            return null;
        }
        return new AccessibilityNodeProviderCompat(accessibilityNodeProvider);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View.AccessibilityDelegate getBridge() {
        return this.mBridge;
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.unwrap());
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.mOriginalDelegate.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> actionList = getActionList(view);
        boolean z3 = false;
        int i4 = 0;
        while (true) {
            if (i4 >= actionList.size()) {
                break;
            }
            AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = actionList.get(i4);
            if (accessibilityActionCompat.getId() == i2) {
                z3 = accessibilityActionCompat.perform(view, bundle);
                break;
            }
            i4++;
        }
        if (!z3 && Build.VERSION.SDK_INT >= 16) {
            z3 = this.mOriginalDelegate.performAccessibilityAction(view, i2, bundle);
        }
        return (z3 || i2 != R.id.accessibility_action_clickable_span) ? z3 : performClickableSpanAction(bundle.getInt(AccessibilityClickableSpanCompat.SPAN_ID, -1), view);
    }

    public void sendAccessibilityEvent(View view, int i2) {
        this.mOriginalDelegate.sendAccessibilityEvent(view, i2);
    }

    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AccessibilityDelegateCompat(View.AccessibilityDelegate accessibilityDelegate) {
        this.mOriginalDelegate = accessibilityDelegate;
        this.mBridge = new AccessibilityDelegateAdapter(this);
    }
}

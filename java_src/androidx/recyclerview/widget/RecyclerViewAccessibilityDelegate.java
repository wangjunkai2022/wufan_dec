package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class RecyclerViewAccessibilityDelegate extends AccessibilityDelegateCompat {

    /* renamed from: a  reason: collision with root package name */
    final RecyclerView f7211a;

    /* renamed from: b  reason: collision with root package name */
    private final ItemDelegate f7212b;

    /* loaded from: classes2.dex */
    public static class ItemDelegate extends AccessibilityDelegateCompat {

        /* renamed from: a  reason: collision with root package name */
        final RecyclerViewAccessibilityDelegate f7213a;

        /* renamed from: b  reason: collision with root package name */
        private Map<View, AccessibilityDelegateCompat> f7214b = new WeakHashMap();

        public ItemDelegate(@NonNull RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
            this.f7213a = recyclerViewAccessibilityDelegate;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AccessibilityDelegateCompat a(View view) {
            return this.f7214b.remove(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b(View view) {
            AccessibilityDelegateCompat accessibilityDelegate = ViewCompat.getAccessibilityDelegate(view);
            if (accessibilityDelegate == null || accessibilityDelegate == this) {
                return;
            }
            this.f7214b.put(view, accessibilityDelegate);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean dispatchPopulateAccessibilityEvent(@NonNull View view, @NonNull AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = this.f7214b.get(view);
            if (accessibilityDelegateCompat != null) {
                return accessibilityDelegateCompat.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        @Nullable
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(@NonNull View view) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = this.f7214b.get(view);
            if (accessibilityDelegateCompat != null) {
                return accessibilityDelegateCompat.getAccessibilityNodeProvider(view);
            }
            return super.getAccessibilityNodeProvider(view);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(@NonNull View view, @NonNull AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = this.f7214b.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.onInitializeAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (!this.f7213a.a() && this.f7213a.f7211a.getLayoutManager() != null) {
                this.f7213a.f7211a.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
                AccessibilityDelegateCompat accessibilityDelegateCompat = this.f7214b.get(view);
                if (accessibilityDelegateCompat != null) {
                    accessibilityDelegateCompat.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                    return;
                } else {
                    super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                    return;
                }
            }
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(@NonNull View view, @NonNull AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = this.f7214b.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.onPopulateAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = this.f7214b.get(viewGroup);
            if (accessibilityDelegateCompat != null) {
                return accessibilityDelegateCompat.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            if (!this.f7213a.a() && this.f7213a.f7211a.getLayoutManager() != null) {
                AccessibilityDelegateCompat accessibilityDelegateCompat = this.f7214b.get(view);
                if (accessibilityDelegateCompat != null) {
                    if (accessibilityDelegateCompat.performAccessibilityAction(view, i2, bundle)) {
                        return true;
                    }
                } else if (super.performAccessibilityAction(view, i2, bundle)) {
                    return true;
                }
                return this.f7213a.f7211a.getLayoutManager().performAccessibilityActionForItem(view, i2, bundle);
            }
            return super.performAccessibilityAction(view, i2, bundle);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void sendAccessibilityEvent(@NonNull View view, int i2) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = this.f7214b.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.sendAccessibilityEvent(view, i2);
            } else {
                super.sendAccessibilityEvent(view, i2);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void sendAccessibilityEventUnchecked(@NonNull View view, @NonNull AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = this.f7214b.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            } else {
                super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        }
    }

    public RecyclerViewAccessibilityDelegate(@NonNull RecyclerView recyclerView) {
        this.f7211a = recyclerView;
        AccessibilityDelegateCompat itemDelegate = getItemDelegate();
        if (itemDelegate != null && (itemDelegate instanceof ItemDelegate)) {
            this.f7212b = (ItemDelegate) itemDelegate;
        } else {
            this.f7212b = new ItemDelegate(this);
        }
    }

    boolean a() {
        return this.f7211a.hasPendingAdapterUpdates();
    }

    @NonNull
    public AccessibilityDelegateCompat getItemDelegate() {
        return this.f7212b;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || a()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        if (a() || this.f7211a.getLayoutManager() == null) {
            return;
        }
        this.f7211a.getLayoutManager().onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        if (super.performAccessibilityAction(view, i2, bundle)) {
            return true;
        }
        if (a() || this.f7211a.getLayoutManager() == null) {
            return false;
        }
        return this.f7211a.getLayoutManager().performAccessibilityAction(i2, bundle);
    }
}

package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.ParcelableSparseArray;
import com.google.android.material.internal.p;
/* compiled from: BadgeUtils.java */
@ExperimentalBadgeUtils
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f14079a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f14080b = "BadgeUtils";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BadgeUtils.java */
    /* renamed from: com.google.android.material.badge.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class RunnableC0099a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Toolbar f14081a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f14082b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ BadgeDrawable f14083c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ FrameLayout f14084d;

        RunnableC0099a(Toolbar toolbar, int i2, BadgeDrawable badgeDrawable, FrameLayout frameLayout) {
            this.f14081a = toolbar;
            this.f14082b = i2;
            this.f14083c = badgeDrawable;
            this.f14084d = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionMenuItemView a4 = p.a(this.f14081a, this.f14082b);
            if (a4 != null) {
                a.n(this.f14083c, this.f14081a.getResources());
                a.d(this.f14083c, a4, this.f14084d);
                a.b(this.f14083c, a4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BadgeUtils.java */
    /* loaded from: classes2.dex */
    public class b extends AccessibilityDelegateCompat {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BadgeDrawable f14085a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(View.AccessibilityDelegate accessibilityDelegate, BadgeDrawable badgeDrawable) {
            super(accessibilityDelegate);
            this.f14085a = badgeDrawable;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(this.f14085a.o());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BadgeUtils.java */
    /* loaded from: classes2.dex */
    public class c extends AccessibilityDelegateCompat {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BadgeDrawable f14086a;

        c(BadgeDrawable badgeDrawable) {
            this.f14086a = badgeDrawable;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(this.f14086a.o());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BadgeUtils.java */
    /* loaded from: classes2.dex */
    public class d extends AccessibilityDelegateCompat {
        d(View.AccessibilityDelegate accessibilityDelegate) {
            super(accessibilityDelegate);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(null);
        }
    }

    static {
        f14079a = Build.VERSION.SDK_INT < 18;
    }

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(@NonNull BadgeDrawable badgeDrawable, @NonNull View view) {
        if (Build.VERSION.SDK_INT >= 29 && ViewCompat.hasAccessibilityDelegate(view)) {
            ViewCompat.setAccessibilityDelegate(view, new b(view.getAccessibilityDelegate(), badgeDrawable));
        } else {
            ViewCompat.setAccessibilityDelegate(view, new c(badgeDrawable));
        }
    }

    public static void c(@NonNull BadgeDrawable badgeDrawable, @NonNull View view) {
        d(badgeDrawable, view, null);
    }

    public static void d(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) {
        m(badgeDrawable, view, frameLayout);
        if (badgeDrawable.p() != null) {
            badgeDrawable.p().setForeground(badgeDrawable);
        } else if (!f14079a) {
            view.getOverlay().add(badgeDrawable);
        } else {
            throw new IllegalArgumentException("Trying to reference null customBadgeParent");
        }
    }

    public static void e(@NonNull BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i2) {
        f(badgeDrawable, toolbar, i2, null);
    }

    public static void f(@NonNull BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i2, @Nullable FrameLayout frameLayout) {
        toolbar.post(new RunnableC0099a(toolbar, i2, badgeDrawable, frameLayout));
    }

    @NonNull
    public static SparseArray<BadgeDrawable> g(Context context, @NonNull ParcelableSparseArray parcelableSparseArray) {
        SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        for (int i2 = 0; i2 < parcelableSparseArray.size(); i2++) {
            int keyAt = parcelableSparseArray.keyAt(i2);
            BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i2);
            if (state != null) {
                sparseArray.put(keyAt, BadgeDrawable.f(context, state));
            } else {
                throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
            }
        }
        return sparseArray;
    }

    @NonNull
    public static ParcelableSparseArray h(@NonNull SparseArray<BadgeDrawable> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            int keyAt = sparseArray.keyAt(i2);
            BadgeDrawable valueAt = sparseArray.valueAt(i2);
            if (valueAt != null) {
                parcelableSparseArray.put(keyAt, valueAt.v());
            } else {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
        }
        return parcelableSparseArray;
    }

    private static void i(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 29 && ViewCompat.hasAccessibilityDelegate(view)) {
            ViewCompat.setAccessibilityDelegate(view, new d(view.getAccessibilityDelegate()));
        } else {
            ViewCompat.setAccessibilityDelegate(view, null);
        }
    }

    public static void j(@Nullable BadgeDrawable badgeDrawable, @NonNull View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (!f14079a && badgeDrawable.p() == null) {
            view.getOverlay().remove(badgeDrawable);
        } else {
            badgeDrawable.p().setForeground(null);
        }
    }

    public static void k(@Nullable BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i2) {
        if (badgeDrawable == null) {
            return;
        }
        ActionMenuItemView a4 = p.a(toolbar, i2);
        if (a4 != null) {
            l(badgeDrawable);
            j(badgeDrawable, a4);
            i(a4);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Trying to remove badge from a null menuItemView: ");
        sb.append(i2);
    }

    @VisibleForTesting
    static void l(BadgeDrawable badgeDrawable) {
        badgeDrawable.K(0);
        badgeDrawable.L(0);
    }

    public static void m(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.i0(view, frameLayout);
    }

    @VisibleForTesting
    static void n(BadgeDrawable badgeDrawable, Resources resources) {
        badgeDrawable.K(resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_horizontal_offset));
        badgeDrawable.L(resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_vertical_offset));
    }

    public static void o(@NonNull Rect rect, float f4, float f5, float f6, float f7) {
        rect.set((int) (f4 - f6), (int) (f5 - f7), (int) (f4 + f6), (int) (f5 + f7));
    }
}

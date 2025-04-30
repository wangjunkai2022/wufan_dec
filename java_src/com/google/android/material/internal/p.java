package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* compiled from: ToolbarUtils.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator<View> f15212a = new a();

    /* compiled from: ToolbarUtils.java */
    /* loaded from: classes2.dex */
    class a implements Comparator<View> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(View view, View view2) {
            return view.getTop() - view2.getTop();
        }
    }

    private p() {
    }

    @Nullable
    public static ActionMenuItemView a(@NonNull Toolbar toolbar, @IdRes int i2) {
        ActionMenuView b4 = b(toolbar);
        if (b4 != null) {
            for (int i4 = 0; i4 < b4.getChildCount(); i4++) {
                View childAt = b4.getChildAt(i4);
                if (childAt instanceof ActionMenuItemView) {
                    ActionMenuItemView actionMenuItemView = (ActionMenuItemView) childAt;
                    if (actionMenuItemView.getItemData().getItemId() == i2) {
                        return actionMenuItemView;
                    }
                }
            }
            return null;
        }
        return null;
    }

    @Nullable
    public static ActionMenuView b(@NonNull Toolbar toolbar) {
        for (int i2 = 0; i2 < toolbar.getChildCount(); i2++) {
            View childAt = toolbar.getChildAt(i2);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    @Nullable
    private static ImageView c(@NonNull Toolbar toolbar, @Nullable Drawable drawable) {
        ImageView imageView;
        Drawable drawable2;
        if (drawable == null) {
            return null;
        }
        for (int i2 = 0; i2 < toolbar.getChildCount(); i2++) {
            View childAt = toolbar.getChildAt(i2);
            if ((childAt instanceof ImageView) && (drawable2 = (imageView = (ImageView) childAt).getDrawable()) != null && drawable2.getConstantState() != null && drawable2.getConstantState().equals(drawable.getConstantState())) {
                return imageView;
            }
        }
        return null;
    }

    @Nullable
    public static ImageView d(@NonNull Toolbar toolbar) {
        return c(toolbar, toolbar.getLogo());
    }

    @Nullable
    public static ImageButton e(@NonNull Toolbar toolbar) {
        Drawable navigationIcon = toolbar.getNavigationIcon();
        if (navigationIcon == null) {
            return null;
        }
        for (int i2 = 0; i2 < toolbar.getChildCount(); i2++) {
            View childAt = toolbar.getChildAt(i2);
            if (childAt instanceof ImageButton) {
                ImageButton imageButton = (ImageButton) childAt;
                if (imageButton.getDrawable() == navigationIcon) {
                    return imageButton;
                }
            }
        }
        return null;
    }

    @Nullable
    public static View f(@NonNull Toolbar toolbar) {
        ActionMenuView b4 = b(toolbar);
        if (b4 == null || b4.getChildCount() <= 1) {
            return null;
        }
        return b4.getChildAt(0);
    }

    @Nullable
    public static TextView g(@NonNull Toolbar toolbar) {
        List<TextView> h4 = h(toolbar, toolbar.getSubtitle());
        if (h4.isEmpty()) {
            return null;
        }
        return (TextView) Collections.max(h4, f15212a);
    }

    private static List<TextView> h(@NonNull Toolbar toolbar, CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < toolbar.getChildCount(); i2++) {
            View childAt = toolbar.getChildAt(i2);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    arrayList.add(textView);
                }
            }
        }
        return arrayList;
    }

    @Nullable
    public static TextView i(@NonNull Toolbar toolbar) {
        List<TextView> h4 = h(toolbar, toolbar.getTitle());
        if (h4.isEmpty()) {
            return null;
        }
        return (TextView) Collections.min(h4, f15212a);
    }
}

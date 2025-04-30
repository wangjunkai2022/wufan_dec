package com.google.android.material.datepicker;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
/* compiled from: MaterialStyledDatePickerDialog.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.TESTS})
/* loaded from: classes2.dex */
public class g extends DatePickerDialog {
    @AttrRes

    /* renamed from: c  reason: collision with root package name */
    private static final int f14800c = 16843612;
    @StyleRes

    /* renamed from: d  reason: collision with root package name */
    private static final int f14801d = R.style.MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f14802a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Rect f14803b;

    public g(@NonNull Context context) {
        this(context, 0);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(this.f14802a);
        getWindow().getDecorView().setOnTouchListener(new com.google.android.material.dialog.a(this, this.f14803b));
    }

    public g(@NonNull Context context, int i2) {
        this(context, i2, null, -1, -1, -1);
    }

    public g(@NonNull Context context, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i2, int i4, int i5) {
        this(context, 0, onDateSetListener, i2, i4, i5);
    }

    public g(@NonNull Context context, int i2, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i4, int i5, int i6) {
        super(context, i2, onDateSetListener, i4, i5, i6);
        Context context2 = getContext();
        int g4 = com.google.android.material.resources.b.g(getContext(), R.attr.colorSurface, getClass().getCanonicalName());
        int i7 = f14801d;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context2, null, f14800c, i7);
        if (Build.VERSION.SDK_INT >= 21) {
            materialShapeDrawable.o0(ColorStateList.valueOf(g4));
        } else {
            materialShapeDrawable.o0(ColorStateList.valueOf(0));
        }
        Rect a4 = com.google.android.material.dialog.c.a(context2, f14800c, i7);
        this.f14803b = a4;
        this.f14802a = com.google.android.material.dialog.c.b(materialShapeDrawable, a4);
    }
}

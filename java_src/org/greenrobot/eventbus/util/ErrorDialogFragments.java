package org.greenrobot.eventbus.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
/* loaded from: classes5.dex */
public class ErrorDialogFragments {

    /* renamed from: a  reason: collision with root package name */
    public static int f73300a;

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f73301b;

    @TargetApi(11)
    /* loaded from: classes5.dex */
    public static class Honeycomb extends DialogFragment implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            ErrorDialogFragments.b(dialogInterface, i2, getActivity(), getArguments());
        }

        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            return ErrorDialogFragments.a(getActivity(), getArguments(), this);
        }
    }

    /* loaded from: classes5.dex */
    public static class a extends androidx.fragment.app.DialogFragment implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            ErrorDialogFragments.b(dialogInterface, i2, getActivity(), getArguments());
        }

        @Override // androidx.fragment.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            return ErrorDialogFragments.a(getActivity(), getArguments(), this);
        }
    }

    public static Dialog a(Context context, Bundle bundle, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(bundle.getString(ErrorDialogManager.f73305d));
        builder.setMessage(bundle.getString(ErrorDialogManager.f73306e));
        int i2 = f73300a;
        if (i2 != 0) {
            builder.setIcon(i2);
        }
        builder.setPositiveButton(17039370, onClickListener);
        return builder.create();
    }

    public static void b(DialogInterface dialogInterface, int i2, Activity activity, Bundle bundle) {
        Class<?> cls = f73301b;
        if (cls != null) {
            try {
                ErrorDialogManager.f73302a.f73337a.c().o(cls.newInstance());
            } catch (Exception e4) {
                throw new RuntimeException("Event cannot be constructed", e4);
            }
        }
        if (!bundle.getBoolean(ErrorDialogManager.f73307f, false) || activity == null) {
            return;
        }
        activity.finish();
    }
}

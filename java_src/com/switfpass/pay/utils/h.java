package com.switfpass.pay.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static ProgressDialog f58994a;

    public static AlertDialog.Builder a(String str, Context context, List list) {
        CharSequence[] charSequenceArr = new CharSequence[list.size()];
        Iterator it2 = list.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            charSequenceArr[i2] = ((g) it2.next()).b();
            i2++;
        }
        return new AlertDialog.Builder(context).setTitle(str).setItems(charSequenceArr, new v0(list, context));
    }

    public static void b() {
        ProgressDialog progressDialog = f58994a;
        if (progressDialog != null) {
            progressDialog.dismiss();
            f58994a = null;
        }
    }

    public static void c(DialogInterface dialogInterface) {
        if (dialogInterface == null) {
            return;
        }
        try {
            Field declaredField = dialogInterface.getClass().getSuperclass().getDeclaredField("mShowing");
            declaredField.setAccessible(true);
            declaredField.set(dialogInterface, Boolean.TRUE);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void d(DialogInterface dialogInterface) {
        if (dialogInterface == null) {
            return;
        }
        try {
            Field declaredField = dialogInterface.getClass().getSuperclass().getDeclaredField("mShowing");
            declaredField.setAccessible(true);
            declaredField.set(dialogInterface, Boolean.FALSE);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void e(Activity activity, Dialog dialog) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        defaultDisplay.getHeight();
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = -2;
        double d4 = width;
        Double.isNaN(d4);
        attributes.width = (int) (d4 * 0.85d);
        window.setAttributes(attributes);
    }

    public static Dialog f(String str, View view, int i2, int i4, Context context, DialogInterface.OnClickListener onClickListener) {
        return new AlertDialog.Builder(context).setTitle(str).setView(view).setNegativeButton(i2, new g1()).setPositiveButton(i4, onClickListener).create();
    }

    public static Dialog g(String str, View view, Context context) {
        return new AlertDialog.Builder(context).setTitle(str).setView(view).create();
    }

    public static Dialog h(String str, String str2, int i2, int i4, Context context, DialogInterface.OnClickListener onClickListener) {
        return new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setNegativeButton(i2, new d1()).setPositiveButton(i4, onClickListener).setOnKeyListener(new e1()).create();
    }

    public static Dialog i(String str, String str2, int i2, Context context) {
        return new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setPositiveButton(i2, new c1()).create();
    }

    public static Dialog j(String str, String str2, int i2, Context context, DialogInterface.OnClickListener onClickListener) {
        return new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setPositiveButton(i2, onClickListener).create();
    }

    public static Dialog k(String str, String str2, String str3, String str4, Context context, DialogInterface.OnClickListener onClickListener, int i2) {
        return l(str, str2, str3, str4, context, onClickListener, new f1());
    }

    public static Dialog l(String str, String str2, String str3, String str4, Context context, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2) {
        return new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setNegativeButton(str3, onClickListener2).setPositiveButton(str4, onClickListener).create();
    }

    public static void m(String str, Context context) {
        if (f58994a == null) {
            f58994a = new ProgressDialog(context);
        }
        f58994a.setMessage(str);
        f58994a.show();
    }
}

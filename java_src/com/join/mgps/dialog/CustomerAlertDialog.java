package com.join.mgps.dialog;

import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class CustomerAlertDialog extends DialogFragment {

    /* renamed from: e  reason: collision with root package name */
    private static final String f47312e = CustomerAlertDialog.class.getSimpleName();

    /* renamed from: f  reason: collision with root package name */
    private static final String f47313f = "title";

    /* renamed from: g  reason: collision with root package name */
    private static final String f47314g = "hint";

    /* renamed from: h  reason: collision with root package name */
    private static final String f47315h = "cancel_str";

    /* renamed from: i  reason: collision with root package name */
    private static final String f47316i = "ok_str";

    /* renamed from: a  reason: collision with root package name */
    TextView f47317a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47318b;

    /* renamed from: c  reason: collision with root package name */
    Button f47319c;

    /* renamed from: d  reason: collision with root package name */
    Button f47320d;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CustomerAlertDialog.this.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            org.greenrobot.eventbus.c.f().o("ok");
            CustomerAlertDialog.this.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class c implements DialogInterface.OnKeyListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
            return i2 == 4 && keyEvent.getRepeatCount() == 0;
        }
    }

    public static CustomerAlertDialog a(String str, String str2, String str3, String str4) {
        CustomerAlertDialog customerAlertDialog = new CustomerAlertDialog();
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putString("hint", str2);
        bundle.putString(f47315h, str3);
        bundle.putString(f47316i, str4);
        customerAlertDialog.setArguments(bundle);
        return customerAlertDialog;
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(getActivity(), R.style.MyDialog);
        View inflate = ((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(R.layout.dialog_customer_alert, (ViewGroup) null, false);
        this.f47317a = (TextView) inflate.findViewById(R.id.tip_title);
        this.f47318b = (TextView) inflate.findViewById(R.id.dialog_content);
        this.f47319c = (Button) inflate.findViewById(R.id.dialog_button_cancle);
        this.f47320d = (Button) inflate.findViewById(R.id.dialog_button_ok);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f47317a.setText(arguments.getString("title"));
            this.f47318b.setText(arguments.getString("hint"));
            this.f47319c.setText(arguments.getString(f47315h));
            this.f47320d.setText(arguments.getString(f47316i));
        }
        this.f47319c.setOnClickListener(new a());
        this.f47320d.setOnClickListener(new b());
        dialog.setContentView(inflate);
        dialog.setCanceledOnTouchOutside(false);
        dialog.setOnKeyListener(new c());
        return dialog;
    }
}

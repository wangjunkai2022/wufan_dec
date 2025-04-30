package com.join.kotlin.ui.cloudarchive.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.alipay.sdk.authjs.a;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.service.CommonService_;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModPromptNormalDialog.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J@\u0010\r\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\"\u0010\u0018\u001a\u00020\u000e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0010\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\"\u0010\u001b\u001a\u00020\u000e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001b\u0010\u0010\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014R\"\u0010\u001f\u001a\u00020\u001e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006)"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;", "Landroidx/appcompat/app/AlertDialog;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "", "title", "desc", "button1", "button2", "Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;", a.f9675i, CommonService_.f0.f51795c, "Landroid/widget/TextView;", "vDesc", "Landroid/widget/TextView;", "getVDesc", "()Landroid/widget/TextView;", "setVDesc", "(Landroid/widget/TextView;)V", "vTitle", "getVTitle", "setVTitle", "vPositive", "getVPositive", "setVPositive", "vNegative", "getVNegative", "setVNegative", "Landroid/view/View;", "vClose", "Landroid/view/View;", "getVClose", "()Landroid/view/View;", "setVClose", "(Landroid/view/View;)V", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ModPromptNormalDialog extends AlertDialog {
    public View vClose;
    public TextView vDesc;
    public TextView vNegative;
    public TextView vPositive;
    public TextView vTitle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModPromptNormalDialog(@NotNull Context context) {
        super(context, R.style.PapaTheme_Dialog);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @NotNull
    public final View getVClose() {
        View view = this.vClose;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vClose");
        }
        return view;
    }

    @NotNull
    public final TextView getVDesc() {
        TextView textView = this.vDesc;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vDesc");
        }
        return textView;
    }

    @NotNull
    public final TextView getVNegative() {
        TextView textView = this.vNegative;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vNegative");
        }
        return textView;
    }

    @NotNull
    public final TextView getVPositive() {
        TextView textView = this.vPositive;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vPositive");
        }
        return textView;
    }

    @NotNull
    public final TextView getVTitle() {
        TextView textView = this.vTitle;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vTitle");
        }
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AlertDialog, androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.dialog_mod_prompt1, (ViewGroup) null);
        View findViewById = inflate.findViewById(R.id.tv_title);
        Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.tv_title)");
        this.vTitle = (TextView) findViewById;
        View findViewById2 = inflate.findViewById(R.id.tv_desc);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "view.findViewById(R.id.tv_desc)");
        this.vDesc = (TextView) findViewById2;
        View findViewById3 = inflate.findViewById(R.id.tv_mod_opt_left);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "view.findViewById(R.id.tv_mod_opt_left)");
        this.vPositive = (TextView) findViewById3;
        View findViewById4 = inflate.findViewById(R.id.tv_mod_opt_right);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "view.findViewById(R.id.tv_mod_opt_right)");
        this.vNegative = (TextView) findViewById4;
        View findViewById5 = inflate.findViewById(R.id.ivClose);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "view.findViewById(R.id.ivClose)");
        this.vClose = findViewById5;
        if (findViewById5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vClose");
        }
        findViewById5.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ModPromptNormalDialog$onCreate$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptNormalDialog.this.dismiss();
            }
        });
        setContentView(inflate);
    }

    public final void setVClose(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.vClose = view;
    }

    public final void setVDesc(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.vDesc = textView;
    }

    public final void setVNegative(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.vNegative = textView;
    }

    public final void setVPositive(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.vPositive = textView;
    }

    public final void setVTitle(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.vTitle = textView;
    }

    public final void show(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable final ModPromptCallback modPromptCallback) {
        super.show();
        TextView textView = this.vDesc;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vDesc");
        }
        boolean z3 = true;
        textView.setVisibility(str2 == null || str2.length() == 0 ? 8 : 0);
        TextView textView2 = this.vPositive;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vPositive");
        }
        textView2.setVisibility(str3 == null || str3.length() == 0 ? 8 : 0);
        TextView textView3 = this.vNegative;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vNegative");
        }
        if (str4 != null && str4.length() != 0) {
            z3 = false;
        }
        textView3.setVisibility(z3 ? 8 : 0);
        if (str != null) {
            TextView textView4 = this.vTitle;
            if (textView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("vTitle");
            }
            textView4.setText(str);
        }
        if (str2 != null) {
            TextView textView5 = this.vDesc;
            if (textView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("vDesc");
            }
            textView5.setText(str2);
        }
        if (str3 != null) {
            TextView textView6 = this.vPositive;
            if (textView6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("vPositive");
            }
            textView6.setText(str3);
        }
        if (str4 != null) {
            TextView textView7 = this.vNegative;
            if (textView7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("vNegative");
            }
            textView7.setText(str4);
        }
        TextView textView8 = this.vPositive;
        if (textView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vPositive");
        }
        textView8.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ModPromptNormalDialog$show$5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptCallback modPromptCallback2 = ModPromptCallback.this;
                if (modPromptCallback2 != null) {
                    modPromptCallback2.callback1();
                }
            }
        });
        TextView textView9 = this.vNegative;
        if (textView9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vNegative");
        }
        textView9.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ModPromptNormalDialog$show$6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptCallback modPromptCallback2 = ModPromptCallback.this;
                if (modPromptCallback2 != null) {
                    modPromptCallback2.callback2();
                }
            }
        });
    }
}

package com.join.kotlin.ui.cloudarchive.dialog;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.alipay.sdk.authjs.a;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.service.CommonService_;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModPromptDialog.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u001b\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b9\u0010:JD\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002J&\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0013\u001a\u00020\tH\u0016J\u001a\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\u000e\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020 8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R$\u0010$\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010*\u001a\u00020\u00198\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b*\u0010\u001b\u001a\u0004\b+\u0010\u001d\"\u0004\b,\u0010\u001fR\"\u0010-\u001a\u00020\u00198\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b-\u0010\u001b\u001a\u0004\b.\u0010\u001d\"\u0004\b/\u0010\u001fR\"\u00100\u001a\u00020\u00118\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u00106\u001a\u00020\u00198\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b6\u0010\u001b\u001a\u0004\b7\u0010\u001d\"\u0004\b8\u0010\u001f¨\u0006;"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;", "Landroidx/fragment/app/DialogFragment;", "", "title", "desc", "button1", "button2", "Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;", a.f9675i, "", "setContent", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "onStart", "view", "onViewCreated", "Landroidx/fragment/app/FragmentManager;", "manager", CommonService_.f0.f51795c, "Landroid/widget/TextView;", "vDesc", "Landroid/widget/TextView;", "getVDesc", "()Landroid/widget/TextView;", "setVDesc", "(Landroid/widget/TextView;)V", "", "getLayoutId", "()I", "layoutId", "listener", "Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;)V", "vPositive", "getVPositive", "setVPositive", "vTitle", "getVTitle", "setVTitle", "vClose", "Landroid/view/View;", "getVClose", "()Landroid/view/View;", "setVClose", "(Landroid/view/View;)V", "vNegative", "getVNegative", "setVNegative", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public class ModPromptDialog extends DialogFragment {
    @Nullable
    private ModPromptCallback listener;
    public View vClose;
    public TextView vDesc;
    public TextView vNegative;
    public TextView vPositive;
    public TextView vTitle;

    private final void setContent(String str, String str2, String str3, String str4, final ModPromptCallback modPromptCallback) {
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
        textView8.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ModPromptDialog$setContent$5
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
        textView9.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ModPromptDialog$setContent$6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptCallback modPromptCallback2 = ModPromptCallback.this;
                if (modPromptCallback2 != null) {
                    modPromptCallback2.callback2();
                }
            }
        });
    }

    static /* synthetic */ void setContent$default(ModPromptDialog modPromptDialog, String str, String str2, String str3, String str4, ModPromptCallback modPromptCallback, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                str = null;
            }
            if ((i2 & 2) != 0) {
                str2 = null;
            }
            if ((i2 & 4) != 0) {
                str3 = null;
            }
            if ((i2 & 8) != 0) {
                str4 = null;
            }
            if ((i2 & 16) != 0) {
                modPromptCallback = null;
            }
            modPromptDialog.setContent(str, str2, str3, str4, modPromptCallback);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setContent");
    }

    public int getLayoutId() {
        return R.layout.dialog_mod_prompt;
    }

    @Nullable
    public final ModPromptCallback getListener() {
        return this.listener;
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

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        String str;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutId(), viewGroup, false);
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
        findViewById5.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ModPromptDialog$onCreateView$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptDialog.this.dismiss();
            }
        });
        Bundle arguments = getArguments();
        if (arguments != null) {
            str = arguments.getString("gameName", "");
            Intrinsics.checkNotNullExpressionValue(str, "it.getString(\"gameName\", \"\")");
        } else {
            str = "";
        }
        String string = getString(R.string.mod_prompt_tips);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.mod_prompt_tips)");
        String string2 = getString(R.string.mod_prompt_game_incompatible, str, "" + Build.VERSION.RELEASE);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(\n            R…VERSION.RELEASE\n        )");
        String string3 = getString(R.string.game_start_continue);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(R.string.game_start_continue)");
        String string4 = getString(R.string.game_start_standard);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(R.string.game_start_standard)");
        TextView textView = this.vTitle;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vTitle");
        }
        textView.setText(string);
        TextView textView2 = this.vDesc;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vDesc");
        }
        textView2.setText(string2);
        TextView textView3 = this.vPositive;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vPositive");
        }
        textView3.setText(string3);
        TextView textView4 = this.vNegative;
        if (textView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vNegative");
        }
        textView4.setText(string4);
        TextView textView5 = this.vPositive;
        if (textView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vPositive");
        }
        textView5.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ModPromptDialog$onCreateView$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptCallback listener = ModPromptDialog.this.getListener();
                if (listener != null) {
                    listener.callback1();
                }
            }
        });
        TextView textView6 = this.vNegative;
        if (textView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vNegative");
        }
        textView6.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ModPromptDialog$onCreateView$4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptCallback listener = ModPromptDialog.this.getListener();
                if (listener != null) {
                    listener.callback2();
                }
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        WindowManager windowManager = requireActivity.getWindowManager();
        Intrinsics.checkNotNullExpressionValue(windowManager, "requireActivity().windowManager");
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        Dialog dialog = getDialog();
        Intrinsics.checkNotNull(dialog);
        Intrinsics.checkNotNullExpressionValue(dialog, "dialog!!");
        Window window = dialog.getWindow();
        Intrinsics.checkNotNull(window);
        int i2 = displayMetrics.widthPixels;
        Dialog dialog2 = getDialog();
        Intrinsics.checkNotNull(dialog2);
        Intrinsics.checkNotNullExpressionValue(dialog2, "dialog!!");
        Window window2 = dialog2.getWindow();
        Intrinsics.checkNotNull(window2);
        Intrinsics.checkNotNullExpressionValue(window2, "dialog!!.window!!");
        window.setLayout(i2, window2.getAttributes().height);
        Dialog dialog3 = getDialog();
        Intrinsics.checkNotNull(dialog3);
        Intrinsics.checkNotNullExpressionValue(dialog3, "dialog!!");
        Window window3 = dialog3.getWindow();
        Intrinsics.checkNotNull(window3);
        window3.setBackgroundDrawable(new ColorDrawable(0));
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
    }

    public final void setListener(@Nullable ModPromptCallback modPromptCallback) {
        this.listener = modPromptCallback;
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

    public final void show(@NotNull FragmentManager manager) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, "prompt");
    }
}

package com.join.kotlin.ui.cloudarchive.dialog;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ko;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.service.CommonService_;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageShowDialog.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b9\u0010%J&\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u000f\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0016J\u000e\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010J\u0010\u0010\u0015\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013J\u001a\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u0013H\u0016R\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0011\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010'\u001a\u00020&8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001d\u00102\u001a\u00020-8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R$\u00103\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006:"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/View$OnClickListener;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "v", "onClick", "Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;", "listener", "setClickDelDialogListener", "", "imagePathx", "setImageDialogPath", "Landroidx/fragment/app/FragmentManager;", "manager", TagGameListActivity_.f35885q0, CommonService_.f0.f51795c, "Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V", "", "orientation", "I", "getOrientation", "()I", "setOrientation", "(I)V", "Lcom/join/android/app/mgsim/wufun/databinding/ko;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ko;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ko;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ko;)V", "Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;", "viewModle$delegate", "Lkotlin/Lazy;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;", "viewModle", CommonService_.b0.f51756b, "Ljava/lang/String;", "getImagePath", "()Ljava/lang/String;", "setImagePath", "(Ljava/lang/String;)V", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ImageShowDialog extends DialogFragment implements View.OnClickListener {
    public ko dataBinding;
    @Nullable
    private String imagePath;
    public ClickDelDialogListener listener;
    private int orientation;
    @NotNull
    private final Lazy viewModle$delegate;

    public ImageShowDialog(int i2) {
        Lazy lazy;
        this.orientation = i2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ImageDialogViewmodle>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ImageShowDialog$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ImageDialogViewmodle invoke() {
                ViewModel viewModel = new ViewModelProvider(ImageShowDialog.this, new ViewModelProvider.NewInstanceFactory()).get(ImageDialogViewmodle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(this, …dle::class.java\n        )");
                return (ImageDialogViewmodle) viewModel;
            }
        });
        this.viewModle$delegate = lazy;
    }

    @NotNull
    public final ko getDataBinding() {
        ko koVar = this.dataBinding;
        if (koVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return koVar;
    }

    @Nullable
    public final String getImagePath() {
        return this.imagePath;
    }

    @NotNull
    public final ClickDelDialogListener getListener() {
        ClickDelDialogListener clickDelDialogListener = this.listener;
        if (clickDelDialogListener == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listener");
        }
        return clickDelDialogListener;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final ImageDialogViewmodle getViewModle() {
        return (ImageDialogViewmodle) this.viewModle$delegate.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf != null && valueOf.intValue() == R.id.closed) {
            dismiss();
        }
        dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        ViewDataBinding inflate = DataBindingUtil.inflate(inflater, R.layout.image_show_dialog, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "DataBindingUtil.inflate(…          false\n        )");
        ko koVar = (ko) inflate;
        this.dataBinding = koVar;
        if (koVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        koVar.setLifecycleOwner(this);
        ko koVar2 = this.dataBinding;
        if (koVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        koVar2.setVariable(27, getViewModle());
        ko koVar3 = this.dataBinding;
        if (koVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        koVar3.setVariable(7, this);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(true);
        }
        getViewModle().getImagePath().setValue(this.imagePath);
        getViewModle().getOrientation().setValue(Integer.valueOf(this.orientation));
        ko koVar4 = this.dataBinding;
        if (koVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return koVar4.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
    }

    public final void setClickDelDialogListener(@NotNull ClickDelDialogListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void setDataBinding(@NotNull ko koVar) {
        Intrinsics.checkNotNullParameter(koVar, "<set-?>");
        this.dataBinding = koVar;
    }

    public final void setImageDialogPath(@Nullable String str) {
        this.imagePath = str;
    }

    public final void setImagePath(@Nullable String str) {
        this.imagePath = str;
    }

    public final void setListener(@NotNull ClickDelDialogListener clickDelDialogListener) {
        Intrinsics.checkNotNullParameter(clickDelDialogListener, "<set-?>");
        this.listener = clickDelDialogListener;
    }

    public final void setOrientation(int i2) {
        this.orientation = i2;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String str) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        manager.beginTransaction().remove(this).commit();
        super.show(manager, str);
    }
}

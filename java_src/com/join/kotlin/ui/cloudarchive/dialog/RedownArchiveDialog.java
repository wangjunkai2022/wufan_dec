package com.join.kotlin.ui.cloudarchive.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.k30;
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.service.CommonService_;
import java.io.Serializable;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RedownArchiveDialog.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b0\u00101J&\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\u0012\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\u000e\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0016R\u001d\u0010\u001e\u001a\u00020\u00198F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0017\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010%\u001a\u00020$8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0014\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00062"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/View$OnClickListener;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "v", "", "onClick", "Landroidx/fragment/app/FragmentManager;", "manager", "", TagGameListActivity_.f35885q0, CommonService_.f0.f51795c, "Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;", "listener", "setClickDelDialogListener", "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "dialogData", "setDatas", "Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "getDialogData", "()Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "setDialogData", "(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V", "Lcom/join/android/app/mgsim/wufun/databinding/k30;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/k30;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/k30;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/k30;)V", "Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class RedownArchiveDialog extends DialogFragment implements View.OnClickListener {
    public k30 dataBinding;
    public DialogData dialogData;
    public ClickDelDialogListener listener;
    @NotNull
    private final Lazy viewModle$delegate;

    public RedownArchiveDialog() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DelArchiveDialogViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.RedownArchiveDialog$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DelArchiveDialogViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(RedownArchiveDialog.this, new ViewModelProvider.NewInstanceFactory()).get(DelArchiveDialogViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(this, …dle::class.java\n        )");
                return (DelArchiveDialogViewModle) viewModel;
            }
        });
        this.viewModle$delegate = lazy;
    }

    @NotNull
    public final k30 getDataBinding() {
        k30 k30Var = this.dataBinding;
        if (k30Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return k30Var;
    }

    @NotNull
    public final DialogData getDialogData() {
        DialogData dialogData = this.dialogData;
        if (dialogData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogData");
        }
        return dialogData;
    }

    @NotNull
    public final ClickDelDialogListener getListener() {
        ClickDelDialogListener clickDelDialogListener = this.listener;
        if (clickDelDialogListener == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listener");
        }
        return clickDelDialogListener;
    }

    @NotNull
    public final DelArchiveDialogViewModle getViewModle() {
        return (DelArchiveDialogViewModle) this.viewModle$delegate.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf != null && valueOf.intValue() == R.id.okButn) {
            ClickDelDialogListener clickDelDialogListener = this.listener;
            if (clickDelDialogListener == null) {
                Intrinsics.throwUninitializedPropertyAccessException("listener");
            }
            clickDelDialogListener.onClickOkButn();
        } else if (valueOf != null && valueOf.intValue() == R.id.cancelBtn) {
            ClickDelDialogListener clickDelDialogListener2 = this.listener;
            if (clickDelDialogListener2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("listener");
            }
            clickDelDialogListener2.onClickCancleButn();
        } else if (valueOf != null && valueOf.intValue() == R.id.closed) {
            dismiss();
        }
        dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        ViewDataBinding inflate = DataBindingUtil.inflate(inflater, R.layout.mod_redown_archive_dialog, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "DataBindingUtil.inflate(…          false\n        )");
        k30 k30Var = (k30) inflate;
        this.dataBinding = k30Var;
        if (k30Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        k30Var.setLifecycleOwner(this);
        k30 k30Var2 = this.dataBinding;
        if (k30Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        k30Var2.setVariable(27, getViewModle());
        k30 k30Var3 = this.dataBinding;
        if (k30Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        k30Var3.setVariable(7, this);
        Bundle arguments = getArguments();
        if (arguments != null) {
            MutableLiveData<ArchiveData> archive = getViewModle().getArchive();
            Serializable serializable = arguments.getSerializable("archive");
            Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            archive.setValue((ArchiveData) serializable);
        }
        MutableLiveData<DialogData> dialogData = getViewModle().getDialogData();
        DialogData dialogData2 = this.dialogData;
        if (dialogData2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogData");
        }
        dialogData.setValue(dialogData2);
        k30 k30Var4 = this.dataBinding;
        if (k30Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return k30Var4.getRoot();
    }

    public final void setClickDelDialogListener(@NotNull ClickDelDialogListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void setDataBinding(@NotNull k30 k30Var) {
        Intrinsics.checkNotNullParameter(k30Var, "<set-?>");
        this.dataBinding = k30Var;
    }

    public final void setDatas(@NotNull DialogData dialogData) {
        Intrinsics.checkNotNullParameter(dialogData, "dialogData");
        this.dialogData = dialogData;
    }

    public final void setDialogData(@NotNull DialogData dialogData) {
        Intrinsics.checkNotNullParameter(dialogData, "<set-?>");
        this.dialogData = dialogData;
    }

    public final void setListener(@NotNull ClickDelDialogListener clickDelDialogListener) {
        Intrinsics.checkNotNullParameter(clickDelDialogListener, "<set-?>");
        this.listener = clickDelDialogListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String str) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, str);
    }
}

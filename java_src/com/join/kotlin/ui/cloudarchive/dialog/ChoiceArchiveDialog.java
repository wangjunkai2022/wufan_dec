package com.join.kotlin.ui.cloudarchive.dialog;

import android.content.Context;
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
import com.alipay.sdk.authjs.a;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.z20;
import com.join.kotlin.ui.cloudarchive.adapter.ModChoiceArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.service.CommonService_;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChoiceArchiveDialog.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b0\u00101J&\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u000f\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0016J)\u0010\u0016\u001a\u00020\f2!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\f0\u0010J\u001a\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016R\"\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001d\u0010(\u001a\u00020#8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R1\u0010)\u001a\u001d\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\f0\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010*R\u001d\u0010/\u001a\u00020+8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b,\u0010%\u001a\u0004\b-\u0010.¨\u00062"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/View$OnClickListener;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "v", "onClick", "Lkotlin/Function1;", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "Lkotlin/ParameterName;", "name", "archive", a.f9679m, "setItemChoiced", "Landroidx/fragment/app/FragmentManager;", "manager", "", TagGameListActivity_.f35885q0, CommonService_.f0.f51795c, "Lcom/join/android/app/mgsim/wufun/databinding/z20;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/z20;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/z20;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/z20;)V", "Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;", "viewModle", "choicedFun", "Lkotlin/jvm/functions/Function1;", "Lcom/join/kotlin/ui/cloudarchive/adapter/ModChoiceArchiveAdapter;", "adapter$delegate", "getAdapter", "()Lcom/join/kotlin/ui/cloudarchive/adapter/ModChoiceArchiveAdapter;", "adapter", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ChoiceArchiveDialog extends DialogFragment implements View.OnClickListener {
    @NotNull
    private final Lazy adapter$delegate;
    private Function1<? super ArchiveData, Unit> choicedFun;
    public z20 dataBinding;
    @NotNull
    private final Lazy viewModle$delegate;

    public ChoiceArchiveDialog() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ChoiceArchiveDialogViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialog$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ChoiceArchiveDialogViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(ChoiceArchiveDialog.this, new ViewModelProvider.NewInstanceFactory()).get(ChoiceArchiveDialogViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(this, …dle::class.java\n        )");
                return (ChoiceArchiveDialogViewModle) viewModel;
            }
        });
        this.viewModle$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ModChoiceArchiveAdapter>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialog$adapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ModChoiceArchiveAdapter invoke() {
                Context context = ChoiceArchiveDialog.this.getContext();
                Intrinsics.checkNotNull(context);
                Intrinsics.checkNotNullExpressionValue(context, "context!!");
                return new ModChoiceArchiveAdapter(context);
            }
        });
        this.adapter$delegate = lazy2;
    }

    public static final /* synthetic */ Function1 access$getChoicedFun$p(ChoiceArchiveDialog choiceArchiveDialog) {
        Function1<? super ArchiveData, Unit> function1 = choiceArchiveDialog.choicedFun;
        if (function1 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("choicedFun");
        }
        return function1;
    }

    @NotNull
    public final ModChoiceArchiveAdapter getAdapter() {
        return (ModChoiceArchiveAdapter) this.adapter$delegate.getValue();
    }

    @NotNull
    public final z20 getDataBinding() {
        z20 z20Var = this.dataBinding;
        if (z20Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return z20Var;
    }

    @NotNull
    public final ChoiceArchiveDialogViewModle getViewModle() {
        return (ChoiceArchiveDialogViewModle) this.viewModle$delegate.getValue();
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
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        ViewDataBinding inflate = DataBindingUtil.inflate(inflater, R.layout.mod_choice_archive_dialog, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "DataBindingUtil.inflate(…          false\n        )");
        this.dataBinding = (z20) inflate;
        Bundle arguments = getArguments();
        if (arguments != null) {
            MutableLiveData<ArchiveData> archive = getViewModle().getArchive();
            Serializable serializable = arguments.getSerializable("archive");
            Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            archive.setValue((ArchiveData) serializable);
            MutableLiveData<List<ArchiveData>> archiveList = getViewModle().getArchiveList();
            Serializable serializable2 = arguments.getSerializable("archiveList");
            Objects.requireNonNull(serializable2, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.kotlin.ui.cloudarchive.data.ArchiveData>");
            archiveList.setValue(TypeIntrinsics.asMutableList(serializable2));
            List<ArchiveData> value = getViewModle().getArchiveList().getValue();
            if (value != null) {
                for (ArchiveData archiveData : value) {
                    String archiveDesc = archiveData.getArchiveDesc();
                    ArchiveData value2 = getViewModle().getArchive().getValue();
                    Intrinsics.checkNotNull(value2);
                    Intrinsics.checkNotNullExpressionValue(value2, "viewModle.archive.value!!");
                    if (Intrinsics.areEqual(archiveDesc, value2.getArchiveDesc())) {
                        archiveData.setCheckStatus(1);
                    } else {
                        archiveData.setCheckStatus(0);
                    }
                }
            }
        }
        z20 z20Var = this.dataBinding;
        if (z20Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        z20Var.setLifecycleOwner(this);
        z20 z20Var2 = this.dataBinding;
        if (z20Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        z20Var2.setVariable(27, getViewModle());
        z20 z20Var3 = this.dataBinding;
        if (z20Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        z20Var3.setVariable(7, this);
        z20 z20Var4 = this.dataBinding;
        if (z20Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        z20Var4.setVariable(1, getAdapter());
        getAdapter().setOnItemClickListener(new Function3<Integer, ArchiveData, Integer, Unit>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialog$onCreateView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, ArchiveData archiveData2, Integer num2) {
                invoke(num.intValue(), archiveData2, num2.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i2, @NotNull ArchiveData item, int i4) {
                Intrinsics.checkNotNullParameter(item, "item");
                ChoiceArchiveDialog.this.getViewModle().getArchive().setValue(item);
                List<ArchiveData> value3 = ChoiceArchiveDialog.this.getViewModle().getArchiveList().getValue();
                if (value3 != null) {
                    for (ArchiveData archiveData2 : value3) {
                        String archiveDesc2 = archiveData2.getArchiveDesc();
                        ArchiveData value4 = ChoiceArchiveDialog.this.getViewModle().getArchive().getValue();
                        Intrinsics.checkNotNull(value4);
                        Intrinsics.checkNotNullExpressionValue(value4, "viewModle.archive.value!!");
                        if (Intrinsics.areEqual(archiveDesc2, value4.getArchiveDesc())) {
                            archiveData2.setCheckStatus(1);
                        } else {
                            archiveData2.setCheckStatus(0);
                        }
                    }
                }
                Function1 access$getChoicedFun$p = ChoiceArchiveDialog.access$getChoicedFun$p(ChoiceArchiveDialog.this);
                ArchiveData value5 = ChoiceArchiveDialog.this.getViewModle().getArchive().getValue();
                Intrinsics.checkNotNull(value5);
                Intrinsics.checkNotNullExpressionValue(value5, "viewModle.archive.value!!");
                access$getChoicedFun$p.invoke(value5);
                ChoiceArchiveDialog.this.dismiss();
            }
        });
        getViewModle().getDialogData().setValue(new DialogData("请选择存档", "", null, null, false, 28, null));
        z20 z20Var5 = this.dataBinding;
        if (z20Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return z20Var5.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
    }

    public final void setDataBinding(@NotNull z20 z20Var) {
        Intrinsics.checkNotNullParameter(z20Var, "<set-?>");
        this.dataBinding = z20Var;
    }

    public final void setItemChoiced(@NotNull Function1<? super ArchiveData, Unit> func) {
        Intrinsics.checkNotNullParameter(func, "func");
        this.choicedFun = func;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String str) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, str);
    }
}

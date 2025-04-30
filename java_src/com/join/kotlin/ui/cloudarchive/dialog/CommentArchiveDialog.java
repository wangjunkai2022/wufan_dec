package com.join.kotlin.ui.cloudarchive.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.d30;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.Util.i2;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import java.io.Serializable;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import n1.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CommentArchiveDialog.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b*\u0010+J&\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u000f\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0016J\u000e\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010J\u001a\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016R$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001d\u0010)\u001a\u00020$8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(¨\u0006,"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/View$OnClickListener;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "v", "onClick", "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "dialogData", "setDatas", "Landroidx/fragment/app/FragmentManager;", "manager", "", TagGameListActivity_.f35885q0, CommonService_.f0.f51795c, "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "getDialogData", "()Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "setDialogData", "(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V", "Lcom/join/android/app/mgsim/wufun/databinding/d30;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/d30;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/d30;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/d30;)V", "Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;", "viewModle", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CommentArchiveDialog extends DialogFragment implements View.OnClickListener {
    public d30 dataBinding;
    @Nullable
    private DialogData dialogData;
    @NotNull
    private final Lazy viewModle$delegate;

    public CommentArchiveDialog() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DelArchiveDialogViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.CommentArchiveDialog$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DelArchiveDialogViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(CommentArchiveDialog.this, new ViewModelProvider.NewInstanceFactory()).get(DelArchiveDialogViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(this, …dle::class.java\n        )");
                return (DelArchiveDialogViewModle) viewModel;
            }
        });
        this.viewModle$delegate = lazy;
        this.dialogData = new DialogData("提示", "请评价一下你刚才玩的云存档吧～", null, null, false, 28, null);
    }

    @NotNull
    public final d30 getDataBinding() {
        d30 d30Var = this.dataBinding;
        if (d30Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return d30Var;
    }

    @Nullable
    public final DialogData getDialogData() {
        return this.dialogData;
    }

    @NotNull
    public final DelArchiveDialogViewModle getViewModle() {
        return (DelArchiveDialogViewModle) this.viewModle$delegate.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf != null && valueOf.intValue() == R.id.praise) {
            Context context = getContext();
            if (context != null) {
                EXTKt.checkHasLogin(context, new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.CommentArchiveDialog$onClick$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        ArchiveData value;
                        DelArchiveDialogViewModle viewModle = CommentArchiveDialog.this.getViewModle();
                        FragmentActivity requireActivity = CommentArchiveDialog.this.requireActivity();
                        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                        viewModle.commentArchive(requireActivity, SimpleComparison.LIKE_OPERATION);
                        p l4 = p.l(CommentArchiveDialog.this.getContext());
                        Event event = Event.clickEvalCloudButton;
                        Ext from = new Ext().setFrom("1");
                        MutableLiveData<ArchiveData> archive = CommentArchiveDialog.this.getViewModle().getArchive();
                        l4.K1(event, from.setGameId((archive == null || (value = archive.getValue()) == null) ? null : value.getGame_id()));
                    }
                });
            }
        } else if (valueOf != null && valueOf.intValue() == R.id.unCommend) {
            Context context2 = getContext();
            if (context2 != null) {
                EXTKt.checkHasLogin(context2, new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.CommentArchiveDialog$onClick$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        ArchiveData value;
                        DelArchiveDialogViewModle viewModle = CommentArchiveDialog.this.getViewModle();
                        FragmentActivity requireActivity = CommentArchiveDialog.this.requireActivity();
                        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                        viewModle.commentArchive(requireActivity, "NEGATIVE");
                        p l4 = p.l(CommentArchiveDialog.this.getContext());
                        Event event = Event.clickEvalCloudButton;
                        Ext from = new Ext().setFrom("4");
                        MutableLiveData<ArchiveData> archive = CommentArchiveDialog.this.getViewModle().getArchive();
                        l4.K1(event, from.setGameId((archive == null || (value = archive.getValue()) == null) ? null : value.getGame_id()));
                    }
                });
            }
        } else if (valueOf != null && valueOf.intValue() == R.id.otherUsers) {
            Context context3 = getContext();
            if (context3 != null) {
                EXTKt.checkHasLogin(context3, new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.CommentArchiveDialog$onClick$3
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        ArchiveData value;
                        DelArchiveDialogViewModle viewModle = CommentArchiveDialog.this.getViewModle();
                        FragmentActivity requireActivity = CommentArchiveDialog.this.requireActivity();
                        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                        viewModle.commentArchive(requireActivity, "PLAGIARIZE");
                        p l4 = p.l(CommentArchiveDialog.this.getContext());
                        Event event = Event.clickEvalCloudButton;
                        Ext from = new Ext().setFrom("3");
                        MutableLiveData<ArchiveData> archive = CommentArchiveDialog.this.getViewModle().getArchive();
                        l4.K1(event, from.setGameId((archive == null || (value = archive.getValue()) == null) ? null : value.getGame_id()));
                    }
                });
            }
        } else if (valueOf != null && valueOf.intValue() == R.id.closed) {
            dismiss();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        ViewDataBinding inflate = DataBindingUtil.inflate(inflater, R.layout.mod_commentl_archive_dialog, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "DataBindingUtil.inflate(…          false\n        )");
        this.dataBinding = (d30) inflate;
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        d30 d30Var = this.dataBinding;
        if (d30Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        d30Var.setLifecycleOwner(this);
        d30 d30Var2 = this.dataBinding;
        if (d30Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        d30Var2.setVariable(27, getViewModle());
        d30 d30Var3 = this.dataBinding;
        if (d30Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        d30Var3.setVariable(7, this);
        getViewModle().setClickCommentDialogListener(new Function1<Integer, Unit>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.CommentArchiveDialog$onCreateView$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i2) {
                if (i2 == 1) {
                    i2.a(CommentArchiveDialog.this.getContext()).b("评价成功");
                    CommentArchiveDialog.this.dismiss();
                    return;
                }
                CommentArchiveDialog.this.dismiss();
            }
        });
        getViewModle().getDialogData().setValue(this.dialogData);
        Bundle arguments = getArguments();
        if (arguments != null) {
            MutableLiveData<ArchiveData> archive = getViewModle().getArchive();
            Serializable serializable = arguments.getSerializable("archive");
            Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            archive.setValue((ArchiveData) serializable);
        }
        g t3 = g.t();
        ArchiveData value = getViewModle().getArchive().getValue();
        CloudArchiveTable p3 = t3.p(value != null ? value.getId() : null);
        if (p3 != null) {
            p3.setIsFirstRun(3);
            g.t().update(p3);
        }
        p.l(getContext()).K1(Event.exitGamePopupWin, new Ext().setGameId(p3 != null ? p3.getGameId() : null));
        d30 d30Var4 = this.dataBinding;
        if (d30Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return d30Var4.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
    }

    public final void setDataBinding(@NotNull d30 d30Var) {
        Intrinsics.checkNotNullParameter(d30Var, "<set-?>");
        this.dataBinding = d30Var;
    }

    public final void setDatas(@NotNull DialogData dialogData) {
        Intrinsics.checkNotNullParameter(dialogData, "dialogData");
        this.dialogData = dialogData;
    }

    public final void setDialogData(@Nullable DialogData dialogData) {
        this.dialogData = dialogData;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String str) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, str);
    }
}

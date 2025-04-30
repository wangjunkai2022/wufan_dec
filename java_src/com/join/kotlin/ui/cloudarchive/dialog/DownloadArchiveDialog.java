package com.join.kotlin.ui.cloudarchive.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.sd;
import com.join.kotlin.ui.cloudarchive.DownloadArchivDialogeViewModle;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.data.ModDataRequest;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog;
import com.join.mgps.Util.c0;
import g1.f;
import java.io.File;
import java.io.Serializable;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadArchiveDialog.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001eB\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ&\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0006\u0010\f\u001a\u00020\u000bJ\u0012\u0010\u000e\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0016R\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001b\u001a\u00020\u00168F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/View$OnClickListener;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "", "downLoadArchive", "v", "onClick", "Lcom/join/android/app/mgsim/wufun/databinding/sd;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/sd;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/sd;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/sd;)V", "Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;", "viewModle", "<init>", "()V", "UpdateLocalArchiveEvent", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class DownloadArchiveDialog extends DialogFragment implements View.OnClickListener {
    public sd dataBinding;
    @NotNull
    private final Lazy viewModle$delegate;

    /* compiled from: DownloadArchiveDialog.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$UpdateLocalArchiveEvent;", "", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class UpdateLocalArchiveEvent {
    }

    public DownloadArchiveDialog() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DownloadArchivDialogeViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DownloadArchivDialogeViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(DownloadArchiveDialog.this, new ViewModelProvider.NewInstanceFactory()).get(DownloadArchivDialogeViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …ogeViewModle::class.java)");
                return (DownloadArchivDialogeViewModle) viewModel;
            }
        });
        this.viewModle$delegate = lazy;
    }

    public final void downLoadArchive() {
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        File externalFilesDir = activity.getExternalFilesDir("");
        Intrinsics.checkNotNull(externalFilesDir);
        Intrinsics.checkNotNullExpressionValue(externalFilesDir, "activity!!.getExternalFilesDir(\"\")!!");
        String absolutePath = externalFilesDir.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "activity!!.getExternalFilesDir(\"\")!!.absolutePath");
        String str = absolutePath + "/Download/cloudarchive/";
        if (getViewModle().getArchive().getValue() == null || getViewModle().getCloud_archive_local_path().getValue() == null) {
            return;
        }
        ModDataRequest request = getViewModle().getRequest();
        ArchiveData value = getViewModle().getArchive().getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNullExpressionValue(value, "viewModle.archive.value!!");
        ArchiveData archiveData = value;
        ModGameArchivePathData value2 = getViewModle().getCloud_archive_local_path().getValue();
        Intrinsics.checkNotNull(value2);
        Intrinsics.checkNotNullExpressionValue(value2, "viewModle.cloud_archive_local_path.value!!");
        ModGameArchivePathData modGameArchivePathData = value2;
        Integer value3 = getViewModle().getDownloadType().getValue();
        Intrinsics.checkNotNull(value3);
        Intrinsics.checkNotNullExpressionValue(value3, "viewModle.downloadType.value!!");
        int intValue = value3.intValue();
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        Intrinsics.checkNotNullExpressionValue(context, "context!!");
        request.downloadArchive(archiveData, modGameArchivePathData, str, intValue, context);
    }

    @NotNull
    public final sd getDataBinding() {
        sd sdVar = this.dataBinding;
        if (sdVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return sdVar;
    }

    @NotNull
    public final DownloadArchivDialogeViewModle getViewModle() {
        return (DownloadArchivDialogeViewModle) this.viewModle$delegate.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        c0.a().c(new ArchiveDownEvent(6, getViewModle().getArchive().getValue()));
        getViewModle().getRequest().cancleDownloadTask(getViewModle().getArchive().getValue());
        dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ArchiveData value;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        ViewDataBinding inflate = DataBindingUtil.inflate(inflater, R.layout.download_archive_dialog, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "DataBindingUtil.inflate(…          false\n        )");
        this.dataBinding = (sd) inflate;
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        sd sdVar = this.dataBinding;
        if (sdVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        sdVar.setLifecycleOwner(this);
        sd sdVar2 = this.dataBinding;
        if (sdVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        sdVar2.setVariable(27, getViewModle());
        sd sdVar3 = this.dataBinding;
        if (sdVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        sdVar3.setVariable(7, this);
        Bundle arguments = getArguments();
        if (arguments != null) {
            MutableLiveData<ArchiveData> archive = getViewModle().getArchive();
            Serializable serializable = arguments.getSerializable("archive");
            Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            archive.setValue((ArchiveData) serializable);
            getViewModle().getDownloadType().setValue(Integer.valueOf(arguments.getInt("downloadType")));
            MutableLiveData<ModGameArchivePathData> cloud_archive_local_path = getViewModle().getCloud_archive_local_path();
            Serializable serializable2 = arguments.getSerializable("cloud_archive_local_path");
            Objects.requireNonNull(serializable2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData");
            cloud_archive_local_path.setValue((ModGameArchivePathData) serializable2);
            getViewModle().getRequest().setInstallInExtPlug(arguments.getBoolean("installInExtPlug"));
        }
        if (getViewModle().getArchive().getValue() != null) {
            f G = f.G();
            ArchiveData value2 = getViewModle().getArchive().getValue();
            DownloadTask B = G.B(value2 != null ? value2.getGame_id() : null);
            if (B != null && (value = getViewModle().getArchive().getValue()) != null) {
                value.setPackageName(B.getPackageName());
            }
        }
        getViewModle().getRequest().getProgress().observe(this, new Observer<Integer>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog$onCreateView$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Integer num) {
                DownloadArchiveDialog.this.getViewModle().getProgress().setValue(num);
                StringBuilder sb = new StringBuilder();
                sb.append("observe progress=");
                sb.append(num);
            }
        });
        getViewModle().getRequest().getProgressTextShow().observe(this, new Observer<String>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog$onCreateView$4
            @Override // androidx.lifecycle.Observer
            public final void onChanged(String str) {
                DownloadArchiveDialog.this.getViewModle().getProgressText().setValue(str);
                StringBuilder sb = new StringBuilder();
                sb.append("progressTextShow=");
                sb.append(str);
            }
        });
        getViewModle().getRequest().getStatus().observe(this, new Observer<Integer>() { // from class: com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog$onCreateView$5
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Integer num) {
                c0 a4 = c0.a();
                Intrinsics.checkNotNull(num);
                a4.c(new ArchiveDownEvent(num.intValue(), DownloadArchiveDialog.this.getViewModle().getArchive().getValue()));
                if (num.intValue() == 4) {
                    DownloadArchiveDialog.this.getViewModle().getProgress().setValue(100);
                } else if (num.intValue() == 8) {
                    ModDataRequest request = DownloadArchiveDialog.this.getViewModle().getRequest();
                    FragmentActivity activity = DownloadArchiveDialog.this.getActivity();
                    Intrinsics.checkNotNull(activity);
                    Intrinsics.checkNotNullExpressionValue(activity, "this.activity!!");
                    ArchiveData value3 = DownloadArchiveDialog.this.getViewModle().getArchive().getValue();
                    Intrinsics.checkNotNull(value3);
                    Intrinsics.checkNotNullExpressionValue(value3, "viewModle.archive.value!!");
                    request.reportDownloadArchive(activity, value3);
                    Integer value4 = DownloadArchiveDialog.this.getViewModle().getDownloadType().getValue();
                    if (value4 != null && value4.intValue() == 1) {
                        c0.a().c(new DownloadArchiveDialog.UpdateLocalArchiveEvent());
                    }
                    DownloadArchiveDialog.this.dismiss();
                }
                StringBuilder sb = new StringBuilder();
                sb.append("onstatus status=");
                sb.append(num);
            }
        });
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog$onCreateView$6
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(@Nullable DialogInterface dialogInterface, int i2, @Nullable KeyEvent keyEvent) {
                    return i2 == 4;
                }
            });
        }
        downLoadArchive();
        sd sdVar4 = this.dataBinding;
        if (sdVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return sdVar4.getRoot();
    }

    public final void setDataBinding(@NotNull sd sdVar) {
        Intrinsics.checkNotNullParameter(sdVar, "<set-?>");
        this.dataBinding = sdVar;
    }
}

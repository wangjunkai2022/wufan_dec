package com.join.kotlin.ui.cloudarchive.dialog;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ChoiceArchiveDialogViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J)\u0010\u0005\u001a\u00020\u00042!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00040\u0006R(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R.\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u000f\u001a\u0004\b\u0017\u0010\u0011\"\u0004\b\u0018\u0010\u0013R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR(\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00150\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u000f\u001a\u0004\b \u0010\u0011\"\u0004\b!\u0010\u0013¨\u0006$"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;", "Landroidx/lifecycle/ViewModel;", "Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;", "listener", "", "setClickCommentDialogListener", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "code", "listenerx", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "dialogData", "Landroidx/lifecycle/MutableLiveData;", "getDialogData", "()Landroidx/lifecycle/MutableLiveData;", "setDialogData", "(Landroidx/lifecycle/MutableLiveData;)V", "", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "archiveList", "getArchiveList", "setArchiveList", "listenr", "Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;", "getListenr", "()Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;", "setListenr", "(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;)V", "archive", "getArchive", "setArchive", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ChoiceArchiveDialogViewModle extends ViewModel {
    @NotNull
    private MutableLiveData<ArchiveData> archive = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<List<ArchiveData>> archiveList = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<DialogData> dialogData;
    public CommentDialogListener listenr;

    public ChoiceArchiveDialogViewModle() {
        MutableLiveData<DialogData> mutableLiveData = new MutableLiveData<>();
        this.dialogData = mutableLiveData;
        mutableLiveData.setValue(new DialogData("提示", "", null, null, false, 28, null));
    }

    @NotNull
    public final MutableLiveData<ArchiveData> getArchive() {
        return this.archive;
    }

    @NotNull
    public final MutableLiveData<List<ArchiveData>> getArchiveList() {
        return this.archiveList;
    }

    @NotNull
    public final MutableLiveData<DialogData> getDialogData() {
        return this.dialogData;
    }

    @NotNull
    public final CommentDialogListener getListenr() {
        CommentDialogListener commentDialogListener = this.listenr;
        if (commentDialogListener == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listenr");
        }
        return commentDialogListener;
    }

    public final void setArchive(@NotNull MutableLiveData<ArchiveData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archive = mutableLiveData;
    }

    public final void setArchiveList(@NotNull MutableLiveData<List<ArchiveData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archiveList = mutableLiveData;
    }

    public final void setClickCommentDialogListener(@NotNull CommentDialogListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listenr = listener;
    }

    public final void setDialogData(@NotNull MutableLiveData<DialogData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.dialogData = mutableLiveData;
    }

    public final void setListenr(@NotNull CommentDialogListener commentDialogListener) {
        Intrinsics.checkNotNullParameter(commentDialogListener, "<set-?>");
        this.listenr = commentDialogListener;
    }

    public final void setClickCommentDialogListener(@NotNull final Function1<? super Integer, Unit> listenerx) {
        Intrinsics.checkNotNullParameter(listenerx, "listenerx");
        this.listenr = new CommentDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialogViewModle$setClickCommentDialogListener$1
            @Override // com.join.kotlin.ui.cloudarchive.dialog.CommentDialogListener
            public void onSendMessageFinish(int i2) {
                Function1.this.invoke(Integer.valueOf(i2));
            }
        };
    }
}

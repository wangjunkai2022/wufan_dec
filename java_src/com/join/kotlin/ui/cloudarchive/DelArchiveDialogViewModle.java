package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.kotlin.ui.cloudarchive.data.ArchiveArgs;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.dialog.CommentDialogListener;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.i2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: DelArchiveDialogViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b&\u0010'J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J)\u0010\u0005\u001a\u00020\u00042!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00040\u0006J\u0016\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R(\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u001a\u001a\u0004\b!\u0010\u001c\"\u0004\b\"\u0010\u001eR(\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001a\u001a\u0004\b$\u0010\u001c\"\u0004\b%\u0010\u001e¨\u0006("}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;", "Landroidx/lifecycle/ViewModel;", "Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;", "listener", "", "setClickCommentDialogListener", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "code", "listenerx", "Landroid/content/Context;", "context", "", "type", "commentArchive", "listenr", "Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;", "getListenr", "()Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;", "setListenr", "(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;)V", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "dialogData", "Landroidx/lifecycle/MutableLiveData;", "getDialogData", "()Landroidx/lifecycle/MutableLiveData;", "setDialogData", "(Landroidx/lifecycle/MutableLiveData;)V", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "archive", "getArchive", "setArchive", "", "isCommitLoding", "setCommitLoding", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class DelArchiveDialogViewModle extends ViewModel {
    @NotNull
    private MutableLiveData<ArchiveData> archive = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<DialogData> dialogData = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Boolean> isCommitLoding = new MutableLiveData<>();
    public CommentDialogListener listenr;

    public DelArchiveDialogViewModle() {
        this.dialogData.setValue(new DialogData("提示", "", null, null, false, 28, null));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [com.join.kotlin.ui.cloudarchive.data.ArchiveData, T] */
    public final void commentArchive(@NotNull final Context context, @NotNull final String type) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(type, "type");
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.areEqual(this.isCommitLoding.getValue(), bool)) {
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ArchiveData value = this.archive.getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNullExpressionValue(value, "archive.value!!");
        objectRef.element = value;
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        archiveArgs.setArchiveId(((ArchiveData) objectRef.element).getId());
        archiveArgs.setGameId(((ArchiveData) objectRef.element).getGame_id());
        this.isCommitLoding.setValue(bool);
        archiveArgs.setCommentType(type);
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        archiveArgs.setUid(accountData.getUid());
        requestModel.setArgs(archiveArgs);
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        L.J().J(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle$commentArchive$1
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<ResponseModel<?>> call, @NotNull Throwable t3) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t3, "t");
                DelArchiveDialogViewModle.this.isCommitLoding().setValue(Boolean.FALSE);
                i2.a(context).b("评价异常！");
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<ResponseModel<?>> call, @NotNull Response<ResponseModel<?>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                DelArchiveDialogViewModle.this.isCommitLoding().setValue(Boolean.FALSE);
                ResponseModel<?> body = response.body();
                if (body != null && body.getCode() == 200) {
                    DelArchiveDialogViewModle.this.getListenr().onSendMessageFinish(1);
                    if (Intrinsics.areEqual(SimpleComparison.LIKE_OPERATION, type)) {
                        ((ArchiveData) objectRef.element).setIsLike(1);
                        T t3 = objectRef.element;
                        ArchiveData archiveData = (ArchiveData) t3;
                        ArchiveData archiveData2 = (ArchiveData) t3;
                        archiveData2.setLikeCount(archiveData2.getLikeCount() + 1);
                        archiveData.setLikeCount(archiveData2.getLikeCount());
                        c0.a().c(new ArchiveDownEvent(10, (ArchiveData) objectRef.element));
                        return;
                    } else if (Intrinsics.areEqual("NEGATIVE", type)) {
                        ((ArchiveData) objectRef.element).setIsUnLike(1);
                        T t4 = objectRef.element;
                        ArchiveData archiveData3 = (ArchiveData) t4;
                        ArchiveData archiveData4 = (ArchiveData) t4;
                        archiveData4.setNegativeCount(archiveData4.getNegativeCount() + 1);
                        archiveData3.setNegativeCount(archiveData4.getNegativeCount());
                        c0.a().c(new ArchiveDownEvent(10, (ArchiveData) objectRef.element));
                        return;
                    } else {
                        return;
                    }
                }
                DelArchiveDialogViewModle.this.getListenr().onSendMessageFinish(0);
                i2 a4 = i2.a(context);
                ResponseModel<?> body2 = response.body();
                a4.b(body2 != null ? body2.getMessage() : null);
            }
        });
    }

    @NotNull
    public final MutableLiveData<ArchiveData> getArchive() {
        return this.archive;
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

    @NotNull
    public final MutableLiveData<Boolean> isCommitLoding() {
        return this.isCommitLoding;
    }

    public final void setArchive(@NotNull MutableLiveData<ArchiveData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archive = mutableLiveData;
    }

    public final void setClickCommentDialogListener(@NotNull CommentDialogListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listenr = listener;
    }

    public final void setCommitLoding(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.isCommitLoding = mutableLiveData;
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
        this.listenr = new CommentDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle$setClickCommentDialogListener$1
            @Override // com.join.kotlin.ui.cloudarchive.dialog.CommentDialogListener
            public void onSendMessageFinish(int i2) {
                Function1.this.invoke(Integer.valueOf(i2));
            }
        };
    }
}

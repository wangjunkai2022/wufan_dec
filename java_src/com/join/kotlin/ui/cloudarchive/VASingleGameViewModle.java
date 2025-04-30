package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import android.view.View;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.RequestModGameArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
import g1.f;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: VASingleGameViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u000278B\u0007¢\u0006\u0004\b5\u00106J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R(\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR(\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR$\u0010\"\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R(\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010\u0018\u001a\u0004\b)\u0010\u001a\"\u0004\b*\u0010\u001cR(\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00130\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010\u0018\u001a\u0004\b,\u0010\u001a\"\u0004\b-\u0010\u001cR\"\u0010/\u001a\u00020.8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104¨\u00069"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;", "Landroidx/lifecycle/ViewModel;", "", "gameId", "", "initDatas", "Landroid/content/Context;", "context", "loadDatas", "Landroid/view/View;", "view", "onClickView", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "getDownloadTask", "()Lcom/github/snowdream/android/app/downloader/DownloadTask;", "setDownloadTask", "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V", "Lcom/join/kotlin/domain/common/LoadBindindData;", "statusBind", "Lcom/join/kotlin/domain/common/LoadBindindData;", "Landroidx/lifecycle/MutableLiveData;", "backGroundURl", "Landroidx/lifecycle/MutableLiveData;", "getBackGroundURl", "()Landroidx/lifecycle/MutableLiveData;", "setBackGroundURl", "(Landroidx/lifecycle/MutableLiveData;)V", "", "showStatus", "getShowStatus", "setShowStatus", "Lcom/join/mgps/dto/ModGameDetailBean;", "modGameDetailBean", "Lcom/join/mgps/dto/ModGameDetailBean;", "getModGameDetailBean", "()Lcom/join/mgps/dto/ModGameDetailBean;", "setModGameDetailBean", "(Lcom/join/mgps/dto/ModGameDetailBean;)V", "gameName", "getGameName", "setGameName", "loadBindData", "getLoadBindData", "setLoadBindData", "Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;", "listener", "Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;)V", "<init>", "()V", "Listener", "ShowStatus", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class VASingleGameViewModle extends ViewModel {
    public DownloadTask downloadTask;
    public Listener listener;
    @Nullable
    private ModGameDetailBean modGameDetailBean;
    @NotNull
    private MutableLiveData<String> backGroundURl = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<String> gameName = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> showStatus = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();
    private LoadBindindData statusBind = new LoadBindindData(1);

    /* compiled from: VASingleGameViewModle.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H&¨\u0006\u0004"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;", "", "", "onCLickBack", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public interface Listener {
        void onCLickBack();
    }

    /* compiled from: VASingleGameViewModle.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$ShowStatus;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ShowStatus {
        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int SHOWFAILED = 3;
        public static final int SHOWLODING = 2;
        public static final int SHOWMAIN = 1;
        public static final int SHOWNULL = 4;

        /* compiled from: VASingleGameViewModle.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$ShowStatus$Companion;", "", "", "SHOWFAILED", "I", "SHOWLODING", "SHOWMAIN", "SHOWNULL", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }
    }

    public VASingleGameViewModle() {
        this.backGroundURl.setValue("");
        this.gameName.setValue("");
        this.loadBindData.setValue(this.statusBind);
    }

    @NotNull
    public final MutableLiveData<String> getBackGroundURl() {
        return this.backGroundURl;
    }

    @NotNull
    public final DownloadTask getDownloadTask() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadTask");
        }
        return downloadTask;
    }

    @NotNull
    public final MutableLiveData<String> getGameName() {
        return this.gameName;
    }

    @NotNull
    public final Listener getListener() {
        Listener listener = this.listener;
        if (listener == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listener");
        }
        return listener;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @Nullable
    public final ModGameDetailBean getModGameDetailBean() {
        return this.modGameDetailBean;
    }

    @NotNull
    public final MutableLiveData<Integer> getShowStatus() {
        return this.showStatus;
    }

    public final void initDatas(@NotNull String gameId) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        DownloadTask B = f.G().B(gameId);
        Intrinsics.checkNotNullExpressionValue(B, "DownloadTaskManager.getI…nce().getByGameId(gameId)");
        this.downloadTask = B;
        MutableLiveData<String> mutableLiveData = this.gameName;
        if (B == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadTask");
        }
        mutableLiveData.setValue(B.getShowName());
    }

    public final void loadDatas(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!com.join.android.app.common.utils.f.j(context)) {
            this.showStatus.setValue(3);
            LoadBindindData value = this.loadBindData.getValue();
            Intrinsics.checkNotNull(value);
            Integer value2 = this.showStatus.getValue();
            Intrinsics.checkNotNull(value2);
            value.setShowStatus(value2.intValue());
            return;
        }
        try {
            AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
            Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
            AccountBean accountData = instance_.getAccountData();
            if (accountData == null) {
                accountData = new AccountBean();
            }
            this.showStatus.setValue(2);
            LoadBindindData value3 = this.loadBindData.getValue();
            Intrinsics.checkNotNull(value3);
            Integer value4 = this.showStatus.getValue();
            Intrinsics.checkNotNull(value4);
            value3.setShowStatus(value4.intValue());
            RequestModel<RequestModGameArgs> requestModel = new RequestModel<>();
            RequestModGameArgs requestModGameArgs = new RequestModGameArgs();
            requestModGameArgs.setUid(accountData.getUid());
            requestModGameArgs.setUserToken(accountData.getToken());
            DownloadTask downloadTask = this.downloadTask;
            if (downloadTask == null) {
                Intrinsics.throwUninitializedPropertyAccessException("downloadTask");
            }
            requestModGameArgs.setGameId(downloadTask.getCrc_link_type_val());
            requestModel.setArgs(requestModGameArgs);
            requestModel.setDefault(context);
            h L = h.L();
            Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
            L.J().p(requestModel).enqueue(new Callback<ResponseModel<ModGameDetailBean>>() { // from class: com.join.kotlin.ui.cloudarchive.VASingleGameViewModle$loadDatas$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<ModGameDetailBean>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                    VASingleGameViewModle.this.getShowStatus().setValue(3);
                    LoadBindindData value5 = VASingleGameViewModle.this.getLoadBindData().getValue();
                    Intrinsics.checkNotNull(value5);
                    Integer value6 = VASingleGameViewModle.this.getShowStatus().getValue();
                    Intrinsics.checkNotNull(value6);
                    value5.setShowStatus(value6.intValue());
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<ModGameDetailBean>> call, @NotNull Response<ResponseModel<ModGameDetailBean>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                }
            });
        } catch (Exception e4) {
            e4.printStackTrace();
            this.showStatus.setValue(3);
            LoadBindindData value5 = this.loadBindData.getValue();
            Intrinsics.checkNotNull(value5);
            Integer value6 = this.showStatus.getValue();
            Intrinsics.checkNotNull(value6);
            value5.setShowStatus(value6.intValue());
        }
    }

    public final void onClickView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        int id = view.getId();
        if (id != R.id.cl_mod) {
            if (id != R.id.iv_back) {
                return;
            }
            Listener listener = this.listener;
            if (listener == null) {
                Intrinsics.throwUninitializedPropertyAccessException("listener");
            }
            Intrinsics.checkNotNull(listener);
            listener.onCLickBack();
            return;
        }
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadTask");
        }
        if (downloadTask != null) {
            Context context = view.getContext();
            DownloadTask downloadTask2 = this.downloadTask;
            if (downloadTask2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("downloadTask");
            }
            UtilsMy.s3(context, downloadTask2);
        }
    }

    public final void setBackGroundURl(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.backGroundURl = mutableLiveData;
    }

    public final void setDownloadTask(@NotNull DownloadTask downloadTask) {
        Intrinsics.checkNotNullParameter(downloadTask, "<set-?>");
        this.downloadTask = downloadTask;
    }

    public final void setGameName(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.gameName = mutableLiveData;
    }

    public final void setListener(@NotNull Listener listener) {
        Intrinsics.checkNotNullParameter(listener, "<set-?>");
        this.listener = listener;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setModGameDetailBean(@Nullable ModGameDetailBean modGameDetailBean) {
        this.modGameDetailBean = modGameDetailBean;
    }

    public final void setShowStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showStatus = mutableLiveData;
    }
}

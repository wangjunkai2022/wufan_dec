package com.join.kotlin.ui.notice;

import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.domain.common.BaseLoadListDataModle;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.mgps.dto.BTActivityBean;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NoticeViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R(\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR8\u0010\u001f\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001d0\u001cj\b\u0012\u0004\u0012\u00020\u001d`\u001e0\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\t\u001a\u0004\b \u0010\u000b\"\u0004\b!\u0010\r¨\u0006$"}, d2 = {"Lcom/join/kotlin/ui/notice/NoticeViewModle;", "Lcom/join/kotlin/domain/common/BaseLoadListDataModle;", "", "hasNet", "", "updateShowLoadUI", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/domain/common/LoadBindindData;", "loadDataBinding", "Landroidx/lifecycle/MutableLiveData;", "getLoadDataBinding", "()Landroidx/lifecycle/MutableLiveData;", "setLoadDataBinding", "(Landroidx/lifecycle/MutableLiveData;)V", "Lcom/join/kotlin/ui/notice/NoticeRequest;", "request", "Lcom/join/kotlin/ui/notice/NoticeRequest;", "getRequest", "()Lcom/join/kotlin/ui/notice/NoticeRequest;", "setRequest", "(Lcom/join/kotlin/ui/notice/NoticeRequest;)V", "", "title", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/BTActivityBean;", "Lkotlin/collections/ArrayList;", "noticeDats", "getNoticeDats", "setNoticeDats", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class NoticeViewModle extends BaseLoadListDataModle {
    @NotNull
    private MutableLiveData<LoadBindindData> loadDataBinding;
    @NotNull
    private MutableLiveData<ArrayList<BTActivityBean>> noticeDats = new MutableLiveData<>();
    @NotNull
    private NoticeRequest request = new NoticeRequest();
    @NotNull
    private String title = "活动公告";

    public NoticeViewModle() {
        MutableLiveData<LoadBindindData> mutableLiveData = new MutableLiveData<>();
        this.loadDataBinding = mutableLiveData;
        mutableLiveData.setValue(new LoadBindindData(2));
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadDataBinding() {
        return this.loadDataBinding;
    }

    @NotNull
    public final MutableLiveData<ArrayList<BTActivityBean>> getNoticeDats() {
        return this.noticeDats;
    }

    @NotNull
    public final NoticeRequest getRequest() {
        return this.request;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void setLoadDataBinding(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadDataBinding = mutableLiveData;
    }

    public final void setNoticeDats(@NotNull MutableLiveData<ArrayList<BTActivityBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.noticeDats = mutableLiveData;
    }

    public final void setRequest(@NotNull NoticeRequest noticeRequest) {
        Intrinsics.checkNotNullParameter(noticeRequest, "<set-?>");
        this.request = noticeRequest;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void updateShowLoadUI(boolean z3) {
        if (this.noticeDats.getValue() == null) {
            this.loadDataBinding.setValue(new LoadBindindData(2));
            return;
        }
        ArrayList<BTActivityBean> value = this.noticeDats.getValue();
        Intrinsics.checkNotNull(value);
        if (value.size() != 0) {
            this.loadDataBinding.setValue(new LoadBindindData(1));
        } else if (z3) {
            this.loadDataBinding.setValue(new LoadBindindData(4));
        } else {
            this.loadDataBinding.setValue(new LoadBindindData(3));
        }
    }
}

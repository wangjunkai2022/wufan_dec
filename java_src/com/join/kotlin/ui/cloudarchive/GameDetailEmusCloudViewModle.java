package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.cloudarchive.adapter.EmusArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.data.EmusDataRequest;
import com.join.mgps.Util.t;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.mod.utils.PluginConfig;
import com.join.mgps.va.overmind.f;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GameDetailEmusCloudViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010!\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b)\u0010*J\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J&\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rR(\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\u001f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R.\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040%0\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0013\u001a\u0004\b'\u0010\u0015\"\u0004\b(\u0010\u0017¨\u0006+"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;", "Landroidx/lifecycle/ViewModel;", "", "getRuningArchive", "Lcom/join/mgps/dto/CloudListDataBean;", "archiveData", "Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;", "adapter", "", "onitemChanged", "Landroid/content/Context;", "context", "type", "", "from", "commentArchive", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/domain/common/LoadBindindData;", "loadBindData", "Landroidx/lifecycle/MutableLiveData;", "getLoadBindData", "()Landroidx/lifecycle/MutableLiveData;", "setLoadBindData", "(Landroidx/lifecycle/MutableLiveData;)V", "Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;", "request", "Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;", "getRequest", "()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;", "setRequest", "(Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;)V", "packageName", "Ljava/lang/String;", "getPackageName", "()Ljava/lang/String;", "setPackageName", "(Ljava/lang/String;)V", "", "listArchive", "getListArchive", "setListArchive", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class GameDetailEmusCloudViewModle extends ViewModel {
    @NotNull
    private MutableLiveData<List<CloudListDataBean>> listArchive = new MutableLiveData<>();
    @NotNull
    private EmusDataRequest request = new EmusDataRequest();
    @NotNull
    private String packageName = "";
    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();

    public GameDetailEmusCloudViewModle() {
        this.listArchive.setValue(new ArrayList());
    }

    public final void commentArchive(@NotNull Context context, @NotNull CloudListDataBean archiveData, @NotNull String type, int i2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(type, "type");
    }

    @NotNull
    public final MutableLiveData<List<CloudListDataBean>> getListArchive() {
        return this.listArchive;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    public final EmusDataRequest getRequest() {
        return this.request;
    }

    @NotNull
    public final String getRuningArchive() {
        t.c archiveSection = PluginConfig.getArchiveSection(f.r(f.f52369d, this.packageName, 0, 2, null));
        if (archiveSection != null) {
            String c4 = archiveSection.c("archiveId");
            Intrinsics.checkNotNullExpressionValue(c4, "section[\"archiveId\"]");
            return c4;
        }
        return "0";
    }

    public final void onitemChanged(@NotNull CloudListDataBean archiveData, @NotNull EmusArchiveAdapter adapter) {
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        List<CloudListDataBean> value = this.listArchive.getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNullExpressionValue(value, "listArchive.value!!");
        for (int size = value.size() - 1; size >= 0; size--) {
            List<CloudListDataBean> value2 = this.listArchive.getValue();
            Intrinsics.checkNotNull(value2);
            if (Intrinsics.areEqual(value2.get(size).getId(), archiveData.getId())) {
                adapter.notifyItemChanged(size, archiveData);
                return;
            }
        }
    }

    public final void setListArchive(@NotNull MutableLiveData<List<CloudListDataBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.listArchive = mutableLiveData;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setPackageName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.packageName = str;
    }

    public final void setRequest(@NotNull EmusDataRequest emusDataRequest) {
        Intrinsics.checkNotNullParameter(emusDataRequest, "<set-?>");
        this.request = emusDataRequest;
    }
}

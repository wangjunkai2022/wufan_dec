package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import android.os.Environment;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.data.ArchiveArgs;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.data.ModDataRequest;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.mod.utils.PluginConfig;
import com.join.mgps.rpc.impl.h;
import com.join.mgps.va.overmind.e;
import com.join.mgps.va.overmind.f;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import com.psk.kotlin.util.CommonListMainData;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.v1;
import n1.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: ModGameCloudViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bM\u0010NJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\b\u001a\u00020\u0007J.\u0010\u0010\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000eJ\u0016\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011J\u0016\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019J&\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001dJ\u001e\u0010\"\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00040 J)\u0010(\u001a\u00020\u00042!\u0010!\u001a\u001d\u0012\u0013\u0012\u00110$¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b('\u0012\u0004\u0012\u00020\u00040#R(\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001d0)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R.\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u000e0)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010+\u001a\u0004\b1\u0010-\"\u0004\b2\u0010/R.\u00104\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002030\u000e0)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u0010+\u001a\u0004\b5\u0010-\"\u0004\b6\u0010/R(\u00107\u001a\b\u0012\u0004\u0012\u00020\n0)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010+\u001a\u0004\b8\u0010-\"\u0004\b9\u0010/R\"\u0010:\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u0016\u0010@\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\"\u0010C\u001a\u00020B8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR(\u0010J\u001a\b\u0012\u0004\u0012\u00020I0)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010+\u001a\u0004\bK\u0010-\"\u0004\bL\u0010/¨\u0006O"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "Landroidx/lifecycle/ViewModel;", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "archiveData", "", "changeLocalDataDel", "locallAddArchive", "", "getRuningArchive", "packagename", "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "modGameArchivePathData", "", "archiveId", "", "lists", "loadAllArchives", "Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "adapter", "onitemChanged", "Landroid/content/Context;", "context", "delMyDownloadArchive", "updateItemData", "delMyArchiveFromCloud", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;", "archiveDownEvent", "onRecivedDownLoadEVent", "type", "", "from", "commentArchive", "Lkotlin/Function0;", com.alipay.sdk.authjs.a.f9679m, "startGameADCheck", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "copyResult", "copyArchive", "Landroidx/lifecycle/MutableLiveData;", "showPosition", "Landroidx/lifecycle/MutableLiveData;", "getShowPosition", "()Landroidx/lifecycle/MutableLiveData;", "setShowPosition", "(Landroidx/lifecycle/MutableLiveData;)V", "localAllArchive", "getLocalAllArchive", "setLocalAllArchive", "Lcom/psk/kotlin/util/CommonListMainData;", "listArchive", "getListArchive", "setListArchive", "cloud_archive_local_path", "getCloud_archive_local_path", "setCloud_archive_local_path", "packageName", "Ljava/lang/String;", "getPackageName", "()Ljava/lang/String;", "setPackageName", "(Ljava/lang/String;)V", "changeNUmber", "I", "Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;", "request", "Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;", "getRequest", "()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;", "setRequest", "(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;)V", "Lcom/join/kotlin/domain/common/LoadBindindData;", "loadBindData", "getLoadBindData", "setLoadBindData", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ModGameCloudViewModle extends ViewModel {
    private int changeNUmber;
    @NotNull
    private MutableLiveData<List<CommonListMainData>> listArchive = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<ModGameArchivePathData> cloud_archive_local_path = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<List<ArchiveData>> localAllArchive = new MutableLiveData<>();
    @NotNull
    private ModDataRequest request = new ModDataRequest();
    @NotNull
    private String packageName = "";
    @NotNull
    private MutableLiveData<Integer> showPosition = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();

    public ModGameCloudViewModle() {
        this.listArchive.setValue(new ArrayList());
        this.showPosition.setValue(1);
    }

    private final void changeLocalDataDel(ArchiveData archiveData) {
        ArrayList arrayList;
        List<ArchiveData> value;
        List<ArchiveData> value2 = this.localAllArchive.getValue();
        if (value2 != null) {
            arrayList = new ArrayList();
            for (Object obj : value2) {
                if (Intrinsics.areEqual(((ArchiveData) obj).getId(), archiveData.getId())) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null || !(!arrayList.isEmpty()) || (value = this.localAllArchive.getValue()) == null) {
            return;
        }
        value.remove(arrayList.get(0));
    }

    private final void locallAddArchive(ArchiveData archiveData) {
        CloudArchiveTable p3 = g.t().p(archiveData.getId());
        if (p3 == null) {
            return;
        }
        List<CommonListMainData> value = this.listArchive.getValue();
        Intrinsics.checkNotNull(value);
        int i2 = 0;
        boolean z3 = false;
        for (CommonListMainData commonListMainData : value) {
            Object any = commonListMainData.getAny();
            Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ArchiveData archiveData2 = (ArchiveData) any;
            if (Intrinsics.areEqual(archiveData2.getId(), archiveData.getId())) {
                archiveData.setIsFirstRun(p3.getIsFirstRun());
                archiveData2.setIsFirstRun(p3.getIsFirstRun());
                archiveData.setArchiveLocalZipPath(p3.getArchiveZipPath());
                archiveData2.setMainArchiveLocalPath(p3.getArchiveFolder());
                archiveData2.setMainArchiveLocalPath2(p3.getMainArchiveLocalPath2());
                archiveData2.setArchiveLocalPath(p3.getArchiveFiles());
                archiveData2.setUserId(p3.getUserId());
                archiveData.setUserId(p3.getUserId());
                z3 = true;
            }
        }
        ArchiveData archiveData3 = (ArchiveData) JsonMapper.getInstance().fromJson(p3.getArchiveDataJson(), ArchiveData.class);
        Intrinsics.checkNotNullExpressionValue(archiveData3, "archiveData");
        archiveData3.setArchiveLocalZipPath(p3.getArchiveZipPath());
        archiveData3.setId(p3.getArchiveId());
        archiveData3.setUserId(p3.getUserId());
        archiveData3.setShowType(2);
        archiveData3.setIsFirstRun(p3.getIsFirstRun());
        archiveData3.setMainArchiveLocalPath(p3.getArchiveFolder());
        archiveData3.setMainArchiveLocalPath2(p3.getMainArchiveLocalPath2());
        archiveData3.setArchiveLocalPath(p3.getArchiveFiles());
        ArchiveData archiveData4 = null;
        List<ArchiveData> value2 = this.localAllArchive.getValue();
        Intrinsics.checkNotNull(value2);
        Iterator<ArchiveData> it2 = value2.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            ArchiveData next = it2.next();
            if (Intrinsics.areEqual(next.getId(), p3.getArchiveId())) {
                archiveData4 = next;
                break;
            }
        }
        if (archiveData4 != null) {
            archiveData4.setArchiveLocalZipPath(p3.getArchiveZipPath());
            archiveData4.setId(p3.getArchiveId());
            archiveData4.setShowType(2);
            archiveData4.setIsFirstRun(p3.getIsFirstRun());
            archiveData4.setMainArchiveLocalPath(p3.getArchiveFolder());
            archiveData4.setMainArchiveLocalPath2(p3.getMainArchiveLocalPath2());
            archiveData4.setArchiveLocalPath(p3.getArchiveFiles());
        } else {
            List<ArchiveData> value3 = this.localAllArchive.getValue();
            if (value3 != null) {
                value3.add(archiveData3);
            }
        }
        if (z3) {
            MutableLiveData<List<CommonListMainData>> mutableLiveData = this.listArchive;
            mutableLiveData.setValue(mutableLiveData.getValue());
            return;
        }
        Integer value4 = this.showPosition.getValue();
        if (value4 != null && value4.intValue() == 1) {
            return;
        }
        try {
            if (this.listArchive.getValue() != null) {
                List<CommonListMainData> value5 = this.listArchive.getValue();
                Intrinsics.checkNotNull(value5);
                if (value5.size() > 0) {
                    List<CommonListMainData> value6 = this.listArchive.getValue();
                    Intrinsics.checkNotNull(value6);
                    Object any2 = value6.get(0).getAny();
                    if (any2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                    }
                    if (Intrinsics.areEqual(((ArchiveData) any2).getId(), "0")) {
                        i2 = 1;
                    }
                }
            }
        } catch (Exception unused) {
        }
        List<CommonListMainData> value7 = this.listArchive.getValue();
        if (value7 != null) {
            value7.add(i2, new CommonListMainData(3, archiveData3, null, null, 12, null));
        }
        MutableLiveData<List<CommonListMainData>> mutableLiveData2 = this.listArchive;
        mutableLiveData2.setValue(mutableLiveData2.getValue());
    }

    public final void commentArchive(@NotNull final Context context, @NotNull final ArchiveData archiveData, @NotNull String type, final int i2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(type, "type");
        if (archiveData.getIsFirstRun() <= 1) {
            i2.a(context).b("请先启动此存档后再点评");
            return;
        }
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        archiveArgs.setArchiveId(archiveData.getId());
        archiveArgs.setGameId(archiveData.getGame_id());
        archiveArgs.setCommentType(type);
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        archiveArgs.setUid(accountData.getUid());
        requestModel.setArgs(archiveArgs);
        if (Intrinsics.areEqual(type, "NEGATIVE")) {
            h L = h.L();
            Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
            L.J().J(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle$commentArchive$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<?>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<?>> call, @NotNull Response<ResponseModel<?>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    ResponseModel<?> body = response.body();
                    if (body != null && body.getCode() == 200) {
                        archiveData.setIsUnLike(1);
                        ArchiveData archiveData2 = archiveData;
                        archiveData2.setNegativeCount(archiveData2.getNegativeCount() + 1);
                        archiveData2.setNegativeCount(archiveData2.getNegativeCount());
                        c0.a().c(new ArchiveDownEvent(10, archiveData));
                        ModGameCloudViewModle.this.getListArchive().setValue(ModGameCloudViewModle.this.getListArchive().getValue());
                        if (i2 == 1) {
                            p l4 = p.l(context);
                            Event event = Event.giveCloudDisLike;
                            Ext from = new Ext().setFrom("1");
                            ArchiveData archiveData3 = archiveData;
                            l4.K1(event, from.setGameId(archiveData3 != null ? archiveData3.getGame_id() : null));
                            return;
                        }
                        p l5 = p.l(context);
                        Event event2 = Event.giveCloudDisLike;
                        Ext from2 = new Ext().setFrom(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                        ArchiveData archiveData4 = archiveData;
                        l5.K1(event2, from2.setGameId(archiveData4 != null ? archiveData4.getGame_id() : null));
                        return;
                    }
                    i2 a4 = i2.a(context);
                    ResponseModel<?> body2 = response.body();
                    a4.b(body2 != null ? body2.getMessage() : null);
                }
            });
        } else if (archiveData.getIsLike() == 0) {
            h L2 = h.L();
            Intrinsics.checkNotNullExpressionValue(L2, "RpcGameClientImpl.newInstance()");
            L2.J().J(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle$commentArchive$2
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<?>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<?>> call, @NotNull Response<ResponseModel<?>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    ResponseModel<?> body = response.body();
                    if (body != null && body.getCode() == 200) {
                        archiveData.setIsLike(1);
                        ArchiveData archiveData2 = archiveData;
                        archiveData2.setLikeCount(archiveData2.getLikeCount() + 1);
                        archiveData2.setLikeCount(archiveData2.getLikeCount());
                        c0.a().c(new ArchiveDownEvent(10, archiveData));
                        ModGameCloudViewModle.this.getListArchive().setValue(ModGameCloudViewModle.this.getListArchive().getValue());
                        if (i2 == 1) {
                            p l4 = p.l(context);
                            Event event = Event.giveCloudLike;
                            Ext from = new Ext().setFrom("1");
                            ArchiveData archiveData3 = archiveData;
                            l4.K1(event, from.setGameId(archiveData3 != null ? archiveData3.getGame_id() : null));
                            return;
                        }
                        p l5 = p.l(context);
                        Event event2 = Event.giveCloudLike;
                        Ext from2 = new Ext().setFrom(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                        ArchiveData archiveData4 = archiveData;
                        l5.K1(event2, from2.setGameId(archiveData4 != null ? archiveData4.getGame_id() : null));
                        return;
                    }
                    i2 a4 = i2.a(context);
                    ResponseModel<?> body2 = response.body();
                    a4.b(body2 != null ? body2.getMessage() : null);
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.String] */
    public final void copyArchive(@NotNull Function1<? super Boolean, Unit> func) {
        String replace$default;
        Intrinsics.checkNotNullParameter(func, "func");
        String b02 = f.f52369d.b0();
        ModGameArchivePathData value = this.cloud_archive_local_path.getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNullExpressionValue(value, "cloud_archive_local_path.value!!");
        String mainArchiveLocalPath = value.getMainArchiveLocalPath();
        Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath, "cloud_archive_local_path…ue!!.mainArchiveLocalPath");
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = b02 + mainArchiveLocalPath;
        StringBuilder sb = new StringBuilder();
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        Intrinsics.checkNotNullExpressionValue(externalStorageDirectory, "Environment.getExternalStorageDirectory()");
        sb.append(externalStorageDirectory.getAbsolutePath());
        ModGameArchivePathData value2 = this.cloud_archive_local_path.getValue();
        Intrinsics.checkNotNull(value2);
        Intrinsics.checkNotNullExpressionValue(value2, "cloud_archive_local_path.value!!");
        String modPackageName = value2.getModPackageName();
        Intrinsics.checkNotNullExpressionValue(modPackageName, "cloud_archive_local_path.value!!.modPackageName");
        ModGameArchivePathData value3 = this.cloud_archive_local_path.getValue();
        Intrinsics.checkNotNull(value3);
        Intrinsics.checkNotNullExpressionValue(value3, "cloud_archive_local_path.value!!");
        String mainGamePackageName = value3.getMainGamePackageName();
        Intrinsics.checkNotNullExpressionValue(mainGamePackageName, "cloud_archive_local_path…lue!!.mainGamePackageName");
        replace$default = StringsKt__StringsJVMKt.replace$default(mainArchiveLocalPath, modPackageName, mainGamePackageName, false, 4, (Object) null);
        sb.append(replace$default);
        String sb2 = sb.toString();
        File file = new File(sb2);
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            Intrinsics.checkNotNullExpressionValue(listFiles, "file.listFiles()");
            if (!(listFiles.length == 0)) {
                k.f(v1.f72528a, g1.e(), null, new ModGameCloudViewModle$copyArchive$1(sb2, objectRef, func, null), 2, null);
                return;
            }
        }
        func.invoke(Boolean.FALSE);
    }

    public final void delMyArchiveFromCloud(@NotNull final Context context, @NotNull final ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        archiveArgs.setArchiveId(archiveData.getId());
        archiveArgs.setGameId(archiveData.getGame_id());
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        archiveArgs.setUid(accountData.getUid());
        requestModel.setArgs(archiveArgs);
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        L.J().P(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle$delMyArchiveFromCloud$1
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<ResponseModel<?>> call, @NotNull Throwable t3) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t3, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<ResponseModel<?>> call, @NotNull Response<ResponseModel<?>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                ResponseModel<?> body = response.body();
                if (body != null && body.getCode() == 200) {
                    List<CommonListMainData> value = ModGameCloudViewModle.this.getListArchive().getValue();
                    Intrinsics.checkNotNull(value);
                    Intrinsics.checkNotNullExpressionValue(value, "listArchive.value!!");
                    for (int size = value.size() - 1; size >= 0; size--) {
                        List<CommonListMainData> value2 = ModGameCloudViewModle.this.getListArchive().getValue();
                        Intrinsics.checkNotNull(value2);
                        Object any = value2.get(size).getAny();
                        Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                        if (Intrinsics.areEqual(((ArchiveData) any).getId(), archiveData.getId())) {
                            List<CommonListMainData> value3 = ModGameCloudViewModle.this.getListArchive().getValue();
                            Intrinsics.checkNotNull(value3);
                            value3.remove(size);
                            ModGameCloudViewModle.this.getListArchive().setValue(ModGameCloudViewModle.this.getListArchive().getValue());
                            return;
                        }
                    }
                    return;
                }
                i2.a(context).b(response.message());
            }
        });
    }

    public final void delMyDownloadArchive(@NotNull final Context context, @NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        boolean z3 = true;
        if (!Intrinsics.areEqual(archiveData.getId(), "0")) {
            g.t().o(archiveData.getPackageName(), archiveData.getId());
            List<CommonListMainData> value = this.listArchive.getValue();
            Intrinsics.checkNotNull(value);
            Intrinsics.checkNotNullExpressionValue(value, "listArchive.value!!");
            int size = value.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                List<CommonListMainData> value2 = this.listArchive.getValue();
                Intrinsics.checkNotNull(value2);
                Object any = value2.get(size).getAny();
                Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                if (Intrinsics.areEqual(((ArchiveData) any).getId(), archiveData.getId())) {
                    List<CommonListMainData> value3 = this.listArchive.getValue();
                    Intrinsics.checkNotNull(value3);
                    value3.remove(size);
                    MutableLiveData<List<CommonListMainData>> mutableLiveData = this.listArchive;
                    mutableLiveData.setValue(mutableLiveData.getValue());
                    break;
                }
                size--;
            }
            List<ArchiveData> value4 = this.localAllArchive.getValue();
            Intrinsics.checkNotNull(value4);
            Intrinsics.checkNotNullExpressionValue(value4, "localAllArchive.value!!");
            int size2 = value4.size() - 1;
            while (true) {
                if (size2 < 0) {
                    break;
                }
                List<ArchiveData> value5 = this.localAllArchive.getValue();
                Intrinsics.checkNotNull(value5);
                ArchiveData archiveData2 = value5.get(size2);
                Objects.requireNonNull(archiveData2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                if (Intrinsics.areEqual(archiveData2.getId(), archiveData.getId())) {
                    List<ArchiveData> value6 = this.localAllArchive.getValue();
                    Intrinsics.checkNotNull(value6);
                    value6.remove(size2);
                    break;
                }
                size2--;
            }
        } else {
            archiveData.setArchiveDesc("我的默认存档(暂无)");
            archiveData.setAddTime(0L);
            archiveData.setShowText("启动");
            archiveData.setStatus(8);
            archiveData.setId("0");
            archiveData.setUserId(0);
            CloudArchiveTable s3 = g.t().s(archiveData.getGame_id(), 0);
            if (s3 != null) {
                ArchiveData archiveData3 = (ArchiveData) JsonMapper.getInstance().fromJson(s3.getArchiveDataJson(), ArchiveData.class);
                Intrinsics.checkNotNullExpressionValue(archiveData3, "archiveData");
                archiveData3.setUserId(s3.getUserId());
                archiveData3.setId(s3.getArchiveId());
                delMyDownloadArchive(context, archiveData3);
            }
            List<CommonListMainData> value7 = this.listArchive.getValue();
            Intrinsics.checkNotNull(value7);
            Intrinsics.checkNotNullExpressionValue(value7, "listArchive.value!!");
            int size3 = value7.size() - 1;
            while (true) {
                if (size3 < 0) {
                    break;
                }
                List<CommonListMainData> value8 = this.listArchive.getValue();
                Intrinsics.checkNotNull(value8);
                Object any2 = value8.get(size3).getAny();
                Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                if (Intrinsics.areEqual(((ArchiveData) any2).getId(), archiveData.getId())) {
                    List<CommonListMainData> value9 = this.listArchive.getValue();
                    Intrinsics.checkNotNull(value9);
                    value9.remove(size3);
                    MutableLiveData<List<CommonListMainData>> mutableLiveData2 = this.listArchive;
                    mutableLiveData2.setValue(mutableLiveData2.getValue());
                    break;
                }
                size3--;
            }
            List<ArchiveData> value10 = this.localAllArchive.getValue();
            Intrinsics.checkNotNull(value10);
            Intrinsics.checkNotNullExpressionValue(value10, "localAllArchive.value!!");
            int size4 = value10.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                List<ArchiveData> value11 = this.localAllArchive.getValue();
                Intrinsics.checkNotNull(value11);
                ArchiveData archiveData4 = value11.get(size4);
                Objects.requireNonNull(archiveData4, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                if (Intrinsics.areEqual(archiveData4.getId(), archiveData.getId())) {
                    List<ArchiveData> value12 = this.localAllArchive.getValue();
                    Intrinsics.checkNotNull(value12);
                    value12.remove(size4);
                    break;
                }
                size4--;
            }
        }
        String id = archiveData.getId();
        if (id != null && id.length() != 0) {
            z3 = false;
        }
        if (!z3) {
            if (Intrinsics.areEqual(archiveData.getId(), "0")) {
                String archiveLocalPath = archiveData.getArchiveLocalPath();
                if (archiveLocalPath != null) {
                    UtilsMy.delete(new File(archiveLocalPath));
                }
            } else {
                c0.a().c(new ArchiveDownEvent(9, archiveData));
                if (archiveData.getArchiveLocalZipPath() != null) {
                    UtilsMy.delete(new File(archiveData.getArchiveLocalZipPath()));
                }
                if (archiveData.getUserId() != 0) {
                    e.f52358n.b().k0(archiveData.getPackageName(), archiveData.getUserId());
                }
            }
        }
        updateItemData(archiveData);
        if (Intrinsics.areEqual(archiveData.getId(), "0")) {
            return;
        }
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        archiveArgs.setArchiveId(archiveData.getId());
        archiveArgs.setGameId(archiveData.getGame_id());
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        archiveArgs.setUid(accountData.getUid());
        requestModel.setArgs(archiveArgs);
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        L.J().a0(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle$delMyDownloadArchive$1
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<ResponseModel<?>> call, @NotNull Throwable t3) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t3, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<ResponseModel<?>> call, @NotNull Response<ResponseModel<?>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                ResponseModel<?> body = response.body();
                if (body == null || body.getCode() != 200) {
                    i2 a4 = i2.a(context);
                    ResponseModel<?> body2 = response.body();
                    a4.b(body2 != null ? body2.getMessage() : null);
                }
            }
        });
    }

    @NotNull
    public final MutableLiveData<ModGameArchivePathData> getCloud_archive_local_path() {
        return this.cloud_archive_local_path;
    }

    @NotNull
    public final MutableLiveData<List<CommonListMainData>> getListArchive() {
        return this.listArchive;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @NotNull
    public final MutableLiveData<List<ArchiveData>> getLocalAllArchive() {
        return this.localAllArchive;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    public final ModDataRequest getRequest() {
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

    @NotNull
    public final MutableLiveData<Integer> getShowPosition() {
        return this.showPosition;
    }

    public final void loadAllArchives(@NotNull String packagename, @NotNull ModGameArchivePathData modGameArchivePathData, long j4, @Nullable List<ArchiveData> list) {
        Intrinsics.checkNotNullParameter(packagename, "packagename");
        Intrinsics.checkNotNullParameter(modGameArchivePathData, "modGameArchivePathData");
        new Thread(new ModGameCloudViewModle$loadAllArchives$1(this, modGameArchivePathData, list, j4)).start();
    }

    public final void onRecivedDownLoadEVent(@NotNull ArchiveDownEvent archiveDownEvent) {
        boolean z3;
        Intrinsics.checkNotNullParameter(archiveDownEvent, "archiveDownEvent");
        if (archiveDownEvent.getStatus() == 3) {
            return;
        }
        if (archiveDownEvent.getStatus() == 10) {
            ArchiveData archiveData = archiveDownEvent.getArchiveData();
            Intrinsics.checkNotNullExpressionValue(archiveData, "archiveDownEvent.archiveData");
            updateItemData(archiveData);
            return;
        }
        if (archiveDownEvent.getStatus() == 8) {
            ArchiveData archiveData2 = archiveDownEvent.getArchiveData();
            Intrinsics.checkNotNullExpressionValue(archiveData2, "archiveDownEvent.archiveData");
            locallAddArchive(archiveData2);
        }
        List<CommonListMainData> value = this.listArchive.getValue();
        Intrinsics.checkNotNull(value);
        Iterator<CommonListMainData> it2 = value.iterator();
        while (true) {
            z3 = true;
            if (!it2.hasNext()) {
                z3 = false;
                break;
            }
            Object any = it2.next().getAny();
            Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ArchiveData archiveData3 = (ArchiveData) any;
            String id = archiveData3.getId();
            ArchiveData archiveData4 = archiveDownEvent.getArchiveData();
            Intrinsics.checkNotNullExpressionValue(archiveData4, "archiveDownEvent.archiveData");
            if (Intrinsics.areEqual(id, archiveData4.getId())) {
                archiveData3.setStatus(archiveDownEvent.getStatus());
                int status = archiveDownEvent.getStatus();
                if (status != 0) {
                    if (status == 1) {
                        archiveData3.setShowText("下载中");
                    } else if (status == 4) {
                        archiveData3.setShowText("下载中");
                    } else if (status != 5 && status != 6) {
                        if (status == 8) {
                            archiveData3.setShowText("启动");
                        } else if (status == 9) {
                            archiveData3.setShowText("下载");
                            archiveData3.setStatus(0);
                            archiveData3.setIsFirstRun(0);
                            archiveData3.setArchiveLocalZipPath("");
                            changeLocalDataDel(archiveData3);
                        }
                    }
                }
                archiveData3.setStatus(0);
                archiveData3.setShowText("下载");
            }
        }
        if (z3) {
            MutableLiveData<List<CommonListMainData>> mutableLiveData = this.listArchive;
            mutableLiveData.setValue(mutableLiveData.getValue());
        }
    }

    public final void onitemChanged(@NotNull ArchiveData archiveData, @NotNull ModArchiveAdapter adapter) {
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        List<CommonListMainData> value = this.listArchive.getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNullExpressionValue(value, "listArchive.value!!");
        for (int size = value.size() - 1; size >= 0; size--) {
            List<CommonListMainData> value2 = this.listArchive.getValue();
            Intrinsics.checkNotNull(value2);
            if (Intrinsics.areEqual(value2.get(size).getId(), archiveData.getId())) {
                adapter.notifyItemChanged(size, archiveData);
                return;
            }
        }
    }

    public final void setCloud_archive_local_path(@NotNull MutableLiveData<ModGameArchivePathData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.cloud_archive_local_path = mutableLiveData;
    }

    public final void setListArchive(@NotNull MutableLiveData<List<CommonListMainData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.listArchive = mutableLiveData;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setLocalAllArchive(@NotNull MutableLiveData<List<ArchiveData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.localAllArchive = mutableLiveData;
    }

    public final void setPackageName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.packageName = str;
    }

    public final void setRequest(@NotNull ModDataRequest modDataRequest) {
        Intrinsics.checkNotNullParameter(modDataRequest, "<set-?>");
        this.request = modDataRequest;
    }

    public final void setShowPosition(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showPosition = mutableLiveData;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startGameADCheck(@org.jetbrains.annotations.Nullable android.content.Context r14, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r15) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle.startGameADCheck(android.content.Context, kotlin.jvm.functions.Function0):void");
    }

    public final void updateItemData(@NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        CloudArchiveTable p3 = g.t().p(archiveData.getId());
        if (this.listArchive.getValue() != null) {
            List<CommonListMainData> value = this.listArchive.getValue();
            Intrinsics.checkNotNull(value);
            boolean z3 = false;
            for (CommonListMainData commonListMainData : value) {
                Object any = commonListMainData.getAny();
                Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                if (Intrinsics.areEqual(((ArchiveData) any).getId(), archiveData.getId())) {
                    z3 = true;
                    if (p3 != null) {
                        ((ArchiveData) commonListMainData.getAny()).setIsFirstRun(p3.getIsFirstRun());
                    } else {
                        ((ArchiveData) commonListMainData.getAny()).setIsFirstRun(0);
                    }
                    ((ArchiveData) commonListMainData.getAny()).setLikeCount(archiveData.getLikeCount());
                    ((ArchiveData) commonListMainData.getAny()).setIsLike(archiveData.getIsLike());
                    ((ArchiveData) commonListMainData.getAny()).setArchiveDesc(archiveData.getArchiveDesc());
                    ((ArchiveData) commonListMainData.getAny()).setIsUnLike(archiveData.getIsUnLike());
                    ((ArchiveData) commonListMainData.getAny()).setNegativeCount(archiveData.getNegativeCount());
                    ((ArchiveData) commonListMainData.getAny()).setStatus(archiveData.getStatus());
                }
            }
            if (z3) {
                MutableLiveData<List<CommonListMainData>> mutableLiveData = this.listArchive;
                mutableLiveData.setValue(mutableLiveData.getValue());
            }
        }
    }
}

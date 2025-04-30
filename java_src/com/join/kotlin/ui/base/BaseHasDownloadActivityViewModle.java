package com.join.kotlin.ui.base;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.alipay.sdk.authjs.a;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.event.l;
import g1.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BaseHasDownloadActivityViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b'\u0010(J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tJ\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0004J\b\u0010\u000f\u001a\u00020\u0004H&J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\fJ\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0004J3\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00040\u0013H&RD\u0010\u001c\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00020\u0019j\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0002`\u001b0\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R8\u0010$\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00020\"j\b\u0012\u0004\u0012\u00020\u0002`#0\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001d\u001a\u0004\b%\u0010\u001f\"\u0004\b&\u0010!¨\u0006)"}, d2 = {"Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;", "Landroidx/lifecycle/ViewModel;", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTask", "", "receiveStart", "receiveSuccess", "receiveDelete", "receiveError", "Lcom/join/mgps/event/l;", "downloadTaskEvent", "onEventMainThread", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "item", "recivedDeleteFinal", "updateProgressPartly", "sub", "updateDowState", "updateDowStateListFinal", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", a.f9679m, "updateDowStateList", "Landroidx/lifecycle/MutableLiveData;", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "downloadTasksMap", "Landroidx/lifecycle/MutableLiveData;", "getDownloadTasksMap", "()Landroidx/lifecycle/MutableLiveData;", "setDownloadTasksMap", "(Landroidx/lifecycle/MutableLiveData;)V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "downloadTasks", "getDownloadTasks", "setDownloadTasks", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public abstract class BaseHasDownloadActivityViewModle extends ViewModel {
    @NotNull
    private MutableLiveData<HashMap<String, DownloadTask>> downloadTasksMap = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<ArrayList<DownloadTask>> downloadTasks = new MutableLiveData<>();

    public BaseHasDownloadActivityViewModle() {
        List<DownloadTask> d4 = f.G().d();
        this.downloadTasks.setValue(new ArrayList<>());
        this.downloadTasksMap.setValue(new HashMap<>());
        MutableLiveData<ArrayList<DownloadTask>> mutableLiveData = this.downloadTasks;
        Objects.requireNonNull(d4, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.github.snowdream.android.app.downloader.DownloadTask> /* = java.util.ArrayList<com.github.snowdream.android.app.downloader.DownloadTask> */");
        mutableLiveData.setValue((ArrayList) d4);
        if (d4.size() > 0) {
            for (DownloadTask task : d4) {
                HashMap<String, DownloadTask> value = this.downloadTasksMap.getValue();
                if (value != null) {
                    Intrinsics.checkNotNullExpressionValue(task, "task");
                    value.put(task.getCrc_link_type_val(), task);
                }
            }
        }
    }

    private final void receiveDelete(final DownloadTask downloadTask) {
        ArrayList<DownloadTask> value = this.downloadTasks.getValue();
        Intrinsics.checkNotNull(value);
        Iterator<DownloadTask> it2 = value.iterator();
        Intrinsics.checkNotNullExpressionValue(it2, "downloadTasks.value!!.iterator()");
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            Intrinsics.checkNotNullExpressionValue(next, "iterator.next()");
            DownloadTask downloadTask2 = next;
            String crc_link_type_val = downloadTask2.getCrc_link_type_val();
            Intrinsics.checkNotNull(downloadTask);
            if (Intrinsics.areEqual(crc_link_type_val, downloadTask.getCrc_link_type_val())) {
                HashMap<String, DownloadTask> value2 = this.downloadTasksMap.getValue();
                Intrinsics.checkNotNull(value2);
                value2.remove(downloadTask2.getCrc_link_type_val());
                it2.remove();
                updateDowStateList(downloadTask, new Function1<CollectionBeanSubBusiness, Unit>() { // from class: com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle$receiveDelete$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(CollectionBeanSubBusiness collectionBeanSubBusiness) {
                        invoke2(collectionBeanSubBusiness);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull CollectionBeanSubBusiness it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        BaseHasDownloadActivityViewModle.this.recivedDeleteFinal(it3, downloadTask);
                    }
                });
                return;
            }
        }
    }

    private final void receiveError(DownloadTask downloadTask) {
        MutableLiveData<HashMap<String, DownloadTask>> mutableLiveData = this.downloadTasksMap;
        if (mutableLiveData == null || downloadTask == null) {
            return;
        }
        try {
            HashMap<String, DownloadTask> value = mutableLiveData.getValue();
            Intrinsics.checkNotNull(value);
            UtilsMy.C3(value.get(downloadTask.getCrc_link_type_val()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private final void receiveStart(final DownloadTask downloadTask) {
        UtilsMy.C3(downloadTask);
        HashMap<String, DownloadTask> value = this.downloadTasksMap.getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNull(downloadTask);
        if (!value.containsKey(downloadTask.getCrc_link_type_val())) {
            ArrayList<DownloadTask> value2 = this.downloadTasks.getValue();
            Intrinsics.checkNotNull(value2);
            value2.add(downloadTask);
            HashMap<String, DownloadTask> value3 = this.downloadTasksMap.getValue();
            Intrinsics.checkNotNull(value3);
            Intrinsics.checkNotNullExpressionValue(value3, "downloadTasksMap.value!!");
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            Intrinsics.checkNotNullExpressionValue(crc_link_type_val, "downloadTask.crc_link_type_val");
            value3.put(crc_link_type_val, downloadTask);
        }
        updateDowStateList(downloadTask, new Function1<CollectionBeanSubBusiness, Unit>() { // from class: com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle$receiveStart$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CollectionBeanSubBusiness collectionBeanSubBusiness) {
                invoke2(collectionBeanSubBusiness);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CollectionBeanSubBusiness it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                BaseHasDownloadActivityViewModle.this.updateDowStateListFinal(it2, downloadTask);
            }
        });
    }

    private final void receiveSuccess(final DownloadTask downloadTask) {
        MutableLiveData<HashMap<String, DownloadTask>> mutableLiveData = this.downloadTasksMap;
        if (mutableLiveData == null || downloadTask == null) {
            return;
        }
        HashMap<String, DownloadTask> value = mutableLiveData.getValue();
        Intrinsics.checkNotNull(value);
        if (!value.containsKey(downloadTask.getCrc_link_type_val())) {
            ArrayList<DownloadTask> value2 = this.downloadTasks.getValue();
            Intrinsics.checkNotNull(value2);
            value2.add(downloadTask);
            HashMap<String, DownloadTask> value3 = this.downloadTasksMap.getValue();
            Intrinsics.checkNotNull(value3);
            Intrinsics.checkNotNullExpressionValue(value3, "downloadTasksMap.value!!");
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            Intrinsics.checkNotNullExpressionValue(crc_link_type_val, "downloadTask.crc_link_type_val");
            value3.put(crc_link_type_val, downloadTask);
        }
        updateDowStateList(downloadTask, new Function1<CollectionBeanSubBusiness, Unit>() { // from class: com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle$receiveSuccess$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CollectionBeanSubBusiness collectionBeanSubBusiness) {
                invoke2(collectionBeanSubBusiness);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CollectionBeanSubBusiness it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                BaseHasDownloadActivityViewModle.this.updateDowStateListFinal(it2, downloadTask);
            }
        });
        HashMap<String, DownloadTask> value4 = this.downloadTasksMap.getValue();
        Intrinsics.checkNotNull(value4);
        DownloadTask downloadTask2 = value4.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 != null) {
            Intrinsics.checkNotNullExpressionValue(downloadTask2, "downloadTasksMap.value!!…_link_type_val] ?: return");
            downloadTask2.setStatus(downloadTask.getStatus());
            downloadTask2.setVer(downloadTask.getVer());
            downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
            downloadTask2.setSource_ver(downloadTask.getSource_ver());
        }
    }

    @NotNull
    public final MutableLiveData<ArrayList<DownloadTask>> getDownloadTasks() {
        return this.downloadTasks;
    }

    @NotNull
    public final MutableLiveData<HashMap<String, DownloadTask>> getDownloadTasksMap() {
        return this.downloadTasksMap;
    }

    public final void onEventMainThread(@NotNull l downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        DownloadTask a4 = downloadTaskEvent.a();
        int c4 = downloadTaskEvent.c();
        if (c4 != 2 && c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    receiveError(a4);
                    return;
                } else if (c4 == 7) {
                    receiveDelete(a4);
                    return;
                } else if (c4 == 8) {
                    HashMap<String, DownloadTask> value = this.downloadTasksMap.getValue();
                    Intrinsics.checkNotNull(value);
                    Intrinsics.checkNotNullExpressionValue(value, "downloadTasksMap.value!!");
                    if (!value.isEmpty()) {
                        updateProgressPartly();
                        return;
                    }
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                        case 12:
                        case 13:
                            break;
                        case 11:
                            break;
                        default:
                            return;
                    }
                }
            }
            receiveSuccess(a4);
            return;
        }
        receiveStart(a4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void recivedDeleteFinal(@NotNull CollectionBeanSubBusiness item, @NotNull DownloadTask downloadTask) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
        if (item.getMod_info() != null) {
            HashMap<String, DownloadTask> value = this.downloadTasksMap.getValue();
            Intrinsics.checkNotNull(value);
            ModInfoBean mod_info = item.getMod_info();
            Intrinsics.checkNotNullExpressionValue(mod_info, "item.mod_info");
            DownloadTask downloadTask2 = value.get(mod_info.getMod_game_id());
            HashMap<String, DownloadTask> value2 = this.downloadTasksMap.getValue();
            Intrinsics.checkNotNull(value2);
            DownloadTask downloadTask3 = value2.get(item.getGame_id());
            if (downloadTask2 == null && downloadTask3 == null) {
                item.setDownloadTask(null);
            } else if (downloadTask2 != null) {
                item.setDownloadTask(downloadTask2);
            } else if (downloadTask3 != null) {
                item.setDownloadTask(downloadTask3);
            } else if (Intrinsics.areEqual(item.getGame_id(), downloadTask.getCrc_link_type_val())) {
                item.setDownloadTask(null);
            }
        } else if (Intrinsics.areEqual(item.getGame_id(), downloadTask.getCrc_link_type_val())) {
            item.setDownloadTask(null);
        }
    }

    public final void setDownloadTasks(@NotNull MutableLiveData<ArrayList<DownloadTask>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.downloadTasks = mutableLiveData;
    }

    public final void setDownloadTasksMap(@NotNull MutableLiveData<HashMap<String, DownloadTask>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.downloadTasksMap = mutableLiveData;
    }

    public final void updateDowState(@NotNull CollectionBeanSubBusiness sub) {
        Intrinsics.checkNotNullParameter(sub, "sub");
        if (sub.getMod_info() != null) {
            ModInfoBean modInfoBean = sub.getMod_info();
            HashMap<String, DownloadTask> value = this.downloadTasksMap.getValue();
            Intrinsics.checkNotNull(value);
            Intrinsics.checkNotNullExpressionValue(modInfoBean, "modInfoBean");
            DownloadTask downloadTask = value.get(modInfoBean.getMain_game_id());
            boolean z3 = true;
            boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
            HashMap<String, DownloadTask> value2 = this.downloadTasksMap.getValue();
            Intrinsics.checkNotNull(value2);
            DownloadTask downloadTask2 = value2.get(modInfoBean.getMod_game_id());
            z3 = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : false;
            DownloadTask downloadTask3 = null;
            if (z3 && z4) {
                if (Intrinsics.areEqual(downloadTask != null ? downloadTask.getCrc_link_type_val() : null, sub.getCrc_sign_id())) {
                    sub.setDownloadTask(downloadTask);
                    return;
                }
                return;
            } else if (z3) {
                if (sub.getMod_info() != null) {
                    String crc_link_type_val = downloadTask2 != null ? downloadTask2.getCrc_link_type_val() : null;
                    ModInfoBean mod_info = sub.getMod_info();
                    Intrinsics.checkNotNullExpressionValue(mod_info, "sub.mod_info");
                    if (Intrinsics.areEqual(crc_link_type_val, mod_info.getMod_game_id())) {
                        sub.setDownloadTask(downloadTask2);
                        return;
                    }
                    return;
                }
                return;
            } else if (z4) {
                if (Intrinsics.areEqual(downloadTask != null ? downloadTask.getCrc_link_type_val() : null, sub.getCrc_sign_id())) {
                    sub.setDownloadTask(downloadTask);
                    return;
                }
                return;
            } else {
                if (sub.getMod_info() != null) {
                    f G = f.G();
                    ModInfoBean mod_info2 = sub.getMod_info();
                    Intrinsics.checkNotNullExpressionValue(mod_info2, "sub.mod_info");
                    downloadTask3 = G.B(mod_info2.getMod_game_id());
                }
                if (downloadTask3 == null) {
                    downloadTask3 = f.G().B(sub.getCrc_sign_id());
                }
                sub.setDownloadTask(downloadTask3);
                return;
            }
        }
        HashMap<String, DownloadTask> value3 = this.downloadTasksMap.getValue();
        Intrinsics.checkNotNull(value3);
        DownloadTask downloadTask4 = value3.get(sub.getGame_id());
        if (downloadTask4 != null) {
            sub.setDownloadTask(downloadTask4);
        }
    }

    public abstract void updateDowStateList(@NotNull DownloadTask downloadTask, @NotNull Function1<? super CollectionBeanSubBusiness, Unit> function1);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void updateDowStateListFinal(@NotNull CollectionBeanSubBusiness sub, @NotNull DownloadTask downloadTask) {
        Intrinsics.checkNotNullParameter(sub, "sub");
        Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
        if (sub.getMod_info() != null) {
            ModInfoBean modInfoBean = sub.getMod_info();
            HashMap<String, DownloadTask> value = this.downloadTasksMap.getValue();
            Intrinsics.checkNotNull(value);
            Intrinsics.checkNotNullExpressionValue(modInfoBean, "modInfoBean");
            DownloadTask downloadTask2 = value.get(modInfoBean.getMain_game_id());
            boolean z3 = true;
            boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
            HashMap<String, DownloadTask> value2 = this.downloadTasksMap.getValue();
            Intrinsics.checkNotNull(value2);
            DownloadTask downloadTask3 = value2.get(modInfoBean.getMod_game_id());
            z3 = (downloadTask3 == null || downloadTask3.getStatus() != 5) ? false : false;
            if (z3 && z4) {
                if (Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), sub.getCrc_sign_id())) {
                    sub.setDownloadTask(downloadTask);
                }
            } else if (z3) {
                if (sub.getMod_info() != null) {
                    String crc_link_type_val = downloadTask.getCrc_link_type_val();
                    ModInfoBean mod_info = sub.getMod_info();
                    Intrinsics.checkNotNullExpressionValue(mod_info, "sub.mod_info");
                    if (Intrinsics.areEqual(crc_link_type_val, mod_info.getMod_game_id())) {
                        sub.setDownloadTask(downloadTask);
                    }
                }
            } else if (z4) {
                if (Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), sub.getCrc_sign_id())) {
                    sub.setDownloadTask(downloadTask);
                }
            } else {
                DownloadTask downloadTask4 = null;
                if (sub.getMod_info() != null) {
                    f G = f.G();
                    ModInfoBean mod_info2 = sub.getMod_info();
                    Intrinsics.checkNotNullExpressionValue(mod_info2, "sub.mod_info");
                    downloadTask4 = G.B(mod_info2.getMod_game_id());
                }
                if (downloadTask4 == null) {
                    downloadTask4 = f.G().B(sub.getCrc_sign_id());
                }
                if (downloadTask4 == null || !Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), downloadTask4.getCrc_link_type_val())) {
                    return;
                }
                sub.setDownloadTask(downloadTask);
            }
        } else if (Intrinsics.areEqual(sub.getGame_id(), downloadTask.getCrc_link_type_val())) {
            sub.setDownloadTask(downloadTask);
        }
    }

    public abstract void updateProgressPartly();
}

package com.join.kotlin.ui.cloudarchive;

import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.db.tables.CloudArchiveTable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import n1.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ModGameCloudViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ModGameCloudViewModle$loadAllArchives$1 implements Runnable {
    final /* synthetic */ long $archiveId;
    final /* synthetic */ List $lists;
    final /* synthetic */ ModGameArchivePathData $modGameArchivePathData;
    final /* synthetic */ ModGameCloudViewModle this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModGameCloudViewModle$loadAllArchives$1(ModGameCloudViewModle modGameCloudViewModle, ModGameArchivePathData modGameArchivePathData, List list, long j4) {
        this.this$0 = modGameCloudViewModle;
        this.$modGameArchivePathData = modGameArchivePathData;
        this.$lists = list;
        this.$archiveId = j4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List<CloudArchiveTable> q3 = g.t().q(this.$modGameArchivePathData.getGameId());
        ArrayList arrayList = new ArrayList();
        List list = this.$lists;
        if (list != null && (!list.isEmpty())) {
            arrayList.add(this.$lists.get(0));
        }
        if (q3 != null) {
            for (CloudArchiveTable item : q3) {
                JsonMapper jsonMapper = JsonMapper.getInstance();
                Intrinsics.checkNotNullExpressionValue(item, "item");
                ArchiveData archiveData = (ArchiveData) jsonMapper.fromJson(item.getArchiveDataJson(), ArchiveData.class);
                Intrinsics.checkNotNullExpressionValue(archiveData, "archiveData");
                archiveData.setUserId(item.getUserId());
                archiveData.setArchiveLocalZipPath(item.getArchiveZipPath());
                archiveData.setArchiveLocalPath(item.getArchiveFiles());
                archiveData.setMainArchiveLocalPath(item.getArchiveFolder());
                archiveData.setMainArchiveLocalPath2(item.getMainArchiveLocalPath2());
                archiveData.setId(item.getArchiveId());
                archiveData.setIsFirstRun(item.getIsFirstRun());
                arrayList.add(archiveData);
            }
        }
        if (arrayList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator<T>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle$loadAllArchives$1$$special$$inlined$sortByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t3, T t4) {
                    long j4;
                    long j5;
                    int compareValues;
                    ArchiveData archiveData2 = (ArchiveData) t4;
                    if (Intrinsics.areEqual(archiveData2.getId(), "0")) {
                        j4 = Integer.MAX_VALUE;
                    } else {
                        j4 = Intrinsics.areEqual(archiveData2.getId(), String.valueOf(ModGameCloudViewModle$loadAllArchives$1.this.$archiveId)) ? 2147483646 : archiveData2.getAddTime();
                    }
                    Long valueOf = Long.valueOf(j4);
                    ArchiveData archiveData3 = (ArchiveData) t3;
                    if (Intrinsics.areEqual(archiveData3.getId(), "0")) {
                        j5 = Integer.MAX_VALUE;
                    } else {
                        j5 = Intrinsics.areEqual(archiveData3.getId(), String.valueOf(ModGameCloudViewModle$loadAllArchives$1.this.$archiveId)) ? 2147483646 : archiveData3.getAddTime();
                    }
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Long.valueOf(j5));
                    return compareValues;
                }
            });
        }
        this.this$0.getLocalAllArchive().postValue(arrayList);
    }
}

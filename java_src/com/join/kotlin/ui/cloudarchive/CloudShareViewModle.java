package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.facebook.common.util.f;
import com.join.kotlin.domain.common.SingleLiveEvent;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.dto.GoldFingerBean;
import com.join.mgps.va.overmind.e;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
/* compiled from: CloudShareViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001a\u0018\u00002\u00020\u0001:\u0001^B\u0007¢\u0006\u0004\b\\\u0010]J4\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u000e\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fJ,\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J,\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\f\u001a\u00020\u000bJ\u0016\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fR(\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001a0\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R(\u0010&\u001a\b\u0012\u0004\u0012\u00020%0\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010,\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u00102\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010-\u001a\u0004\b3\u0010/\"\u0004\b4\u00101R.\u00105\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010 \u001a\u0004\b6\u0010\"\"\u0004\b7\u0010$R(\u00108\u001a\b\u0012\u0004\u0012\u00020\u00180\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010 \u001a\u0004\b9\u0010\"\"\u0004\b:\u0010$R\"\u0010;\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010C\u001a\b\u0012\u0004\u0012\u00020B0A8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR(\u0010F\u001a\b\u0012\u0004\u0012\u00020E0\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010 \u001a\u0004\bG\u0010\"\"\u0004\bH\u0010$R\"\u0010I\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR(\u0010O\u001a\b\u0012\u0004\u0012\u00020B0A8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010D\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR\"\u0010Y\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bY\u0010<\u001a\u0004\bZ\u0010>\"\u0004\b[\u0010@¨\u0006_"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "Landroidx/lifecycle/ViewModel;", "", "packagename", "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "modGameArchivePathData", "path", "", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "archiveS", "loadLocalArchiveexcues", "Ljava/io/File;", f.f11767c, "", "getFileUpdateTime", "Landroid/content/Context;", "context", "loadLocalArchiveDatas", "mainArchiveLocalPath", "archiveList", "loadLocalExtArchiveMain", "archiveLocation", "loadLocalExArchive", "loadLocalArchive", "", "checkArchiveHas", "", "getFileUpdateTimeMain", "gameId", "getDetialData", "Landroidx/lifecycle/MutableLiveData;", "runIngArchiveId", "Landroidx/lifecycle/MutableLiveData;", "getRunIngArchiveId", "()Landroidx/lifecycle/MutableLiveData;", "setRunIngArchiveId", "(Landroidx/lifecycle/MutableLiveData;)V", "Lcom/join/mgps/dto/GoldFingerBean;", "goldFingerBean", "Ljava/util/List;", "getGoldFingerBean", "()Ljava/util/List;", "setGoldFingerBean", "(Ljava/util/List;)V", "initFinish", "Z", "getInitFinish", "()Z", "setInitFinish", "(Z)V", "installInExtPlug", "getInstallInExtPlug", "setInstallInExtPlug", "localArchiveLists", "getLocalArchiveLists", "setLocalArchiveLists", "showDialog", "getShowDialog", "setShowDialog", "lastStartArchive", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getLastStartArchive", "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "setLastStartArchive", "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V", "Lcom/join/kotlin/domain/common/SingleLiveEvent;", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;", "_event", "Lcom/join/kotlin/domain/common/SingleLiveEvent;", "", "showDownlloadDialog", "getShowDownlloadDialog", "setShowDownlloadDialog", "time", "J", "getTime", "()J", "setTime", "(J)V", NotificationCompat.CATEGORY_EVENT, "getEvent", "()Lcom/join/kotlin/domain/common/SingleLiveEvent;", "setEvent", "(Lcom/join/kotlin/domain/common/SingleLiveEvent;)V", "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "getModGameArchivePathData", "()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "setModGameArchivePathData", "(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V", "archiveData", "getArchiveData", "setArchiveData", "<init>", "()V", "CloudShareEvent", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CloudShareViewModle extends ViewModel {
    private final SingleLiveEvent<CloudShareEvent> _event;
    @NotNull
    private SingleLiveEvent<CloudShareEvent> event;
    private boolean initFinish;
    private boolean installInExtPlug;
    private long time;
    @NotNull
    private MutableLiveData<Long> runIngArchiveId = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> showDownlloadDialog = new MutableLiveData<>();
    @NotNull
    private ModGameArchivePathData modGameArchivePathData = new ModGameArchivePathData();
    @NotNull
    private ArchiveData archiveData = new ArchiveData();
    @NotNull
    private List<GoldFingerBean> goldFingerBean = new ArrayList();
    @NotNull
    private ArchiveData lastStartArchive = new ArchiveData();
    @NotNull
    private MutableLiveData<List<ArchiveData>> localArchiveLists = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Boolean> showDialog = new MutableLiveData<>();

    /* compiled from: CloudShareViewModle.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;", "", "", "showdownloadModDialog", "I", "getShowdownloadModDialog", "()I", "setShowdownloadModDialog", "(I)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class CloudShareEvent {
        private int showdownloadModDialog;

        public final int getShowdownloadModDialog() {
            return this.showdownloadModDialog;
        }

        public final void setShowdownloadModDialog(int i2) {
            this.showdownloadModDialog = i2;
        }
    }

    public CloudShareViewModle() {
        SingleLiveEvent<CloudShareEvent> singleLiveEvent = new SingleLiveEvent<>();
        this._event = singleLiveEvent;
        this.event = singleLiveEvent;
        this.runIngArchiveId.setValue(0L);
        this.localArchiveLists.setValue(new ArrayList());
        this.showDialog.setValue(Boolean.FALSE);
    }

    private final void getFileUpdateTime(File file) {
        int i2 = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    int length = listFiles.length;
                    while (i2 < length) {
                        File f4 = listFiles[i2];
                        Intrinsics.checkNotNullExpressionValue(f4, "f");
                        getFileUpdateTime(f4);
                        i2++;
                    }
                    return;
                }
                return;
            }
            long millis = Files.readAttributes(file.toPath(), BasicFileAttributes.class, new LinkOption[0]).lastModifiedTime().toMillis();
            if (millis > this.time) {
                this.time = millis;
            }
        } else if (file.isDirectory()) {
            File[] listFiles2 = file.listFiles();
            if (listFiles2 != null) {
                int length2 = listFiles2.length;
                while (i2 < length2) {
                    File f5 = listFiles2[i2];
                    Intrinsics.checkNotNullExpressionValue(f5, "f");
                    getFileUpdateTime(f5);
                    i2++;
                }
            }
        } else {
            long lastModified = file.lastModified();
            if (lastModified > this.time) {
                this.time = lastModified;
            }
        }
    }

    private final List<ArchiveData> loadLocalArchiveexcues(String str, ModGameArchivePathData modGameArchivePathData, String str2, List<ArchiveData> list) {
        boolean startsWith$default;
        boolean startsWith$default2;
        int i2;
        boolean startsWith$default3;
        boolean startsWith$default4;
        int i4;
        File[] fileArr;
        String replace$default;
        int i5;
        File[] fileArr2;
        ModGameArchivePathData modGameArchivePathData2 = modGameArchivePathData;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str2, "/Android/data", false, 2, null);
        if (!startsWith$default) {
            startsWith$default3 = StringsKt__StringsJVMKt.startsWith$default(str2, "Android/data", false, 2, null);
            if (!startsWith$default3) {
                startsWith$default4 = StringsKt__StringsJVMKt.startsWith$default(str2, "/data/data", false, 2, null);
                if (startsWith$default4) {
                    String x3 = com.join.mgps.va.overmind.f.x(com.join.mgps.va.overmind.f.f52369d, str, 0, 2, null);
                    StringBuilder sb = new StringBuilder();
                    sb.append(x3);
                    replace$default = StringsKt__StringsJVMKt.replace$default(str2, "/data/data/" + str, "", false, 4, (Object) null);
                    sb.append(replace$default);
                    String sb2 = sb.toString();
                    File[] listFiles = new File(sb2).listFiles();
                    if (listFiles != null) {
                        if (!(listFiles.length == 0)) {
                            if (modGameArchivePathData.getArchiveType() == 0) {
                                ArchiveData archiveData = new ArchiveData();
                                boolean z3 = false;
                                for (File file : listFiles) {
                                    Intrinsics.checkNotNullExpressionValue(file, "file");
                                    z3 = checkArchiveHas(modGameArchivePathData2, file);
                                    if (z3) {
                                        z3 = true;
                                    }
                                    if (z3) {
                                        break;
                                    }
                                }
                                if (z3) {
                                    archiveData.setArchiveLocalPath(sb2);
                                    archiveData.setArchiveDesc("我的默认存档");
                                    archiveData.setAddTime(getFileUpdateTimeMain(new File(sb2)) / 1000);
                                    archiveData.setArchiveLocation(str2);
                                    archiveData.setPackageName(str);
                                    archiveData.setGame_id(modGameArchivePathData.getGameId());
                                    archiveData.setShowText("启动");
                                    archiveData.setStatus(8);
                                    archiveData.setId("0");
                                    archiveData.setUserId(0);
                                    list.add(archiveData);
                                }
                            } else {
                                int length = listFiles.length;
                                int i6 = 0;
                                int i7 = 0;
                                while (i6 < length) {
                                    File file2 = listFiles[i6];
                                    Intrinsics.checkNotNullExpressionValue(file2, "file");
                                    if (checkArchiveHas(modGameArchivePathData2, file2)) {
                                        i7++;
                                        ArchiveData archiveData2 = new ArchiveData();
                                        archiveData2.setArchiveLocalPath(file2.getAbsolutePath());
                                        archiveData2.setArchiveDesc("我的默认存档" + i7);
                                        i5 = length;
                                        fileArr2 = listFiles;
                                        archiveData2.setAddTime(getFileUpdateTimeMain(file2) / ((long) 1000));
                                        archiveData2.setArchiveLocation(str2);
                                        archiveData2.setPackageName(str);
                                        archiveData2.setGame_id(modGameArchivePathData.getGameId());
                                        archiveData2.setShowText("启动");
                                        archiveData2.setStatus(8);
                                        archiveData2.setId("0");
                                        archiveData2.setUserId(0);
                                        list.add(archiveData2);
                                    } else {
                                        i5 = length;
                                        fileArr2 = listFiles;
                                    }
                                    i6++;
                                    listFiles = fileArr2;
                                    length = i5;
                                }
                            }
                        }
                    }
                    return list;
                }
                File externalStorageDirectory = Environment.getExternalStorageDirectory();
                Intrinsics.checkNotNullExpressionValue(externalStorageDirectory, "Environment.getExternalStorageDirectory()");
                String str3 = externalStorageDirectory.getAbsolutePath() + str2;
                File[] listFiles2 = new File(str3).listFiles();
                if (listFiles2 != null) {
                    if (!(listFiles2.length == 0)) {
                        if (modGameArchivePathData.getArchiveType() == 0) {
                            ArchiveData archiveData3 = new ArchiveData();
                            boolean z4 = false;
                            for (File file3 : listFiles2) {
                                Intrinsics.checkNotNullExpressionValue(file3, "file");
                                boolean checkArchiveHas = checkArchiveHas(modGameArchivePathData2, file3);
                                z4 = checkArchiveHas ? true : checkArchiveHas;
                                if (z4) {
                                    break;
                                }
                            }
                            if (z4) {
                                archiveData3.setArchiveLocalPath(str3);
                                archiveData3.setArchiveDesc("我的默认存档");
                                archiveData3.setAddTime(getFileUpdateTimeMain(new File(str3)) / 1000);
                                archiveData3.setArchiveLocation(str2);
                                archiveData3.setPackageName(str);
                                archiveData3.setGame_id(modGameArchivePathData.getGameId());
                                archiveData3.setShowText("启动");
                                archiveData3.setStatus(8);
                                archiveData3.setId("0");
                                list.add(archiveData3);
                            }
                        } else {
                            int length2 = listFiles2.length;
                            int i8 = 0;
                            int i9 = 0;
                            while (i8 < length2) {
                                File file4 = listFiles2[i8];
                                Intrinsics.checkNotNullExpressionValue(file4, "file");
                                if (checkArchiveHas(modGameArchivePathData2, file4)) {
                                    i9++;
                                    ArchiveData archiveData4 = new ArchiveData();
                                    archiveData4.setArchiveLocalPath(file4.getAbsolutePath());
                                    archiveData4.setArchiveDesc("我的默认存档" + i9);
                                    i4 = length2;
                                    fileArr = listFiles2;
                                    archiveData4.setAddTime(getFileUpdateTimeMain(file4) / ((long) 1000));
                                    archiveData4.setArchiveLocation(str2);
                                    archiveData4.setPackageName(str);
                                    archiveData4.setGame_id(modGameArchivePathData.getGameId());
                                    archiveData4.setShowText("启动");
                                    archiveData4.setStatus(8);
                                    archiveData4.setId("0");
                                    archiveData4.setUserId(0);
                                    list.add(archiveData4);
                                } else {
                                    i4 = length2;
                                    fileArr = listFiles2;
                                }
                                i8++;
                                listFiles2 = fileArr;
                                length2 = i4;
                            }
                        }
                    }
                }
                return list;
                return list;
            }
        }
        startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(str2, "Android/data", false, 2, null);
        String str4 = startsWith$default2 ? '/' + str2 : str2;
        String b02 = com.join.mgps.va.overmind.f.f52369d.b0();
        File[] listFiles3 = new File(b02 + str4).listFiles();
        if (listFiles3 != null) {
            if (!(listFiles3.length == 0)) {
                if (modGameArchivePathData.getArchiveType() == 0) {
                    ArchiveData archiveData5 = new ArchiveData();
                    archiveData5.setArchiveLocalPath(b02 + str4);
                    boolean z5 = false;
                    for (File file5 : listFiles3) {
                        Intrinsics.checkNotNullExpressionValue(file5, "file");
                        z5 = checkArchiveHas(modGameArchivePathData2, file5);
                        if (z5) {
                            z5 = true;
                        }
                        if (z5) {
                            break;
                        }
                    }
                    if (z5) {
                        archiveData5.setArchiveDesc("我的默认存档");
                        archiveData5.setAddTime(getFileUpdateTimeMain(new File(archiveData5.getArchiveLocalPath())) / 1000);
                        archiveData5.setArchiveLocation(str2);
                        archiveData5.setPackageName(str);
                        archiveData5.setGame_id(modGameArchivePathData.getGameId());
                        archiveData5.setShowText("启动");
                        archiveData5.setStatus(8);
                        archiveData5.setId("0");
                        archiveData5.setUserId(0);
                        list.add(archiveData5);
                    }
                } else {
                    int length3 = listFiles3.length;
                    int i10 = 0;
                    int i11 = 0;
                    while (i10 < length3) {
                        File file6 = listFiles3[i10];
                        Intrinsics.checkNotNullExpressionValue(file6, "file");
                        if (checkArchiveHas(modGameArchivePathData2, file6)) {
                            i11++;
                            ArchiveData archiveData6 = new ArchiveData();
                            archiveData6.setArchiveLocalPath(file6.getAbsolutePath());
                            archiveData6.setArchiveDesc("我的默认存档" + i11);
                            i2 = length3;
                            archiveData6.setAddTime(getFileUpdateTimeMain(file6) / ((long) 1000));
                            archiveData6.setArchiveLocation(str2);
                            archiveData6.setPackageName(str);
                            archiveData6.setGame_id(modGameArchivePathData.getGameId());
                            archiveData6.setShowText("启动");
                            archiveData6.setStatus(8);
                            archiveData6.setId("0");
                            archiveData6.setUserId(0);
                            list.add(archiveData6);
                        } else {
                            i2 = length3;
                        }
                        i10++;
                        modGameArchivePathData2 = modGameArchivePathData;
                        length3 = i2;
                    }
                }
            }
        }
        return list;
    }

    public final boolean checkArchiveHas(@NotNull ModGameArchivePathData modGameArchivePathData, @NotNull File file) {
        List<String> split$default;
        boolean startsWith$default;
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(modGameArchivePathData, "modGameArchivePathData");
        Intrinsics.checkNotNullParameter(file, "file");
        String archiveFileSuffix = modGameArchivePathData.getArchiveFileSuffix();
        Intrinsics.checkNotNullExpressionValue(archiveFileSuffix, "modGameArchivePathData.archiveFileSuffix");
        if (archiveFileSuffix.length() > 0) {
            String archiveFileSuffix2 = modGameArchivePathData.getArchiveFileSuffix();
            Intrinsics.checkNotNullExpressionValue(archiveFileSuffix2, "modGameArchivePathData.archiveFileSuffix");
            split$default = StringsKt__StringsKt.split$default((CharSequence) archiveFileSuffix2, new String[]{","}, false, 0, 6, (Object) null);
            if (!split$default.isEmpty()) {
                for (String str : split$default) {
                    if (Intrinsics.areEqual(str, file.getName())) {
                        return true;
                    }
                    String name = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "file.name");
                    startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, str, false, 2, null);
                    if (startsWith$default) {
                        return true;
                    }
                    String name2 = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "file.name");
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(name2, str, false, 2, null);
                    if (endsWith$default) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    @NotNull
    public final ArchiveData getArchiveData() {
        return this.archiveData;
    }

    public final void getDetialData(@NotNull String gameId, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(context, "context");
        this.showDialog.setValue(Boolean.TRUE);
        k.f(v1.f72528a, g1.c(), null, new CloudShareViewModle$getDetialData$1(this, context, gameId, null), 2, null);
    }

    @NotNull
    public final SingleLiveEvent<CloudShareEvent> getEvent() {
        return this.event;
    }

    public final long getFileUpdateTimeMain(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.time = 0L;
        getFileUpdateTime(file);
        return this.time;
    }

    @NotNull
    public final List<GoldFingerBean> getGoldFingerBean() {
        return this.goldFingerBean;
    }

    public final boolean getInitFinish() {
        return this.initFinish;
    }

    public final boolean getInstallInExtPlug() {
        return this.installInExtPlug;
    }

    @NotNull
    public final ArchiveData getLastStartArchive() {
        return this.lastStartArchive;
    }

    @NotNull
    public final MutableLiveData<List<ArchiveData>> getLocalArchiveLists() {
        return this.localArchiveLists;
    }

    @NotNull
    public final ModGameArchivePathData getModGameArchivePathData() {
        return this.modGameArchivePathData;
    }

    @NotNull
    public final MutableLiveData<Long> getRunIngArchiveId() {
        return this.runIngArchiveId;
    }

    @NotNull
    public final MutableLiveData<Boolean> getShowDialog() {
        return this.showDialog;
    }

    @NotNull
    public final MutableLiveData<Integer> getShowDownlloadDialog() {
        return this.showDownlloadDialog;
    }

    public final long getTime() {
        return this.time;
    }

    @NotNull
    public final List<ArchiveData> loadLocalArchive(@NotNull ModGameArchivePathData modGameArchivePathData) {
        Intrinsics.checkNotNullParameter(modGameArchivePathData, "modGameArchivePathData");
        ArrayList arrayList = new ArrayList();
        String folder = modGameArchivePathData.getMainArchiveLocalPath();
        String modPackageName = modGameArchivePathData.getModPackageName();
        Intrinsics.checkNotNullExpressionValue(modPackageName, "modGameArchivePathData.modPackageName");
        Intrinsics.checkNotNullExpressionValue(folder, "folder");
        loadLocalArchiveexcues(modPackageName, modGameArchivePathData, folder, arrayList);
        String subArchiveLocalPath = modGameArchivePathData.getSubArchiveLocalPath();
        if (!(subArchiveLocalPath == null || subArchiveLocalPath.length() == 0)) {
            String modPackageName2 = modGameArchivePathData.getModPackageName();
            Intrinsics.checkNotNullExpressionValue(modPackageName2, "modGameArchivePathData.modPackageName");
            loadLocalArchiveexcues(modPackageName2, modGameArchivePathData, subArchiveLocalPath, arrayList);
        }
        return arrayList;
    }

    public final void loadLocalArchiveDatas(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.showDialog.setValue(Boolean.TRUE);
        k.f(v1.f72528a, g1.c(), null, new CloudShareViewModle$loadLocalArchiveDatas$1(this, context, null), 2, null);
    }

    public final void loadLocalExArchive(@NotNull ModGameArchivePathData modGameArchivePathData, @NotNull String archiveLocation, @NotNull Context context, @NotNull List<ArchiveData> archiveList) {
        Intrinsics.checkNotNullParameter(modGameArchivePathData, "modGameArchivePathData");
        Intrinsics.checkNotNullParameter(archiveLocation, "archiveLocation");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveList, "archiveList");
        Uri parse = Uri.parse(e.f52358n.c());
        String modPackageName = modGameArchivePathData.getModPackageName();
        Intrinsics.checkNotNullExpressionValue(modPackageName, "modGameArchivePathData.modPackageName");
        String archiveFileSuffix = modGameArchivePathData.getArchiveFileSuffix();
        Intrinsics.checkNotNullExpressionValue(archiveFileSuffix, "modGameArchivePathData.archiveFileSuffix");
        try {
            Cursor query = context.getContentResolver().query(parse, new String[]{modPackageName, archiveLocation, archiveFileSuffix, String.valueOf(modGameArchivePathData.getArchiveType())}, null, null, null);
            if (query != null && query.getCount() > 0) {
                while (query.moveToNext()) {
                    try {
                        String string = query.getString(query.getColumnIndexOrThrow("pathUrL"));
                        String time = query.getString(query.getColumnIndexOrThrow("time"));
                        ArchiveData archiveData = new ArchiveData();
                        archiveData.setArchiveLocalPath(string);
                        archiveData.setArchiveDesc("我的默认存档");
                        Intrinsics.checkNotNullExpressionValue(time, "time");
                        archiveData.setAddTime(Long.parseLong(time) / 1000);
                        archiveData.setArchiveLocation(archiveLocation);
                        archiveData.setPackageName(modGameArchivePathData.getModPackageName());
                        archiveData.setGame_id(modGameArchivePathData.getGameId());
                        archiveData.setShowText("启动");
                        archiveData.setStatus(8);
                        archiveData.setId("0");
                        archiveData.setUserId(0);
                        archiveList.add(archiveData);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0025, code lost:
        if (r0 != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void loadLocalExtArchiveMain(@org.jetbrains.annotations.NotNull com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull android.content.Context r7, @org.jetbrains.annotations.NotNull java.util.List<com.join.kotlin.ui.cloudarchive.data.ArchiveData> r8) {
        /*
            r4 = this;
            java.lang.String r0 = "modGameArchivePathData"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "mainArchiveLocalPath"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "archiveList"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "/data/data"
            r1 = 0
            r2 = 2
            r3 = 0
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r6, r0, r1, r2, r3)
            if (r0 != 0) goto L27
            java.lang.String r0 = "/Android/data"
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r6, r0, r1, r2, r3)
            if (r0 == 0) goto L28
        L27:
            r1 = 1
        L28:
            if (r1 == 0) goto L2e
            r4.loadLocalExArchive(r5, r6, r7, r8)
            goto L3a
        L2e:
            java.lang.String r7 = r5.getModPackageName()
            java.lang.String r0 = "modGameArchivePathData.modPackageName"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r0)
            r4.loadLocalArchiveexcues(r7, r5, r6, r8)
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.CloudShareViewModle.loadLocalExtArchiveMain(com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData, java.lang.String, android.content.Context, java.util.List):void");
    }

    public final void setArchiveData(@NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(archiveData, "<set-?>");
        this.archiveData = archiveData;
    }

    public final void setEvent(@NotNull SingleLiveEvent<CloudShareEvent> singleLiveEvent) {
        Intrinsics.checkNotNullParameter(singleLiveEvent, "<set-?>");
        this.event = singleLiveEvent;
    }

    public final void setGoldFingerBean(@NotNull List<GoldFingerBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.goldFingerBean = list;
    }

    public final void setInitFinish(boolean z3) {
        this.initFinish = z3;
    }

    public final void setInstallInExtPlug(boolean z3) {
        this.installInExtPlug = z3;
    }

    public final void setLastStartArchive(@NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(archiveData, "<set-?>");
        this.lastStartArchive = archiveData;
    }

    public final void setLocalArchiveLists(@NotNull MutableLiveData<List<ArchiveData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.localArchiveLists = mutableLiveData;
    }

    public final void setModGameArchivePathData(@NotNull ModGameArchivePathData modGameArchivePathData) {
        Intrinsics.checkNotNullParameter(modGameArchivePathData, "<set-?>");
        this.modGameArchivePathData = modGameArchivePathData;
    }

    public final void setRunIngArchiveId(@NotNull MutableLiveData<Long> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.runIngArchiveId = mutableLiveData;
    }

    public final void setShowDialog(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showDialog = mutableLiveData;
    }

    public final void setShowDownlloadDialog(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showDownlloadDialog = mutableLiveData;
    }

    public final void setTime(long j4) {
        this.time = j4;
    }
}

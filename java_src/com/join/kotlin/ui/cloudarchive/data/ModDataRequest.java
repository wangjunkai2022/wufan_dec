package com.join.kotlin.ui.cloudarchive.data;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.lifecycle.MutableLiveData;
import com.facebook.common.util.f;
import com.github.snowdream.android.app.downloader.b;
import com.github.snowdream.android.app.downloader.c;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.ui.cloudarchive.util.ArchiveZipUtil;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.t0;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
import com.join.mgps.va.overmind.e;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringsJVMKt;
import n1.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: ModDataRequest.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001:\u0001cB\u0007¢\u0006\u0004\ba\u0010bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J(\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\bH\u0002JA\u0010\u001c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001a\u001a\u0004\u0018\u00010\u00112\b\u0010\u001b\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u001c\u0010\u001dJ\u001e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0011J\u000e\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010 \u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0011J\u0010\u0010#\u001a\u00020\u00042\b\u0010\"\u001a\u0004\u0018\u00010!J.\u0010(\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u00112\u0006\u0010'\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\bJ\u001e\u0010*\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\bJ\u0016\u0010+\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\"\u001a\u00020!R(\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00110,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R(\u00103\u001a\b\u0012\u0004\u0012\u00020\u00150,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010.\u001a\u0004\b4\u00100\"\u0004\b5\u00102R(\u00106\u001a\b\u0012\u0004\u0012\u00020\u00150,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010.\u001a\u0004\b7\u00100\"\u0004\b8\u00102R\"\u0010:\u001a\u0002098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R6\u0010C\u001a\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0B0A\u0018\u00010@8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR(\u0010I\u001a\b\u0012\u0004\u0012\u00020!0,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010.\u001a\u0004\bJ\u00100\"\u0004\bK\u00102R4\u0010L\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0B0A0,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010.\u001a\u0004\bM\u00100\"\u0004\bN\u00102R\"\u0010O\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u001d\u0010Z\u001a\u00020U8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\"\u0010[\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010P\u001a\u0004\b\\\u0010R\"\u0004\b]\u0010TR4\u0010^\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0B0A0,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b^\u0010.\u001a\u0004\b_\u00100\"\u0004\b`\u00102¨\u0006d"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;", "", "Ljava/io/File;", f.f11767c, "", "getFileUpdateTime", "Lcom/join/mgps/db/tables/CloudArchiveTable;", "table", "Landroid/content/Context;", "context", "unzipToUser0", "unZip", "Ljava/io/InputStream;", "input", "Ljava/io/OutputStream;", "out", "copyFileSimple", "", "root", "child", "unZipOne", "", "page", "gameId", "", "lastEnterTime", "tagId", "type", "getModeDatas", "(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V", "getAllDownloedArchive", "getFileUpdateTimeMain", "loadMyInShop", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "archiveData", "cancleDownloadTask", "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "pathData", "filePath", "downloadType", "downloadArchive", "archiveLocalPath", "unzipToPath", "reportDownloadArchive", "Landroidx/lifecycle/MutableLiveData;", "progressTextShow", "Landroidx/lifecycle/MutableLiveData;", "getProgressTextShow", "()Landroidx/lifecycle/MutableLiveData;", "setProgressTextShow", "(Landroidx/lifecycle/MutableLiveData;)V", "progress", "getProgress", "setProgress", "status", "getStatus", "setStatus", "", "installInExtPlug", "Z", "getInstallInExtPlug", "()Z", "setInstallInExtPlug", "(Z)V", "Lretrofit2/Call;", "Lcom/join/mgps/dto/ResponseModel;", "", "result", "Lretrofit2/Call;", "getResult", "()Lretrofit2/Call;", "setResult", "(Lretrofit2/Call;)V", "dataChangeItem", "getDataChangeItem", "setDataChangeItem", "resultData", "getResultData", "setResultData", "time", "J", "getTime", "()J", "setTime", "(J)V", "Lcom/github/snowdream/android/app/downloader/b;", "factory$delegate", "Lkotlin/Lazy;", "getFactory", "()Lcom/github/snowdream/android/app/downloader/b;", "factory", "actualSize", "getActualSize", "setActualSize", "resultAllHasDownloadData", "getResultAllHasDownloadData", "setResultAllHasDownloadData", "<init>", "()V", "ArchiveDownStatus", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ModDataRequest {
    private long actualSize;
    @NotNull
    private final Lazy factory$delegate;
    private boolean installInExtPlug;
    @Nullable
    private Call<ResponseModel<List<ArchiveData>>> result;
    private long time;
    @NotNull
    private MutableLiveData<ResponseModel<List<ArchiveData>>> resultData = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<ResponseModel<List<ArchiveData>>> resultAllHasDownloadData = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> status = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> progress = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<String> progressTextShow = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<ArchiveData> dataChangeItem = new MutableLiveData<>();

    /* compiled from: ModDataRequest.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$ArchiveDownStatus;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ArchiveDownStatus {
        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int DATAUPDATED = 10;
        public static final int DELETEDLOCAL = 9;
        public static final int ERROR = 5;
        public static final int FINISH = 4;
        public static final int NORMAL = 0;
        public static final int PROGRESS = 3;
        public static final int START = 1;
        public static final int STOP = 6;
        public static final int UNZIP = 7;
        public static final int UNZIPFINISH = 8;
        public static final int WAIT = 2;

        /* compiled from: ModDataRequest.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0016\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0016\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0016\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0016\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0016\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004¨\u0006\u0011"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$ArchiveDownStatus$Companion;", "", "", "DATAUPDATED", "I", "DELETEDLOCAL", "ERROR", "FINISH", "NORMAL", "PROGRESS", "START", "STOP", "UNZIP", "UNZIPFINISH", "WAIT", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }
    }

    public ModDataRequest() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<b>() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest$factory$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final b invoke() {
                return b.e();
            }
        });
        this.factory$delegate = lazy;
    }

    private final void copyFileSimple(InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        byte[] bArr = new byte[5120];
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read != -1) {
                bufferedOutputStream.write(bArr, 0, read);
            } else {
                bufferedOutputStream.flush();
                bufferedInputStream.close();
                bufferedOutputStream.close();
                outputStream.close();
                inputStream.close();
                return;
            }
        }
    }

    private final void getFileUpdateTime(File file) {
        int i2 = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                int length = listFiles.length;
                while (i2 < length) {
                    File f4 = listFiles[i2];
                    Intrinsics.checkNotNullExpressionValue(f4, "f");
                    getFileUpdateTime(f4);
                    i2++;
                }
                return;
            }
            long millis = Files.readAttributes(file.toPath(), BasicFileAttributes.class, new LinkOption[0]).lastModifiedTime().toMillis();
            if (millis > this.time) {
                this.time = millis;
            }
        } else if (file.isDirectory()) {
            File[] listFiles2 = file.listFiles();
            int length2 = listFiles2.length;
            while (i2 < length2) {
                File f5 = listFiles2[i2];
                Intrinsics.checkNotNullExpressionValue(f5, "f");
                getFileUpdateTime(f5);
                i2++;
            }
        } else {
            long lastModified = file.lastModified();
            if (lastModified > this.time) {
                this.time = lastModified;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unZip(final CloudArchiveTable cloudArchiveTable, final Context context) {
        new Thread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest$unZip$1
            @Override // java.lang.Runnable
            public final void run() {
                ModDataRequest modDataRequest = ModDataRequest.this;
                CloudArchiveTable cloudArchiveTable2 = cloudArchiveTable;
                String archiveFolder = cloudArchiveTable2.getArchiveFolder();
                Intrinsics.checkNotNullExpressionValue(archiveFolder, "table.archiveFolder");
                modDataRequest.unzipToPath(cloudArchiveTable2, archiveFolder, context);
                String mainArchiveLocalPath2 = cloudArchiveTable.getMainArchiveLocalPath2();
                if (!(mainArchiveLocalPath2 == null || mainArchiveLocalPath2.length() == 0)) {
                    ModDataRequest modDataRequest2 = ModDataRequest.this;
                    CloudArchiveTable cloudArchiveTable3 = cloudArchiveTable;
                    String mainArchiveLocalPath22 = cloudArchiveTable3.getMainArchiveLocalPath2();
                    Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath22, "table.mainArchiveLocalPath2");
                    modDataRequest2.unzipToPath(cloudArchiveTable3, mainArchiveLocalPath22, context);
                }
                CloudArchiveTable r3 = g.t().r(cloudArchiveTable.getGameId(), cloudArchiveTable.getArchiveId());
                if (r3 == null) {
                    g.t().k(cloudArchiveTable);
                } else {
                    cloudArchiveTable.setId(r3.getId());
                    g.t().update(cloudArchiveTable);
                }
                e.f52358n.b().h(cloudArchiveTable.getPackageName(), cloudArchiveTable.getUserId());
                ModDataRequest.this.getStatus().postValue(8);
            }
        }).start();
    }

    private final void unZipOne(CloudArchiveTable cloudArchiveTable, String str, String str2, Context context) {
        try {
            File file = new File(str, str2);
            cloudArchiveTable.setArchiveFiles(file.getAbsolutePath());
            if (this.installInExtPlug) {
                ContentResolver contentResolver = context.getContentResolver();
                StringBuilder sb = new StringBuilder();
                e.a aVar = e.f52358n;
                sb.append(aVar.c());
                sb.append(str);
                OutputStream openOutputStream = contentResolver.openOutputStream(Uri.parse(sb.toString()), "copyZip");
                FileInputStream fileInputStream = new FileInputStream(new File(cloudArchiveTable.getArchiveZipPath()));
                if (openOutputStream != null) {
                    copyFileSimple(fileInputStream, openOutputStream);
                    ContentResolver contentResolver2 = context.getContentResolver();
                    contentResolver2.insert(Uri.parse(aVar.c() + file.getAbsolutePath()), new ContentValues());
                    return;
                }
                return;
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            ArchiveZipUtil archiveZipUtil = new ArchiveZipUtil();
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "unFolder.absolutePath");
            archiveZipUtil.unZipActiveFilesKotlin(absolutePath, new File(cloudArchiveTable.getArchiveZipPath()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unzipToUser0(final CloudArchiveTable cloudArchiveTable, final Context context) {
        new Thread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest$unzipToUser0$1
            @Override // java.lang.Runnable
            public final void run() {
                ModDataRequest modDataRequest = ModDataRequest.this;
                CloudArchiveTable cloudArchiveTable2 = cloudArchiveTable;
                String archiveFolder = cloudArchiveTable2.getArchiveFolder();
                Intrinsics.checkNotNullExpressionValue(archiveFolder, "table.archiveFolder");
                modDataRequest.unzipToPath(cloudArchiveTable2, archiveFolder, context);
                String mainArchiveLocalPath2 = cloudArchiveTable.getMainArchiveLocalPath2();
                if (!(mainArchiveLocalPath2 == null || mainArchiveLocalPath2.length() == 0)) {
                    ModDataRequest modDataRequest2 = ModDataRequest.this;
                    CloudArchiveTable cloudArchiveTable3 = cloudArchiveTable;
                    String mainArchiveLocalPath22 = cloudArchiveTable3.getMainArchiveLocalPath2();
                    Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath22, "table.mainArchiveLocalPath2");
                    modDataRequest2.unzipToPath(cloudArchiveTable3, mainArchiveLocalPath22, context);
                }
                CloudArchiveTable s3 = g.t().s(cloudArchiveTable.getGameId(), cloudArchiveTable.getUserId());
                if (s3 == null) {
                    g.t().k(cloudArchiveTable);
                } else {
                    c0.a().c(new ArchiveDownEvent(9, (ArchiveData) JsonMapper.getInstance().fromJson(s3.getArchiveDataJson(), ArchiveData.class)));
                    cloudArchiveTable.setId(s3.getId());
                    g.t().update(cloudArchiveTable);
                }
                if (cloudArchiveTable.getArchiveZipPath() != null) {
                    UtilsMy.delete(new File(cloudArchiveTable.getArchiveZipPath()));
                }
                e.f52358n.b().a0(cloudArchiveTable.getUserId());
                ModDataRequest.this.getStatus().postValue(8);
            }
        }).start();
    }

    public final void cancleDownloadTask(@Nullable ArchiveData archiveData) {
        if (archiveData != null) {
            getFactory().l(archiveData.getArchiveLocation());
        }
    }

    /* JADX WARN: Type inference failed for: r12v5, types: [T, java.lang.String] */
    public final void downloadArchive(@NotNull final ArchiveData archiveData, @NotNull final ModGameArchivePathData pathData, @NotNull String filePath, final int i2, @NotNull final Context context) {
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(pathData, "pathData");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(context, "context");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        getFactory().m(new b.InterfaceC0098b() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest$downloadArchive$1
            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onError(@Nullable String str) {
                ModDataRequest.this.getStatus().setValue(5);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onFinish(@Nullable String str) {
                boolean z3;
                ModDataRequest.this.getStatus().setValue(4);
                List<CloudArchiveTable> q3 = g.t().q(archiveData.getGame_id());
                int i4 = 1;
                while (true) {
                    if (i4 > 100) {
                        i4 = 1;
                        break;
                    }
                    if (q3 != null) {
                        for (CloudArchiveTable tab : q3) {
                            Intrinsics.checkNotNullExpressionValue(tab, "tab");
                            if (tab.getUserId() == i4) {
                                z3 = true;
                                break;
                            }
                        }
                    }
                    z3 = false;
                    if (!z3) {
                        break;
                    }
                    i4++;
                }
                t0.d("userIdNew", "" + i4);
                CloudArchiveTable cloudArchiveTable = new CloudArchiveTable();
                if (archiveData.getUserId() != 0) {
                    i4 = archiveData.getUserId();
                }
                int i5 = i2 != 1 ? i4 : 0;
                cloudArchiveTable.setArchiveType("folder");
                cloudArchiveTable.setArchiveFolder(pathData.getMainArchiveLocalPath());
                cloudArchiveTable.setMainArchiveLocalPath2(pathData.getSubArchiveLocalPath());
                cloudArchiveTable.setPackageName(archiveData.getPackageName());
                cloudArchiveTable.setArchiveName(archiveData.getArchiveDesc());
                cloudArchiveTable.setUserId(i5);
                cloudArchiveTable.setGameId(archiveData.getGame_id());
                cloudArchiveTable.setArchiveZipPath((String) objectRef.element);
                cloudArchiveTable.setArchiveId(archiveData.getId());
                cloudArchiveTable.setIsFirstRun(1);
                cloudArchiveTable.setArchiveDataJson(JsonMapper.toJsonString(archiveData));
                if (i5 == 0) {
                    ModDataRequest.this.unzipToUser0(cloudArchiveTable, context);
                    return;
                }
                e.f52358n.b().a0(cloudArchiveTable.getUserId());
                ModDataRequest.this.unZip(cloudArchiveTable, context);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onProgress(@Nullable String str, int i4, @Nullable String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append("onProgress progress=");
                sb.append(i4);
                ModDataRequest.this.getStatus().setValue(3);
                ModDataRequest.this.getProgress().setValue(Integer.valueOf(i4));
                if (ModDataRequest.this.getActualSize() > 1048576) {
                    MutableLiveData<String> progressTextShow = ModDataRequest.this.getProgressTextShow();
                    StringBuilder sb2 = new StringBuilder();
                    long j4 = 1024;
                    sb2.append((((ModDataRequest.this.getActualSize() / 100) * i4) / j4) / j4);
                    sb2.append("M/");
                    sb2.append((ModDataRequest.this.getActualSize() / j4) / j4);
                    sb2.append('M');
                    progressTextShow.setValue(sb2.toString());
                } else if (ModDataRequest.this.getActualSize() > 0) {
                    MutableLiveData<String> progressTextShow2 = ModDataRequest.this.getProgressTextShow();
                    StringBuilder sb3 = new StringBuilder();
                    long j5 = 1024;
                    sb3.append(((ModDataRequest.this.getActualSize() / 100) * i4) / j5);
                    sb3.append("KB/");
                    sb3.append(ModDataRequest.this.getActualSize() / j5);
                    sb3.append("KB");
                    progressTextShow2.setValue(sb3.toString());
                }
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onStart(@Nullable String str) {
                ModDataRequest.this.getStatus().setValue(1);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onStop(@Nullable String str) {
                ModDataRequest.this.getStatus().setValue(6);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onWait(@Nullable String str) {
                ModDataRequest.this.getStatus().setValue(2);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void updateSize(@Nullable String str, long j4) {
                ModDataRequest.this.setActualSize(j4);
            }
        });
        getFactory().i();
        String valueOf = String.valueOf(archiveData.getId());
        String str = filePath + archiveData.getGame_id() + '/';
        objectRef.element = str + valueOf;
        getFactory().b(new c(archiveData.getArchiveLocation(), valueOf, str, archiveData.getArchiveSize()));
    }

    public final long getActualSize() {
        return this.actualSize;
    }

    public final void getAllDownloedArchive(@NotNull Context context, final int i2, @NotNull String gameId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(gameId);
        requestGameIdArgs.setPage(i2);
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        requestGameIdArgs.setUid(accountData.getUid());
        requestModel.setArgs(requestGameIdArgs);
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        Call<ResponseModel<List<ArchiveData>>> O = L.J().O(requestModel.makeSign());
        this.result = O;
        if (O != null) {
            O.enqueue(new Callback<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest$getAllDownloedArchive$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<List<? extends ArchiveData>>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    ModDataRequest.this.getResultAllHasDownloadData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<List<? extends ArchiveData>>> call, @NotNull Response<ResponseModel<List<? extends ArchiveData>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        ResponseModel<List<? extends ArchiveData>> body = response.body();
                        if (body != null) {
                            body.setPage(i2);
                        }
                        ModDataRequest.this.getResultAllHasDownloadData().setValue(body);
                        return;
                    }
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    ModDataRequest.this.getResultAllHasDownloadData().setValue(responseModel);
                }
            });
        }
    }

    @NotNull
    public final MutableLiveData<ArchiveData> getDataChangeItem() {
        return this.dataChangeItem;
    }

    @NotNull
    public final b getFactory() {
        return (b) this.factory$delegate.getValue();
    }

    public final long getFileUpdateTimeMain(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.time = 0L;
        getFileUpdateTime(file);
        return this.time;
    }

    public final boolean getInstallInExtPlug() {
        return this.installInExtPlug;
    }

    public final void getModeDatas(@NotNull Context context, final int i2, @NotNull String gameId, long j4, @Nullable String str, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(gameId);
        requestGameIdArgs.setPage(i2);
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        requestGameIdArgs.setUid(accountData.getUid());
        requestGameIdArgs.setLastEnterTime(j4);
        requestGameIdArgs.setTagId(str);
        requestGameIdArgs.setType(num != null ? num.intValue() : 1);
        requestModel.setArgs(requestGameIdArgs);
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        Call<ResponseModel<List<ArchiveData>>> g02 = L.J().g0(requestModel.makeSign());
        this.result = g02;
        if (g02 != null) {
            g02.enqueue(new Callback<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest$getModeDatas$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<List<? extends ArchiveData>>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    ModDataRequest.this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<List<? extends ArchiveData>>> call, @NotNull Response<ResponseModel<List<? extends ArchiveData>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        ResponseModel<List<? extends ArchiveData>> body = response.body();
                        if (body != null) {
                            body.setPage(i2);
                        }
                        ModDataRequest.this.getResultData().setValue(body);
                        return;
                    }
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    ModDataRequest.this.getResultData().setValue(responseModel);
                }
            });
        }
    }

    @NotNull
    public final MutableLiveData<Integer> getProgress() {
        return this.progress;
    }

    @NotNull
    public final MutableLiveData<String> getProgressTextShow() {
        return this.progressTextShow;
    }

    @Nullable
    public final Call<ResponseModel<List<ArchiveData>>> getResult() {
        return this.result;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<List<ArchiveData>>> getResultAllHasDownloadData() {
        return this.resultAllHasDownloadData;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<List<ArchiveData>>> getResultData() {
        return this.resultData;
    }

    @NotNull
    public final MutableLiveData<Integer> getStatus() {
        return this.status;
    }

    public final long getTime() {
        return this.time;
    }

    public final void loadMyInShop(@NotNull Context context, final int i2, @NotNull String gameId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(gameId);
        requestGameIdArgs.setPage(i2);
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        requestGameIdArgs.setUid(accountData.getUid());
        requestModel.setArgs(requestGameIdArgs);
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        Call<ResponseModel<List<ArchiveData>>> L2 = L.J().L(requestModel.makeSign());
        this.result = L2;
        if (L2 != null) {
            L2.enqueue(new Callback<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest$loadMyInShop$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<List<? extends ArchiveData>>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    ModDataRequest.this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<List<? extends ArchiveData>>> call, @NotNull Response<ResponseModel<List<? extends ArchiveData>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        ResponseModel<List<? extends ArchiveData>> body = response.body();
                        if (body != null) {
                            body.setPage(i2);
                        }
                        ModDataRequest.this.getResultData().setValue(body);
                        return;
                    }
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    ModDataRequest.this.getResultData().setValue(responseModel);
                }
            });
        }
    }

    public final void reportDownloadArchive(@NotNull Context context, @NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        archiveArgs.archiveId = archiveData.getId();
        archiveArgs.gameId = archiveData.getGame_id();
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        archiveArgs.uid = accountData.getUid();
        requestModel.setArgs(archiveArgs);
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        L.J().e0(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest$reportDownloadArchive$1
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<ResponseModel<?>> call, @NotNull Throwable t3) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t3, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<ResponseModel<?>> call, @NotNull Response<ResponseModel<?>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
            }
        });
    }

    public final void setActualSize(long j4) {
        this.actualSize = j4;
    }

    public final void setDataChangeItem(@NotNull MutableLiveData<ArchiveData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.dataChangeItem = mutableLiveData;
    }

    public final void setInstallInExtPlug(boolean z3) {
        this.installInExtPlug = z3;
    }

    public final void setProgress(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.progress = mutableLiveData;
    }

    public final void setProgressTextShow(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.progressTextShow = mutableLiveData;
    }

    public final void setResult(@Nullable Call<ResponseModel<List<ArchiveData>>> call) {
        this.result = call;
    }

    public final void setResultAllHasDownloadData(@NotNull MutableLiveData<ResponseModel<List<ArchiveData>>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultAllHasDownloadData = mutableLiveData;
    }

    public final void setResultData(@NotNull MutableLiveData<ResponseModel<List<ArchiveData>>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultData = mutableLiveData;
    }

    public final void setStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.status = mutableLiveData;
    }

    public final void setTime(long j4) {
        this.time = j4;
    }

    public final void unzipToPath(@NotNull CloudArchiveTable table, @NotNull String archiveLocalPath, @NotNull Context context) {
        boolean startsWith$default;
        boolean startsWith$default2;
        String replace$default;
        String str;
        String replace$default2;
        Intrinsics.checkNotNullParameter(table, "table");
        Intrinsics.checkNotNullParameter(archiveLocalPath, "archiveLocalPath");
        Intrinsics.checkNotNullParameter(context, "context");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(archiveLocalPath, "/Android/data", false, 2, null);
        if (startsWith$default) {
            com.join.mgps.va.overmind.f fVar = com.join.mgps.va.overmind.f.f52369d;
            String b02 = fVar.b0();
            if (this.installInExtPlug) {
                b02 = fVar.c0();
            }
            if (table.getUserId() == 0) {
                str = "";
            } else {
                str = "/user/" + table.getUserId();
            }
            replace$default2 = StringsKt__StringsJVMKt.replace$default(archiveLocalPath, "/Android/data/" + table.getPackageName(), "/Android/data" + str + File.separator + table.getPackageName(), false, 4, (Object) null);
            unZipOne(table, b02, replace$default2, context);
            return;
        }
        startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(archiveLocalPath, "/data/data/", false, 2, null);
        if (startsWith$default2) {
            com.join.mgps.va.overmind.f fVar2 = com.join.mgps.va.overmind.f.f52369d;
            String packageName = table.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "table.packageName");
            String w3 = fVar2.w(packageName, table.getUserId());
            if (this.installInExtPlug) {
                String packageName2 = table.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName2, "table.packageName");
                w3 = fVar2.z(packageName2, table.getUserId());
            }
            replace$default = StringsKt__StringsJVMKt.replace$default(archiveLocalPath, "/data/data/" + table.getPackageName(), "", false, 4, (Object) null);
            unZipOne(table, w3, replace$default, context);
            return;
        }
        unZipOne(table, com.join.mgps.va.overmind.f.f52369d.b0(), "/user/" + table.getUserId() + '/' + table.getPackageName() + '/' + archiveLocalPath, context);
    }
}

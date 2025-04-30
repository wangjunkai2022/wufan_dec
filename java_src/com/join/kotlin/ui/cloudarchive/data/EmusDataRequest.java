package com.join.kotlin.ui.cloudarchive.data;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import androidx.lifecycle.MutableLiveData;
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
import com.join.mgps.dto.ArchiveShopDataBean;
import com.join.mgps.dto.ArchiveshopArgs;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
import com.join.mgps.va.overmind.e;
import com.join.mgps.va.overmind.f;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
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
/* compiled from: EmusDataRequest.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001:\u0001UB\u0007¢\u0006\u0004\bS\u0010TJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J(\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u000eJ.\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016R(\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010*\u001a\u0004\b0\u0010,\"\u0004\b1\u0010.R(\u00102\u001a\b\u0012\u0004\u0012\u00020\u00120 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010#\u001a\u0004\b3\u0010%\"\u0004\b4\u0010'R*\u00107\u001a\n\u0012\u0004\u0012\u000206\u0018\u0001058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R(\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00120 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010#\u001a\u0004\b>\u0010%\"\u0004\b?\u0010'R(\u0010@\u001a\b\u0012\u0004\u0012\u00020\u000e0 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010#\u001a\u0004\bA\u0010%\"\u0004\bB\u0010'R\u001d\u0010H\u001a\u00020C8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bD\u0010E\u001a\u0004\bF\u0010GR\"\u0010J\u001a\u00020I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR(\u0010P\u001a\b\u0012\u0004\u0012\u0002060 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010#\u001a\u0004\bQ\u0010%\"\u0004\bR\u0010'¨\u0006V"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;", "", "Lcom/join/mgps/db/tables/CloudArchiveTable;", "table", "Landroid/content/Context;", "context", "", "unzipToUser0", "unZip", "Ljava/io/InputStream;", "input", "Ljava/io/OutputStream;", "out", "copyFileSimple", "", "root", "child", "unZipOne", "", "page", "gameId", "getModeDatas", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "archiveData", "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "pathData", "filePath", "downloadType", "downloadArchive", "archiveLocalPath", "unzipToPath", "reportDownloadArchive", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/CloudListDataBean;", "dataChangeItem", "Landroidx/lifecycle/MutableLiveData;", "getDataChangeItem", "()Landroidx/lifecycle/MutableLiveData;", "setDataChangeItem", "(Landroidx/lifecycle/MutableLiveData;)V", "", "actualSize", "J", "getActualSize", "()J", "setActualSize", "(J)V", "time", "getTime", "setTime", "status", "getStatus", "setStatus", "Lretrofit2/Call;", "Lcom/join/mgps/dto/ArchiveShopDataBean;", "result", "Lretrofit2/Call;", "getResult", "()Lretrofit2/Call;", "setResult", "(Lretrofit2/Call;)V", "progress", "getProgress", "setProgress", "progressTextShow", "getProgressTextShow", "setProgressTextShow", "Lcom/github/snowdream/android/app/downloader/b;", "factory$delegate", "Lkotlin/Lazy;", "getFactory", "()Lcom/github/snowdream/android/app/downloader/b;", "factory", "", "installInExtPlug", "Z", "getInstallInExtPlug", "()Z", "setInstallInExtPlug", "(Z)V", "resultData", "getResultData", "setResultData", "<init>", "()V", "ArchiveDownStatus", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class EmusDataRequest {
    private long actualSize;
    @NotNull
    private final Lazy factory$delegate;
    private boolean installInExtPlug;
    @Nullable
    private Call<ArchiveShopDataBean> result;
    private long time;
    @NotNull
    private MutableLiveData<ArchiveShopDataBean> resultData = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> status = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> progress = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<String> progressTextShow = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<CloudListDataBean> dataChangeItem = new MutableLiveData<>();

    /* compiled from: EmusDataRequest.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$ArchiveDownStatus;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
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

        /* compiled from: EmusDataRequest.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0016\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0016\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0016\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0016\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0016\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004¨\u0006\u0011"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$ArchiveDownStatus$Companion;", "", "", "DATAUPDATED", "I", "DELETEDLOCAL", "ERROR", "FINISH", "NORMAL", "PROGRESS", "START", "STOP", "UNZIP", "UNZIPFINISH", "WAIT", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }
    }

    public EmusDataRequest() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<b>() { // from class: com.join.kotlin.ui.cloudarchive.data.EmusDataRequest$factory$2
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void unZip(final CloudArchiveTable cloudArchiveTable, final Context context) {
        new Thread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.data.EmusDataRequest$unZip$1
            @Override // java.lang.Runnable
            public final void run() {
                EmusDataRequest emusDataRequest = EmusDataRequest.this;
                CloudArchiveTable cloudArchiveTable2 = cloudArchiveTable;
                String archiveFolder = cloudArchiveTable2.getArchiveFolder();
                Intrinsics.checkNotNullExpressionValue(archiveFolder, "table.archiveFolder");
                emusDataRequest.unzipToPath(cloudArchiveTable2, archiveFolder, context);
                String mainArchiveLocalPath2 = cloudArchiveTable.getMainArchiveLocalPath2();
                if (!(mainArchiveLocalPath2 == null || mainArchiveLocalPath2.length() == 0)) {
                    EmusDataRequest emusDataRequest2 = EmusDataRequest.this;
                    CloudArchiveTable cloudArchiveTable3 = cloudArchiveTable;
                    String mainArchiveLocalPath22 = cloudArchiveTable3.getMainArchiveLocalPath2();
                    Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath22, "table.mainArchiveLocalPath2");
                    emusDataRequest2.unzipToPath(cloudArchiveTable3, mainArchiveLocalPath22, context);
                }
                CloudArchiveTable r3 = g.t().r(cloudArchiveTable.getGameId(), cloudArchiveTable.getArchiveId());
                if (r3 == null) {
                    g.t().k(cloudArchiveTable);
                } else {
                    cloudArchiveTable.setId(r3.getId());
                    g.t().update(cloudArchiveTable);
                }
                e.f52358n.b().h(cloudArchiveTable.getPackageName(), cloudArchiveTable.getUserId());
                EmusDataRequest.this.getStatus().postValue(8);
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
        new Thread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.data.EmusDataRequest$unzipToUser0$1
            @Override // java.lang.Runnable
            public final void run() {
                EmusDataRequest emusDataRequest = EmusDataRequest.this;
                CloudArchiveTable cloudArchiveTable2 = cloudArchiveTable;
                String archiveFolder = cloudArchiveTable2.getArchiveFolder();
                Intrinsics.checkNotNullExpressionValue(archiveFolder, "table.archiveFolder");
                emusDataRequest.unzipToPath(cloudArchiveTable2, archiveFolder, context);
                String mainArchiveLocalPath2 = cloudArchiveTable.getMainArchiveLocalPath2();
                if (!(mainArchiveLocalPath2 == null || mainArchiveLocalPath2.length() == 0)) {
                    EmusDataRequest emusDataRequest2 = EmusDataRequest.this;
                    CloudArchiveTable cloudArchiveTable3 = cloudArchiveTable;
                    String mainArchiveLocalPath22 = cloudArchiveTable3.getMainArchiveLocalPath2();
                    Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath22, "table.mainArchiveLocalPath2");
                    emusDataRequest2.unzipToPath(cloudArchiveTable3, mainArchiveLocalPath22, context);
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
                EmusDataRequest.this.getStatus().postValue(8);
            }
        }).start();
    }

    /* JADX WARN: Type inference failed for: r12v5, types: [T, java.lang.String] */
    public final void downloadArchive(@NotNull final ArchiveData archiveData, @NotNull final ModGameArchivePathData pathData, @NotNull String filePath, final int i2, @NotNull final Context context) {
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(pathData, "pathData");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(context, "context");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        getFactory().m(new b.InterfaceC0098b() { // from class: com.join.kotlin.ui.cloudarchive.data.EmusDataRequest$downloadArchive$1
            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onError(@Nullable String str) {
                EmusDataRequest.this.getStatus().setValue(5);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onFinish(@Nullable String str) {
                boolean z3;
                EmusDataRequest.this.getStatus().setValue(4);
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
                    EmusDataRequest.this.unzipToUser0(cloudArchiveTable, context);
                    return;
                }
                e.f52358n.b().a0(cloudArchiveTable.getUserId());
                EmusDataRequest.this.unZip(cloudArchiveTable, context);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onProgress(@Nullable String str, int i4, @Nullable String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append("onProgress progress=");
                sb.append(i4);
                EmusDataRequest.this.getStatus().setValue(3);
                EmusDataRequest.this.getProgress().setValue(Integer.valueOf(i4));
                if (EmusDataRequest.this.getActualSize() > 1048576) {
                    MutableLiveData<String> progressTextShow = EmusDataRequest.this.getProgressTextShow();
                    StringBuilder sb2 = new StringBuilder();
                    long j4 = 1024;
                    sb2.append((((EmusDataRequest.this.getActualSize() / 100) * i4) / j4) / j4);
                    sb2.append("M/");
                    sb2.append((EmusDataRequest.this.getActualSize() / j4) / j4);
                    sb2.append('M');
                    progressTextShow.setValue(sb2.toString());
                } else if (EmusDataRequest.this.getActualSize() > 0) {
                    MutableLiveData<String> progressTextShow2 = EmusDataRequest.this.getProgressTextShow();
                    StringBuilder sb3 = new StringBuilder();
                    long j5 = 1024;
                    sb3.append(((EmusDataRequest.this.getActualSize() / 100) * i4) / j5);
                    sb3.append("KB/");
                    sb3.append(EmusDataRequest.this.getActualSize() / j5);
                    sb3.append("KB");
                    progressTextShow2.setValue(sb3.toString());
                }
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onStart(@Nullable String str) {
                EmusDataRequest.this.getStatus().setValue(1);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onStop(@Nullable String str) {
                EmusDataRequest.this.getStatus().setValue(6);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void onWait(@Nullable String str) {
                EmusDataRequest.this.getStatus().setValue(2);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
            public void updateSize(@Nullable String str, long j4) {
                EmusDataRequest.this.setActualSize(j4);
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

    @NotNull
    public final MutableLiveData<CloudListDataBean> getDataChangeItem() {
        return this.dataChangeItem;
    }

    @NotNull
    public final b getFactory() {
        return (b) this.factory$delegate.getValue();
    }

    public final boolean getInstallInExtPlug() {
        return this.installInExtPlug;
    }

    public final void getModeDatas(@NotNull Context context, int i2, @NotNull String gameId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        new RequestModel().setDefault(context);
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        ArchiveshopArgs archiveshopArgs = new ArchiveshopArgs(String.valueOf(accountData.getUid()), accountData.getToken(), gameId, 0, i2);
        com.join.mgps.rpc.impl.b k4 = com.join.mgps.rpc.impl.b.k();
        Intrinsics.checkNotNullExpressionValue(k4, "RpcArchiveClientImpl.newInstance()");
        Call<ArchiveShopDataBean> g4 = k4.j().g(archiveshopArgs.getArgs());
        this.result = g4;
        if (g4 != null) {
            g4.enqueue(new Callback<ArchiveShopDataBean>() { // from class: com.join.kotlin.ui.cloudarchive.data.EmusDataRequest$getModeDatas$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ArchiveShopDataBean> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                    ArchiveShopDataBean archiveShopDataBean = new ArchiveShopDataBean();
                    archiveShopDataBean.setCode(401);
                    EmusDataRequest.this.getResultData().setValue(archiveShopDataBean);
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ArchiveShopDataBean> call, @NotNull Response<ArchiveShopDataBean> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        EmusDataRequest.this.getResultData().setValue(response.body());
                        return;
                    }
                    ArchiveShopDataBean archiveShopDataBean = new ArchiveShopDataBean();
                    archiveShopDataBean.setCode(401);
                    EmusDataRequest.this.getResultData().setValue(archiveShopDataBean);
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
    public final Call<ArchiveShopDataBean> getResult() {
        return this.result;
    }

    @NotNull
    public final MutableLiveData<ArchiveShopDataBean> getResultData() {
        return this.resultData;
    }

    @NotNull
    public final MutableLiveData<Integer> getStatus() {
        return this.status;
    }

    public final long getTime() {
        return this.time;
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
        L.J().e0(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.data.EmusDataRequest$reportDownloadArchive$1
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

    public final void setDataChangeItem(@NotNull MutableLiveData<CloudListDataBean> mutableLiveData) {
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

    public final void setResult(@Nullable Call<ArchiveShopDataBean> call) {
        this.result = call;
    }

    public final void setResultData(@NotNull MutableLiveData<ArchiveShopDataBean> mutableLiveData) {
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
            f fVar = f.f52369d;
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
            f fVar2 = f.f52369d;
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
        unZipOne(table, f.f52369d.b0(), "/user/" + table.getUserId() + '/' + table.getPackageName() + '/' + archiveLocalPath, context);
    }
}

package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.android.app.common.http.g;
import com.join.android.app.common.http.h;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.ui.cloudarchive.data.ArchiveArgs;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.g0;
import com.join.mgps.Util.u;
import com.join.mgps.activity.screenshot.ImageFactory;
import com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.papa.sim.statistic.k;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
/* compiled from: ModUploadArchiveViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b:\u0010;J\"\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\"\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002R,\u0010\u0017\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00160\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0018\u001a\u0004\b!\u0010\u001a\"\u0004\b\"\u0010\u001cR(\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0018\u001a\u0004\b$\u0010\u001a\"\u0004\b%\u0010\u001cR(\u0010'\u001a\b\u0012\u0004\u0012\u00020&0\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0018\u001a\u0004\b(\u0010\u001a\"\u0004\b)\u0010\u001cR(\u0010*\u001a\b\u0012\u0004\u0012\u00020&0\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0018\u001a\u0004\b+\u0010\u001a\"\u0004\b,\u0010\u001cR(\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u0018\u001a\u0004\b.\u0010\u001a\"\u0004\b/\u0010\u001cR.\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0006000\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010\u0018\u001a\u0004\b2\u0010\u001a\"\u0004\b3\u0010\u001cR(\u00104\u001a\b\u0012\u0004\u0012\u00020\u00060\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u0010\u0018\u001a\u0004\b5\u0010\u001a\"\u0004\b6\u0010\u001cR(\u00107\u001a\b\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010\u0018\u001a\u0004\b8\u0010\u001a\"\u0004\b9\u0010\u001c¨\u0006<"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;", "Landroidx/lifecycle/ViewModel;", "Landroid/content/Context;", "context", "", "folder", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "archiveData", "Ljava/io/File;", "startZipFile", "Ljava/io/InputStream;", "input", "Ljava/io/OutputStream;", "out", "", "copyFileSimple", "startZipFile2", "compressImage", "onclickChoiceIcon", "uploadArchive", "updateArchiveMessage", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/ResponseModel;", "responseReult", "Landroidx/lifecycle/MutableLiveData;", "getResponseReult", "()Landroidx/lifecycle/MutableLiveData;", "setResponseReult", "(Landroidx/lifecycle/MutableLiveData;)V", ScreenShortUploadImagActivity_.IMAGEPATH_EXTRA, "getImagepath", "setImagepath", "message", "getMessage", "setMessage", "title", "getTitle", "setTitle", "", "uploadStatus", "getUploadStatus", "setUploadStatus", "uploadProgress", "getUploadProgress", "setUploadProgress", "noticeWarnings", "getNoticeWarnings", "setNoticeWarnings", "", "archiveDatas", "getArchiveDatas", "setArchiveDatas", "archive", "getArchive", "setArchive", "archiveFileSuffix", "getArchiveFileSuffix", "setArchiveFileSuffix", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ModUploadArchiveViewModle extends ViewModel {
    @NotNull
    private MutableLiveData<ArchiveData> archive = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<List<ArchiveData>> archiveDatas = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<String> message = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<String> archiveFileSuffix = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<String> title = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<String> noticeWarnings = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> uploadStatus = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> uploadProgress = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<ResponseModel<?>> responseReult = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<String> imagepath = new MutableLiveData<>();

    public ModUploadArchiveViewModle() {
        this.title.setValue("发布存档");
        this.noticeWarnings.setValue("");
        this.uploadStatus.setValue(0);
        this.uploadProgress.setValue(0);
        this.imagepath.setValue(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String compressImage(Context context) {
        int lastIndexOf$default;
        String value = this.imagepath.getValue();
        String replace$default = value != null ? StringsKt__StringsJVMKt.replace$default(value, "file://", "", false, 4, (Object) null) : null;
        StringBuilder sb = new StringBuilder();
        sb.append(u.f27851j);
        sb.append("uploadCoverFile");
        Intrinsics.checkNotNull(replace$default);
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) replace$default, g0.f27568a, 0, false, 6, (Object) null);
        String substring = replace$default.substring(lastIndexOf$default, replace$default.length());
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        sb.append(substring);
        String sb2 = sb.toString();
        File file = new File(sb2);
        try {
            if (!file.exists()) {
                file.getParentFile().mkdirs();
            }
            new ImageFactory().compressAndGenImage(replace$default, sb2, 500, false, context);
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        return sb2;
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
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01ae A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.File startZipFile(android.content.Context r23, java.lang.String r24, com.join.kotlin.ui.cloudarchive.data.ArchiveData r25) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle.startZipFile(android.content.Context, java.lang.String, com.join.kotlin.ui.cloudarchive.data.ArchiveData):java.io.File");
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03fa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0187 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02c7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.io.File startZipFile2(android.content.Context r29, java.lang.String r30, com.join.kotlin.ui.cloudarchive.data.ArchiveData r31) {
        /*
            Method dump skipped, instructions count: 1066
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle.startZipFile2(android.content.Context, java.lang.String, com.join.kotlin.ui.cloudarchive.data.ArchiveData):java.io.File");
    }

    @NotNull
    public final MutableLiveData<ArchiveData> getArchive() {
        return this.archive;
    }

    @NotNull
    public final MutableLiveData<List<ArchiveData>> getArchiveDatas() {
        return this.archiveDatas;
    }

    @NotNull
    public final MutableLiveData<String> getArchiveFileSuffix() {
        return this.archiveFileSuffix;
    }

    @NotNull
    public final MutableLiveData<String> getImagepath() {
        return this.imagepath;
    }

    @NotNull
    public final MutableLiveData<String> getMessage() {
        return this.message;
    }

    @NotNull
    public final MutableLiveData<String> getNoticeWarnings() {
        return this.noticeWarnings;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<?>> getResponseReult() {
        return this.responseReult;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    @NotNull
    public final MutableLiveData<Integer> getUploadProgress() {
        return this.uploadProgress;
    }

    @NotNull
    public final MutableLiveData<Integer> getUploadStatus() {
        return this.uploadStatus;
    }

    public final void onclickChoiceIcon(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void setArchive(@NotNull MutableLiveData<ArchiveData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archive = mutableLiveData;
    }

    public final void setArchiveDatas(@NotNull MutableLiveData<List<ArchiveData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archiveDatas = mutableLiveData;
    }

    public final void setArchiveFileSuffix(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archiveFileSuffix = mutableLiveData;
    }

    public final void setImagepath(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.imagepath = mutableLiveData;
    }

    public final void setMessage(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.message = mutableLiveData;
    }

    public final void setNoticeWarnings(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.noticeWarnings = mutableLiveData;
    }

    public final void setResponseReult(@NotNull MutableLiveData<ResponseModel<?>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.responseReult = mutableLiveData;
    }

    public final void setTitle(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.title = mutableLiveData;
    }

    public final void setUploadProgress(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.uploadProgress = mutableLiveData;
    }

    public final void setUploadStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.uploadStatus = mutableLiveData;
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.join.kotlin.ui.cloudarchive.data.ArchiveData, T] */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, com.join.kotlin.ui.cloudarchive.data.ArchiveArgs] */
    /* JADX WARN: Type inference failed for: r0v6, types: [T, com.join.mgps.dto.AccountBean] */
    public final void updateArchiveMessage(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ArchiveData value = this.archive.getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNullExpressionValue(value, "archive.value!!");
        objectRef.element = value;
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = new ArchiveArgs();
        Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        objectRef3.element = instance_.getAccountData();
        ((ArchiveArgs) objectRef2.element).setArchiveId(((ArchiveData) objectRef.element).getId());
        ((ArchiveArgs) objectRef2.element).setGameId(((ArchiveData) objectRef.element).getGame_id());
        ((ArchiveArgs) objectRef2.element).setArchiveDesc(this.message.getValue());
        ((ArchiveArgs) objectRef2.element).setCoverLocation(((ArchiveData) objectRef.element).getCoverLocation());
        AccountBean accountBean = (AccountBean) objectRef3.element;
        Intrinsics.checkNotNullExpressionValue(accountBean, "accountBean");
        ((ArchiveArgs) objectRef2.element).setUid(accountBean.getUid());
        requestModel.setArgs((ArchiveArgs) objectRef2.element);
        Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
        objectRef4.element = k.a(context);
        kotlinx.coroutines.k.f(v1.f72528a, g1.c(), null, new ModUploadArchiveViewModle$updateArchiveMessage$1(this, context, objectRef3, requestModel, objectRef4, objectRef2, objectRef, null), 2, null);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.join.kotlin.ui.cloudarchive.data.ArchiveData, T] */
    public final void uploadArchive(@NotNull final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ArchiveData value = this.archive.getValue();
        objectRef.element = value;
        if (value != null) {
            new Thread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    File startZipFile;
                    String compressImage;
                    ModUploadArchiveViewModle modUploadArchiveViewModle = ModUploadArchiveViewModle.this;
                    Context context2 = context;
                    String archiveLocation = ((ArchiveData) objectRef.element).getArchiveLocation();
                    Intrinsics.checkNotNullExpressionValue(archiveLocation, "archive.archiveLocation");
                    startZipFile = modUploadArchiveViewModle.startZipFile(context2, archiveLocation, (ArchiveData) objectRef.element);
                    String value2 = ModUploadArchiveViewModle.this.getImagepath().getValue();
                    if (value2 != null) {
                        StringsKt__StringsJVMKt.replace$default(value2, "file://", "", false, 4, (Object) null);
                    }
                    compressImage = ModUploadArchiveViewModle.this.compressImage(context);
                    String absolutePath = startZipFile != null ? startZipFile.getAbsolutePath() : null;
                    AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
                    Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
                    AccountBean accountData = instance_.getAccountData();
                    h b4 = h.b();
                    Intrinsics.checkNotNullExpressionValue(accountData, "accountData");
                    String h4 = b4.h(absolutePath, String.valueOf(accountData.getUid()), accountData.getToken(), ((ArchiveData) objectRef.element).getGame_id(), ModUploadArchiveViewModle.this.getMessage().getValue(), "340", new File(((ArchiveData) objectRef.element).getArchiveLocalPath()).getName(), compressImage, new g() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1.1
                        @Override // com.join.android.app.common.http.g
                        public final void onRequestProgress(long j4, long j5, boolean z3, String str) {
                            ModUploadArchiveViewModle.this.getUploadProgress().postValue(Integer.valueOf((int) ((j4 * 100) / j5)));
                        }
                    });
                    File file = new File(compressImage);
                    if (file.exists()) {
                        UtilsMy.delete(file);
                    }
                    if (!(h4 == null || h4.length() == 0)) {
                        ResponseModel<?> responseModel = (ResponseModel) JsonMapper.getInstance().fromJson(h4, ResponseModel.class);
                        if (responseModel != null) {
                            ModUploadArchiveViewModle.this.getResponseReult().postValue(responseModel);
                            return;
                        }
                        ResponseModel<?> responseModel2 = new ResponseModel<>();
                        responseModel2.setCode(500);
                        responseModel2.setMessage("异常");
                        ModUploadArchiveViewModle.this.getResponseReult().postValue(responseModel2);
                        return;
                    }
                    ResponseModel<?> responseModel3 = new ResponseModel<>();
                    responseModel3.setCode(500);
                    responseModel3.setMessage("异常");
                    ModUploadArchiveViewModle.this.getResponseReult().postValue(responseModel3);
                }
            }).start();
        }
    }
}

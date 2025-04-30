package com.join.kotlin.domain.common;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.a;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.enums.ConstantIntEnum;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.lingala.zip4j.util.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppListItemShowBean.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0013\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u00107\u001a\u00020\n¢\u0006\u0004\b8\u00109J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0018\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\f\u001a\u0004\b\u0019\u0010\u000e\"\u0004\b\u001a\u0010\u0010R\"\u0010\u001b\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0013\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R\"\u0010\u001e\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0013\u001a\u0004\b\u001f\u0010\u0015\"\u0004\b \u0010\u0017R\"\u0010!\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\f\u001a\u0004\b\"\u0010\u000e\"\u0004\b#\u0010\u0010R\"\u0010$\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\f\u001a\u0004\b%\u0010\u000e\"\u0004\b&\u0010\u0010R\"\u0010(\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010)\u001a\u0004\b/\u0010+\"\u0004\b0\u0010-R\"\u00101\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010\f\u001a\u0004\b2\u0010\u000e\"\u0004\b3\u0010\u0010R\"\u00104\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u0010\f\u001a\u0004\b5\u0010\u000e\"\u0004\b6\u0010\u0010¨\u0006:"}, d2 = {"Lcom/join/kotlin/domain/common/AppListItemShowBean;", "", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTask", "", "updateProgress", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "data", "updateItemNormal", "updateItemProgress", "", "progressZipShow", "Z", "getProgressZipShow", "()Z", "setProgressZipShow", "(Z)V", "", "zipProgress", "I", "getZipProgress", "()I", "setZipProgress", "(I)V", "giftShow", "getGiftShow", "setGiftShow", "downloadStatus", "getDownloadStatus", "setDownloadStatus", "downloadProgress", "getDownloadProgress", "setDownloadProgress", "progresShow", "getProgresShow", "setProgresShow", "describeShow", "getDescribeShow", "setDescribeShow", "", "appSizeText", "Ljava/lang/String;", "getAppSizeText", "()Ljava/lang/String;", "setAppSizeText", "(Ljava/lang/String;)V", "lodingInfo", "getLodingInfo", "setLodingInfo", "tagshow", "getTagshow", "setTagshow", "downMessageShow", "getDownMessageShow", "setDownMessageShow", "isUpdateProgress", "<init>", "(Lcom/join/mgps/business/CollectionBeanSubBusiness;Z)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class AppListItemShowBean {
    @NotNull
    private String appSizeText;
    private boolean describeShow;
    private boolean downMessageShow;
    private int downloadProgress;
    private int downloadStatus;
    private boolean giftShow;
    @NotNull
    private String lodingInfo;
    private boolean progresShow;
    private boolean progressZipShow;
    private boolean tagshow;
    private int zipProgress;

    public AppListItemShowBean(@NotNull CollectionBeanSubBusiness data, boolean z3) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.tagshow = true;
        this.describeShow = true;
        this.appSizeText = "";
        this.lodingInfo = "";
        this.giftShow = data.getGift_package_switch() == 1;
        DownloadTask downloadTask = data.getDownloadTask();
        if (downloadTask != null) {
            this.downloadStatus = downloadTask.getStatus();
        }
        if (z3) {
            if (downloadTask == null) {
                return;
            }
            int status = downloadTask.getStatus();
            if (status == 2) {
                this.tagshow = false;
                this.describeShow = false;
                this.progresShow = true;
                this.progressZipShow = false;
                this.downMessageShow = true;
            } else if (status == 12) {
                this.tagshow = false;
                this.describeShow = false;
                this.progresShow = false;
                this.progressZipShow = true;
                this.downMessageShow = true;
            }
            updateProgress(downloadTask);
        } else if (Intrinsics.areEqual(data.getPlugin_num(), String.valueOf(ConstantIntEnum.H5.value()))) {
            this.tagshow = false;
            this.progresShow = false;
            this.progressZipShow = false;
            this.describeShow = true;
        } else if (downloadTask == null) {
            this.tagshow = true;
            this.progresShow = false;
            this.progressZipShow = false;
        } else {
            String size = data.getSize();
            Intrinsics.checkNotNullExpressionValue(size, "data.getSize()");
            double parseDouble = Double.parseDouble(size);
            double d4 = 1024;
            Double.isNaN(d4);
            Double.isNaN(d4);
            long j4 = (long) (parseDouble * d4 * d4);
            int status2 = downloadTask.getStatus();
            if (status2 != 0) {
                if (status2 != 42) {
                    if (status2 != 48) {
                        if (status2 != 2) {
                            if (status2 != 3) {
                                if (status2 != 5) {
                                    if (status2 != 6) {
                                        if (status2 != 7) {
                                            switch (status2) {
                                                case 9:
                                                case 11:
                                                    break;
                                                case 10:
                                                    this.tagshow = false;
                                                    this.describeShow = false;
                                                    this.progresShow = true;
                                                    this.progressZipShow = false;
                                                    this.downMessageShow = true;
                                                    this.appSizeText = UtilsMy.a(downloadTask.getCurrentSize()) + '/' + UtilsMy.a(j4);
                                                    this.downloadProgress = (int) downloadTask.getProgress();
                                                    this.lodingInfo = "等待中";
                                                    return;
                                                case 12:
                                                    this.tagshow = false;
                                                    this.describeShow = false;
                                                    this.progresShow = false;
                                                    this.progressZipShow = true;
                                                    this.downMessageShow = true;
                                                    this.appSizeText = UtilsMy.a(j4) + '/' + UtilsMy.a(j4);
                                                    this.zipProgress = (int) downloadTask.getProgress();
                                                    this.lodingInfo = "解压中";
                                                    return;
                                                case 13:
                                                    this.tagshow = false;
                                                    this.describeShow = false;
                                                    this.progresShow = false;
                                                    this.progressZipShow = true;
                                                    this.downMessageShow = true;
                                                    this.appSizeText = UtilsMy.a(j4) + '/' + UtilsMy.a(j4);
                                                    this.zipProgress = (int) downloadTask.getProgress();
                                                    this.lodingInfo = "点击重新解压";
                                                    return;
                                                default:
                                                    return;
                                            }
                                        }
                                    }
                                }
                            }
                            this.tagshow = false;
                            this.describeShow = false;
                            this.progresShow = true;
                            this.progressZipShow = false;
                            this.downMessageShow = true;
                            try {
                                if (downloadTask.getSize() == 0) {
                                    this.appSizeText = UtilsMy.a(downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(j4);
                                } else {
                                    this.appSizeText = UtilsMy.a(downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(j4);
                                }
                                this.downloadProgress = (int) downloadTask.getProgress();
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                            this.lodingInfo = "暂停中";
                            return;
                        }
                        this.tagshow = false;
                        this.describeShow = false;
                        this.progresShow = true;
                        this.progressZipShow = false;
                        this.downMessageShow = true;
                        this.appSizeText = UtilsMy.a(downloadTask.getCurrentSize()) + '/' + UtilsMy.a(j4);
                        this.downloadProgress = (int) downloadTask.getProgress();
                        this.lodingInfo = downloadTask.getSpeed() + "/S";
                        return;
                    }
                }
                this.tagshow = true;
                this.describeShow = true;
                this.progresShow = false;
                this.progressZipShow = false;
                this.downMessageShow = false;
                return;
            }
            this.tagshow = true;
            this.describeShow = true;
            this.progresShow = false;
            this.progressZipShow = false;
            this.downMessageShow = false;
        }
    }

    private final void updateProgress(DownloadTask downloadTask) {
        DownloadTask f4 = a.e().f(downloadTask.getCrc_link_type_val());
        if (f4 != null) {
            String showSize = downloadTask.getShowSize();
            Intrinsics.checkNotNullExpressionValue(showSize, "downloadTask.showSize");
            double parseDouble = Double.parseDouble(showSize);
            double d4 = 1024;
            Double.isNaN(d4);
            Double.isNaN(d4);
            this.appSizeText = UtilsMy.a(f4.getCurrentSize()) + '/' + UtilsMy.a((long) (parseDouble * d4 * d4));
            if (f4.getStatus() == 12) {
                this.zipProgress = (int) f4.getProgress();
            } else {
                this.downloadProgress = (int) f4.getProgress();
            }
            if (f4.getStatus() == 2) {
                this.lodingInfo = f4.getSpeed() + "/S";
            }
        }
    }

    @NotNull
    public final String getAppSizeText() {
        return this.appSizeText;
    }

    public final boolean getDescribeShow() {
        return this.describeShow;
    }

    public final boolean getDownMessageShow() {
        return this.downMessageShow;
    }

    public final int getDownloadProgress() {
        return this.downloadProgress;
    }

    public final int getDownloadStatus() {
        return this.downloadStatus;
    }

    public final boolean getGiftShow() {
        return this.giftShow;
    }

    @NotNull
    public final String getLodingInfo() {
        return this.lodingInfo;
    }

    public final boolean getProgresShow() {
        return this.progresShow;
    }

    public final boolean getProgressZipShow() {
        return this.progressZipShow;
    }

    public final boolean getTagshow() {
        return this.tagshow;
    }

    public final int getZipProgress() {
        return this.zipProgress;
    }

    public final void setAppSizeText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.appSizeText = str;
    }

    public final void setDescribeShow(boolean z3) {
        this.describeShow = z3;
    }

    public final void setDownMessageShow(boolean z3) {
        this.downMessageShow = z3;
    }

    public final void setDownloadProgress(int i2) {
        this.downloadProgress = i2;
    }

    public final void setDownloadStatus(int i2) {
        this.downloadStatus = i2;
    }

    public final void setGiftShow(boolean z3) {
        this.giftShow = z3;
    }

    public final void setLodingInfo(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lodingInfo = str;
    }

    public final void setProgresShow(boolean z3) {
        this.progresShow = z3;
    }

    public final void setProgressZipShow(boolean z3) {
        this.progressZipShow = z3;
    }

    public final void setTagshow(boolean z3) {
        this.tagshow = z3;
    }

    public final void setZipProgress(int i2) {
        this.zipProgress = i2;
    }

    public final void updateItemNormal(@NotNull CollectionBeanSubBusiness data) {
        Intrinsics.checkNotNullParameter(data, "data");
        DownloadTask downloadTask = data.getDownloadTask();
        if (downloadTask != null) {
            this.downloadStatus = downloadTask.getStatus();
        }
        if (Intrinsics.areEqual(data.getPlugin_num(), String.valueOf(ConstantIntEnum.H5.value()))) {
            this.tagshow = false;
            this.progresShow = false;
            this.progressZipShow = false;
            this.describeShow = true;
        } else if (downloadTask == null) {
            this.tagshow = true;
            this.progresShow = false;
            this.progressZipShow = false;
        } else {
            String size = data.getSize();
            Intrinsics.checkNotNullExpressionValue(size, "data.getSize()");
            double parseDouble = Double.parseDouble(size);
            double d4 = 1024;
            Double.isNaN(d4);
            Double.isNaN(d4);
            long j4 = (long) (parseDouble * d4 * d4);
            int status = downloadTask.getStatus();
            if (status != 0) {
                if (status != 42) {
                    if (status != 48) {
                        if (status != 2) {
                            if (status != 3) {
                                if (status != 5) {
                                    if (status != 6) {
                                        if (status != 7) {
                                            switch (status) {
                                                case 9:
                                                case 11:
                                                    break;
                                                case 10:
                                                    this.tagshow = false;
                                                    this.describeShow = false;
                                                    this.progresShow = true;
                                                    this.progressZipShow = false;
                                                    this.downMessageShow = true;
                                                    this.appSizeText = UtilsMy.a(downloadTask.getCurrentSize()) + '/' + UtilsMy.a(j4);
                                                    this.downloadProgress = (int) downloadTask.getProgress();
                                                    this.lodingInfo = "等待中";
                                                    return;
                                                case 12:
                                                    this.tagshow = false;
                                                    this.describeShow = false;
                                                    this.progresShow = false;
                                                    this.progressZipShow = true;
                                                    this.downMessageShow = true;
                                                    this.appSizeText = UtilsMy.a(j4) + '/' + UtilsMy.a(j4);
                                                    this.zipProgress = (int) downloadTask.getProgress();
                                                    this.lodingInfo = "解压中";
                                                    return;
                                                case 13:
                                                    this.tagshow = false;
                                                    this.describeShow = false;
                                                    this.progresShow = false;
                                                    this.progressZipShow = true;
                                                    this.downMessageShow = true;
                                                    this.appSizeText = UtilsMy.a(j4) + '/' + UtilsMy.a(j4);
                                                    this.zipProgress = (int) downloadTask.getProgress();
                                                    this.lodingInfo = "点击重新解压";
                                                    return;
                                                default:
                                                    return;
                                            }
                                        }
                                    }
                                }
                            }
                            this.tagshow = false;
                            this.describeShow = false;
                            this.progresShow = true;
                            this.progressZipShow = false;
                            this.downMessageShow = true;
                            try {
                                if (downloadTask.getSize() == 0) {
                                    this.appSizeText = UtilsMy.a(downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(j4);
                                } else {
                                    this.appSizeText = UtilsMy.a(downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(j4);
                                }
                                this.downloadProgress = (int) downloadTask.getProgress();
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                            this.lodingInfo = "暂停中";
                            return;
                        }
                        this.tagshow = false;
                        this.describeShow = false;
                        this.progresShow = true;
                        this.progressZipShow = false;
                        this.downMessageShow = true;
                        this.appSizeText = UtilsMy.a(downloadTask.getCurrentSize()) + '/' + UtilsMy.a(j4);
                        this.downloadProgress = (int) downloadTask.getProgress();
                        this.lodingInfo = downloadTask.getSpeed() + "/S";
                        return;
                    }
                }
                this.tagshow = true;
                this.describeShow = true;
                this.progresShow = false;
                this.progressZipShow = false;
                this.downMessageShow = false;
                return;
            }
            this.tagshow = true;
            this.describeShow = true;
            this.progresShow = false;
            this.progressZipShow = false;
            this.downMessageShow = false;
        }
    }

    public final void updateItemProgress(@NotNull DownloadTask downloadTask) {
        Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
        int status = downloadTask.getStatus();
        if (status == 2) {
            this.tagshow = false;
            this.describeShow = false;
            this.progresShow = true;
            this.progressZipShow = false;
            this.downMessageShow = true;
        } else if (status == 12) {
            this.tagshow = false;
            this.describeShow = false;
            this.progresShow = false;
            this.progressZipShow = true;
            this.downMessageShow = true;
        }
        updateProgress(downloadTask);
    }
}

.class Lcom/join/mgps/Util/UtilsMy$a;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->R1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public onSuccess(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$a;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    return-void
.end method

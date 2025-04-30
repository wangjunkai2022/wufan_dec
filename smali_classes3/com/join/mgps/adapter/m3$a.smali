.class Lcom/join/mgps/adapter/m3$a;
.super Ljava/lang/Object;
.source "MyGameAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/m3;->q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/adapter/m3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m3$a;->b:Lcom/join/mgps/adapter/m3;

    iput-object p2, p0, Lcom/join/mgps/adapter/m3$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v1

    const-string v2, "\u5df2\u63a5\u5165\u4e13\u5c5e\u901a\u9053\uff0c\u52a0\u901f\u6210\u529f\uff01"

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 8
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->r3(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->O1(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->CenterAccelerationDownload:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m3$a;->a(Landroid/content/Context;)V

    return-void
.end method

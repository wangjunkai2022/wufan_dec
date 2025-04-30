.class Lcom/join/mgps/adapter/r$c;
.super Ljava/lang/Object;
.source "DownloadedCenterEmulatorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/r;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/adapter/r;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r;ILcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r$c;->c:Lcom/join/mgps/adapter/r;

    iput p2, p0, Lcom/join/mgps/adapter/r$c;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/r$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r$c;->c:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->d:Lcom/join/mgps/adapter/r$k;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lcom/join/mgps/adapter/r$c;->a:I

    iget-object v1, p0, Lcom/join/mgps/adapter/r$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/r$k;->D(ILcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/r$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/adapter/r$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/r$c;->c:Lcom/join/mgps/adapter/r;

    iget-object v0, v0, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/adapter/r$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivityBYDownloadTAsk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :goto_0
    return-void
.end method

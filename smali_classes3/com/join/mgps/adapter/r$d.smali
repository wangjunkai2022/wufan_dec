.class Lcom/join/mgps/adapter/r$d;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/r$d;->c:Lcom/join/mgps/adapter/r;

    iput p2, p0, Lcom/join/mgps/adapter/r$d;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/r$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r$d;->c:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->d:Lcom/join/mgps/adapter/r$k;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lcom/join/mgps/adapter/r$d;->a:I

    iget-object v1, p0, Lcom/join/mgps/adapter/r$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/r$k;->D(ILcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    return-void
.end method

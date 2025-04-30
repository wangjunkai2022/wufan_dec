.class Lcom/join/mgps/adapter/p$d0;
.super Ljava/lang/Object;
.source "DownloadCenterAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/p;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/adapter/p$o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/adapter/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p$d0;->b:Lcom/join/mgps/adapter/p;

    iput-object p2, p0, Lcom/join/mgps/adapter/p$d0;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/p$d0;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

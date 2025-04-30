.class Lcom/join/mgps/fragment/h0$d;
.super Ljava/lang/Object;
.source "DownloadCenterFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/h0;->y0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/h0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/h0;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/h0$d;->c:Lcom/join/mgps/fragment/h0;

    iput-object p2, p0, Lcom/join/mgps/fragment/h0$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput p3, p0, Lcom/join/mgps/fragment/h0$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/h0$d;->c:Lcom/join/mgps/fragment/h0;

    iget-object v1, p0, Lcom/join/mgps/fragment/h0$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget v2, p0, Lcom/join/mgps/fragment/h0$d;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/h0;->I0(Lcom/join/mgps/fragment/h0;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.class Lcom/join/mgps/fragment/q2$l;
.super Ljava/lang/Object;
.source "GameOlGiftPackageFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/q2;->f0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GiftPackageDataOperationBean;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/fragment/q2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/q2;Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/q2$l;->d:Lcom/join/mgps/fragment/q2;

    iput-object p2, p0, Lcom/join/mgps/fragment/q2$l;->a:Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    iput-object p3, p0, Lcom/join/mgps/fragment/q2$l;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput p4, p0, Lcom/join/mgps/fragment/q2$l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q2$l;->d:Lcom/join/mgps/fragment/q2;

    iget-object v1, p0, Lcom/join/mgps/fragment/q2$l;->a:Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    iget-object v2, p0, Lcom/join/mgps/fragment/q2$l;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget v3, p0, Lcom/join/mgps/fragment/q2$l;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/fragment/q2;->n0(Lcom/join/mgps/fragment/q2;Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

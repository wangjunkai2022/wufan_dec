.class Lcom/join/mgps/adapter/r$a;
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
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/adapter/r;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r$a;->b:Lcom/join/mgps/adapter/r;

    iput-object p2, p0, Lcom/join/mgps/adapter/r$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r$a;->b:Lcom/join/mgps/adapter/r;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/r;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

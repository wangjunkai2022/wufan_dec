.class public final synthetic Lcom/join/mgps/adapter/g3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/m3;

.field public final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/g3;->a:Lcom/join/mgps/adapter/m3;

    iput-object p2, p0, Lcom/join/mgps/adapter/g3;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/adapter/g3;->a:Lcom/join/mgps/adapter/m3;

    iget-object v1, p0, Lcom/join/mgps/adapter/g3;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/m3;->h(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method

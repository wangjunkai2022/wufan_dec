.class public final synthetic Lcom/join/mgps/adapter/i3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/m3;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field public final synthetic d:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/m3;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/i3;->a:Lcom/join/mgps/adapter/m3;

    iput-boolean p2, p0, Lcom/join/mgps/adapter/i3;->b:Z

    iput-object p3, p0, Lcom/join/mgps/adapter/i3;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p4, p0, Lcom/join/mgps/adapter/i3;->d:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/join/mgps/adapter/i3;->a:Lcom/join/mgps/adapter/m3;

    iget-boolean v1, p0, Lcom/join/mgps/adapter/i3;->b:Z

    iget-object v2, p0, Lcom/join/mgps/adapter/i3;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/mgps/adapter/i3;->d:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/join/mgps/adapter/m3;->j(Lcom/join/mgps/adapter/m3;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

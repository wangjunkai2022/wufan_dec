.class Lcom/ss/android/downloadlib/b$2;
.super Ljava/lang/Object;
.source "AdWebViewDownloadManagerImpl.java"

# interfaces
.implements Lcom/ss/android/download/api/model/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b;->b(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/download/api/download/DownloadModel;

.field final synthetic b:Lcom/ss/android/download/api/download/DownloadEventConfig;

.field final synthetic c:Lcom/ss/android/download/api/download/DownloadController;

.field final synthetic d:Lcom/ss/android/downloadlib/b;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/b;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/b$2;->d:Lcom/ss/android/downloadlib/b;

    iput-object p2, p0, Lcom/ss/android/downloadlib/b$2;->a:Lcom/ss/android/download/api/download/DownloadModel;

    iput-object p3, p0, Lcom/ss/android/downloadlib/b$2;->b:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iput-object p4, p0, Lcom/ss/android/downloadlib/b$2;->c:Lcom/ss/android/download/api/download/DownloadController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/b$2;->d:Lcom/ss/android/downloadlib/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/b;->a(Lcom/ss/android/downloadlib/b;)Lcom/ss/android/downloadlib/g;

    move-result-object v1

    iget-object v0, p0, Lcom/ss/android/downloadlib/b$2;->a:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ss/android/downloadlib/b$2;->a:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    iget-object v6, p0, Lcom/ss/android/downloadlib/b$2;->b:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v7, p0, Lcom/ss/android/downloadlib/b$2;->c:Lcom/ss/android/download/api/download/DownloadController;

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/b$2;->a:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v2, p0, Lcom/ss/android/downloadlib/b$2;->b:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v3, p0, Lcom/ss/android/downloadlib/b$2;->c:Lcom/ss/android/download/api/download/DownloadController;

    const-string v4, "landing_download_dialog_confirm"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public b(Landroid/content/DialogInterface;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/b$2;->a:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v2, p0, Lcom/ss/android/downloadlib/b$2;->b:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v3, p0, Lcom/ss/android/downloadlib/b$2;->c:Lcom/ss/android/download/api/download/DownloadController;

    const-string v4, "landing_download_dialog_cancel"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public c(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/b$2;->a:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v1, p0, Lcom/ss/android/downloadlib/b$2;->b:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v2, p0, Lcom/ss/android/downloadlib/b$2;->c:Lcom/ss/android/download/api/download/DownloadController;

    const-string v3, "landing_download_dialog_cancel"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    return-void
.end method

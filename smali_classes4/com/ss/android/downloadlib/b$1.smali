.class Lcom/ss/android/downloadlib/b$1;
.super Ljava/lang/Object;
.source "AdWebViewDownloadManagerImpl.java"

# interfaces
.implements Lcom/ss/android/downloadlib/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/android/downloadlib/e/b$a<",
        "Landroid/app/Dialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/ss/android/download/api/download/DownloadModel;

.field final synthetic e:Lcom/ss/android/download/api/download/DownloadEventConfig;

.field final synthetic f:Lcom/ss/android/download/api/download/DownloadController;

.field final synthetic g:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

.field final synthetic h:I

.field final synthetic i:Z

.field final synthetic j:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

.field final synthetic k:Lcom/ss/android/downloadlib/b;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/b;Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/b$1;->k:Lcom/ss/android/downloadlib/b;

    iput-object p2, p0, Lcom/ss/android/downloadlib/b$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ss/android/downloadlib/b$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ss/android/downloadlib/b$1;->c:Z

    iput-object p5, p0, Lcom/ss/android/downloadlib/b$1;->d:Lcom/ss/android/download/api/download/DownloadModel;

    iput-object p6, p0, Lcom/ss/android/downloadlib/b$1;->e:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iput-object p7, p0, Lcom/ss/android/downloadlib/b$1;->f:Lcom/ss/android/download/api/download/DownloadController;

    iput-object p8, p0, Lcom/ss/android/downloadlib/b$1;->g:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    iput p9, p0, Lcom/ss/android/downloadlib/b$1;->h:I

    iput-boolean p10, p0, Lcom/ss/android/downloadlib/b$1;->i:Z

    iput-object p11, p0, Lcom/ss/android/downloadlib/b$1;->j:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/b$1;->k:Lcom/ss/android/downloadlib/b;

    iget-object v1, p0, Lcom/ss/android/downloadlib/b$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ss/android/downloadlib/b$1;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ss/android/downloadlib/b$1;->c:Z

    iget-object v4, p0, Lcom/ss/android/downloadlib/b$1;->d:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v5, p0, Lcom/ss/android/downloadlib/b$1;->e:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v6, p0, Lcom/ss/android/downloadlib/b$1;->f:Lcom/ss/android/download/api/download/DownloadController;

    iget-object v7, p0, Lcom/ss/android/downloadlib/b$1;->g:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    iget v8, p0, Lcom/ss/android/downloadlib/b$1;->h:I

    iget-boolean v9, p0, Lcom/ss/android/downloadlib/b$1;->i:Z

    iget-object v10, p0, Lcom/ss/android/downloadlib/b$1;->j:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-virtual/range {v0 .. v10}, Lcom/ss/android/downloadlib/b;->b(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/b$1;->a()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

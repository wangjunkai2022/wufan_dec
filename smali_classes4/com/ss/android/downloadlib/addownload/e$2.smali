.class Lcom/ss/android/downloadlib/addownload/e$2;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/e;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/e;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$2;->c:Lcom/ss/android/downloadlib/addownload/e;

    iput p2, p0, Lcom/ss/android/downloadlib/addownload/e$2;->a:I

    iput p3, p0, Lcom/ss/android/downloadlib/addownload/e$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$2;->c:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/e;->c(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/downloadlib/addownload/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$2;->c:Lcom/ss/android/downloadlib/addownload/e;

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/e$2;->a:I

    iget v2, p0, Lcom/ss/android/downloadlib/addownload/e$2;->b:I

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/e;->d(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadlib/addownload/e;IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

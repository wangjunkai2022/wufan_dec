.class final Lcom/ss/android/socialbase/downloader/i/g$6;
.super Lcom/ss/android/socialbase/downloader/depend/h$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;)Lcom/ss/android/socialbase/downloader/depend/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/g$6;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g$6;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;->intercepte()Z

    move-result v0

    return v0
.end method

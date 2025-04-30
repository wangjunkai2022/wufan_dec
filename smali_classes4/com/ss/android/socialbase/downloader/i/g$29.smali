.class final Lcom/ss/android/socialbase/downloader/i/g$29;
.super Lcom/ss/android/socialbase/downloader/depend/g$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/downloader/depend/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/g$29;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g$29;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;->getUriForFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

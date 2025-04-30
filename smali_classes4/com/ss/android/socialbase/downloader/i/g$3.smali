.class final Lcom/ss/android/socialbase/downloader/i/g$3;
.super Lcom/ss/android/socialbase/downloader/depend/f$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/depend/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/n;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/g$3;->a:Lcom/ss/android/socialbase/downloader/depend/n;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g$3;->a:Lcom/ss/android/socialbase/downloader/depend/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/depend/n;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    return-void
.end method

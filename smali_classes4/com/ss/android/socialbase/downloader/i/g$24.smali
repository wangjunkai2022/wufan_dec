.class final Lcom/ss/android/socialbase/downloader/i/g$24;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/g;)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/g;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/g$24;->a:Lcom/ss/android/socialbase/downloader/depend/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUriForFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g$24;->a:Lcom/ss/android/socialbase/downloader/depend/g;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

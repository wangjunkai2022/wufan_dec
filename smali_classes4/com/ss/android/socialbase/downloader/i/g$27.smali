.class final Lcom/ss/android/socialbase/downloader/i/g$27;
.super Lcom/ss/android/socialbase/downloader/depend/ah$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/downloader/s;)Lcom/ss/android/socialbase/downloader/depend/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/s;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/g$27;->a:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/ah$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g$27;->a:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(II)J

    move-result-wide p1

    return-wide p1
.end method

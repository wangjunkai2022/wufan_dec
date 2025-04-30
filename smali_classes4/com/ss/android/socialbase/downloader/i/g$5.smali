.class final Lcom/ss/android/socialbase/downloader/i/g$5;
.super Lcom/ss/android/socialbase/downloader/depend/e$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/downloader/h;)Lcom/ss/android/socialbase/downloader/depend/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/h;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/g$5;->a:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g$5;->a:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(J)I

    move-result p1

    return p1
.end method

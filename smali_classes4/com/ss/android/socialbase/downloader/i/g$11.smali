.class final Lcom/ss/android/socialbase/downloader/i/g$11;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/e;)Lcom/ss/android/socialbase/downloader/downloader/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/g$11;->a:Lcom/ss/android/socialbase/downloader/depend/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g$11;->a:Lcom/ss/android/socialbase/downloader/depend/e;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/e;->a(J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

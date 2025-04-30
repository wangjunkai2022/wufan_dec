.class Lcom/ss/android/socialbase/downloader/impls/o$1;
.super Ljava/lang/Object;
.source "IndependentProcessDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/o;->a(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/impls/o;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/o$1;->a:Lcom/ss/android/socialbase/downloader/impls/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->pause(I)V

    const/4 p2, 0x0

    .line 2
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->i(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 4
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(ILjava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->cancel(I)V

    :cond_1
    :goto_0
    return-void
.end method

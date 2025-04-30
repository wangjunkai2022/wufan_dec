.class Lcom/ss/android/socialbase/downloader/b/f$1;
.super Ljava/lang/Object;
.source "SqlDownloadCacheAidlWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/b/f;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f$1;->a:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f$1;->a:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/b/f;->a(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/downloader/c$a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f$1;->a:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/b/f;->a(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/downloader/c$a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/c$a$a;->a()V

    :cond_0
    return-void
.end method

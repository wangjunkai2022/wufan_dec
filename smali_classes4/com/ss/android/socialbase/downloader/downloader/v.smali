.class Lcom/ss/android/socialbase/downloader/downloader/v;
.super Ljava/lang/Object;
.source "MultiProcCreater.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/c$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/downloader/o;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/n;-><init>()V

    return-object v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/c$a$a;)Lcom/ss/android/socialbase/downloader/downloader/t;
    .locals 1

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/f;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/b/f;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/b/f;->a(Lcom/ss/android/socialbase/downloader/downloader/c$a$a;)V

    return-object v0
.end method

.method public b()Lcom/ss/android/socialbase/downloader/downloader/m;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/o;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/o;-><init>()V

    return-object v0
.end method

.class Lcom/ss/android/downloadlib/b/e$1;
.super Ljava/lang/Object;
.source "AppLinkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/e;->a(Lcom/ss/android/downloadlib/b/d;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/ss/android/downloadlib/b/d;

.field final synthetic c:Lcom/ss/android/downloadlib/b/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/b/e;JLcom/ss/android/downloadlib/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/e$1;->c:Lcom/ss/android/downloadlib/b/e;

    iput-wide p2, p0, Lcom/ss/android/downloadlib/b/e$1;->a:J

    iput-object p4, p0, Lcom/ss/android/downloadlib/b/e$1;->b:Lcom/ss/android/downloadlib/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/b/e$1;->c:Lcom/ss/android/downloadlib/b/e;

    invoke-static {v2}, Lcom/ss/android/downloadlib/b/e;->a(Lcom/ss/android/downloadlib/b/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/ss/android/downloadlib/b/e$1;->a:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/e$1;->b:Lcom/ss/android/downloadlib/b/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/d;->a(Z)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/e$1;->b:Lcom/ss/android/downloadlib/b/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/d;->a(Z)V

    :goto_1
    return-void
.end method

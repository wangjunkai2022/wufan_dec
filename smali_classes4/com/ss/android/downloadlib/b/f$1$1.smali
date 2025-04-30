.class Lcom/ss/android/downloadlib/b/f$1$1;
.super Ljava/lang/Object;
.source "AppLinkOptimiseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/f$1;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/b/f$1;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/b/f$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/api/a/b;

    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/g/l;->c(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v1, v1, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/api/a/b;

    invoke-static {v1}, Lcom/ss/android/downloadlib/b/f;->e(Lcom/ss/android/downloadad/api/a/b;)J

    move-result-wide v1

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-wide v5, v0, Lcom/ss/android/downloadlib/b/f$1;->b:J

    sub-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-ltz v0, :cond_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/api/a/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/b/f;->f(Lcom/ss/android/downloadad/api/a/b;)J

    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-wide v5, v4, Lcom/ss/android/downloadlib/b/f$1;->b:J

    sub-long/2addr v2, v5

    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    .line 6
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v1, v1, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/api/a/b;

    const-string v2, "deeplink_delay_timeout"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, v4, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/api/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->l(Z)V

    .line 8
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v2, v2, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/api/a/b;

    const-string v3, "deeplink_delay_invoke"

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    .line 9
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/b/f$1;->c:Lcom/ss/android/downloadlib/b/h;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/h;->a(Z)V

    .line 10
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/api/a/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/b/f;->g(Lcom/ss/android/downloadad/api/a/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/b/f;->a(Lcom/ss/android/downloadad/api/a/b;I)V

    :cond_2
    return-void
.end method

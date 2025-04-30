.class Lcom/ss/android/downloadlib/b/b$1;
.super Ljava/lang/Object;
.source "AppInstallFinishInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/b;->a(Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/b/g;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/api/a/b;

.field final synthetic b:Lcom/ss/android/downloadlib/b/g;

.field final synthetic c:Lcom/ss/android/downloadlib/b/b;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/b/b;Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/b/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/b$1;->c:Lcom/ss/android/downloadlib/b/b;

    iput-object p2, p0, Lcom/ss/android/downloadlib/b/b$1;->a:Lcom/ss/android/downloadad/api/a/b;

    iput-object p3, p0, Lcom/ss/android/downloadlib/b/b$1;->b:Lcom/ss/android/downloadlib/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b$1;->a:Lcom/ss/android/downloadad/api/a/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/b/i;->a(Lcom/ss/android/downloadad/api/a/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b$1;->b:Lcom/ss/android/downloadlib/b/g;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/g;->a(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b$1;->a:Lcom/ss/android/downloadad/api/a/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/b/f;->a(Lcom/ss/android/downloadad/api/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b$1;->b:Lcom/ss/android/downloadlib/b/g;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/g;->a(Z)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b$1;->a:Lcom/ss/android/downloadad/api/a/b;

    new-instance v1, Lcom/ss/android/downloadlib/b/b$1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/b/b$1$1;-><init>(Lcom/ss/android/downloadlib/b/b$1;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/b/f;->a(Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/b/h;)V

    :goto_0
    return-void
.end method

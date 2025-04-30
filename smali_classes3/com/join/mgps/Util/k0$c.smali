.class Lcom/join/mgps/Util/k0$c;
.super Lcom/facebook/datasource/b;
.source "FrescoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/k0;->f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/b<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/join/mgps/Util/k0$f;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/k0$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/join/mgps/Util/k0$c;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/join/mgps/Util/k0$c;->c:Lcom/join/mgps/Util/k0$f;

    invoke-direct {p0}, Lcom/facebook/datasource/b;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/datasource/b;->d(Lcom/facebook/datasource/c;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/k0$c;->c:Lcom/join/mgps/Util/k0$f;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/facebook/datasource/c;->getProgress()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/join/mgps/Util/k0$f;->onProgress(F)V

    :cond_0
    return-void
.end method

.method protected e(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/k0$c;->c:Lcom/join/mgps/Util/k0$f;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/join/mgps/Util/k0$f;->onFail()V

    :cond_0
    return-void
.end method

.method protected f(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/Util/k0$c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/join/mgps/Util/k0$c;->b:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/k0;->e(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/k0$c;->c:Lcom/join/mgps/Util/k0$f;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p1}, Lcom/join/mgps/Util/k0$f;->a(Ljava/io/File;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/Util/k0$c;->c:Lcom/join/mgps/Util/k0$f;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/join/mgps/Util/k0$f;->onFail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

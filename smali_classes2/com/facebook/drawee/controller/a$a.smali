.class Lcom/facebook/drawee/controller/a$a;
.super Lcom/facebook/datasource/b;
.source "AbstractDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/controller/a;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/drawee/controller/a;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/a$a;->c:Lcom/facebook/drawee/controller/a;

    iput-object p2, p0, Lcom/facebook/drawee/controller/a$a;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/facebook/drawee/controller/a$a;->b:Z

    invoke-direct {p0}, Lcom/facebook/datasource/b;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/facebook/datasource/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/c;->c()Z

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/facebook/datasource/c;->getProgress()F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/facebook/drawee/controller/a$a;->c:Lcom/facebook/drawee/controller/a;

    iget-object v3, p0, Lcom/facebook/drawee/controller/a$a;->a:Ljava/lang/String;

    invoke-static {v2, v3, p1, v1, v0}, Lcom/facebook/drawee/controller/a;->k(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Lcom/facebook/datasource/c;FZ)V

    return-void
.end method

.method public e(Lcom/facebook/datasource/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a$a;->c:Lcom/facebook/drawee/controller/a;

    iget-object v1, p0, Lcom/facebook/drawee/controller/a$a;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/facebook/datasource/c;->d()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/drawee/controller/a;->j(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Lcom/facebook/datasource/c;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public f(Lcom/facebook/datasource/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/c;->c()Z

    move-result v5

    .line 2
    invoke-interface {p1}, Lcom/facebook/datasource/c;->f()Z

    move-result v7

    .line 3
    invoke-interface {p1}, Lcom/facebook/datasource/c;->getProgress()F

    move-result v4

    .line 4
    invoke-interface {p1}, Lcom/facebook/datasource/c;->g()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/controller/a$a;->c:Lcom/facebook/drawee/controller/a;

    iget-object v1, p0, Lcom/facebook/drawee/controller/a$a;->a:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/facebook/drawee/controller/a$a;->b:Z

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/facebook/drawee/controller/a;->i(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Lcom/facebook/datasource/c;Ljava/lang/Object;FZZZ)V

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/controller/a$a;->c:Lcom/facebook/drawee/controller/a;

    iget-object v1, p0, Lcom/facebook/drawee/controller/a$a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/drawee/controller/a;->j(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Lcom/facebook/datasource/c;Ljava/lang/Throwable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

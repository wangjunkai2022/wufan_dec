.class Lcom/papa/sim/statistic/o$f;
.super Ljava/lang/Object;
.source "StatCore.java"

# interfaces
.implements Lcom/papa/sim/statistic/http/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/o;->Y(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/papa/sim/statistic/http/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/papa/sim/statistic/o;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/o;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/o$f;->b:Lcom/papa/sim/statistic/o;

    iput-object p2, p0, Lcom/papa/sim/statistic/o$f;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/papa/sim/statistic/o$f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/db/d;

    .line 3
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v3

    const-string v4, ";time="

    const-string v5, "method [onFailure]:send failed. statisticTable.id= "

    if-nez v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/papa/sim/statistic/o$f;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v3, p0, Lcom/papa/sim/statistic/o$f;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object v3

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/papa/sim/statistic/db/b;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/papa/sim/statistic/o$f;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/papa/sim/statistic/o$f;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/db/b;->s(Ljava/util/List;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa/sim/statistic/o$f;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/sim/statistic/db/d;

    .line 2
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/papa/sim/statistic/o$f;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/papa/sim/statistic/o$f;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/db/b;->delete(Lcom/papa/sim/statistic/db/d;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/papa/sim/statistic/o$f;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/papa/sim/statistic/o$f;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/db/b;->e(Lcom/papa/sim/statistic/db/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/o$f;->b(Ljava/lang/String;)V

    return-void
.end method

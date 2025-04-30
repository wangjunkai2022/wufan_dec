.class Lcom/papa/sim/statistic/o$b;
.super Ljava/lang/Object;
.source "StatCore.java"

# interfaces
.implements Lcom/papa/sim/statistic/http/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/o;->s(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)V
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
.field final synthetic a:Lcom/papa/sim/statistic/db/d;

.field final synthetic b:Lcom/papa/sim/statistic/o;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/o;Lcom/papa/sim/statistic/db/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/o$b;->b:Lcom/papa/sim/statistic/o;

    iput-object p2, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    iget-object p1, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result p1

    const-string v0, ";time="

    const-string v1, "method [onFailure]:send failed. statisticTable.id= "

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa/sim/statistic/o$b;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p0, Lcom/papa/sim/statistic/o$b;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/db/b;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/o$b;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Lcom/papa/sim/statistic/o$b;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa/sim/statistic/o$b;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/papa/sim/statistic/o$b;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/db/b;->delete(Lcom/papa/sim/statistic/db/d;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/o$b;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/papa/sim/statistic/o$b;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$b;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/db/b;->e(Lcom/papa/sim/statistic/db/d;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/o$b;->b(Ljava/lang/String;)V

    return-void
.end method

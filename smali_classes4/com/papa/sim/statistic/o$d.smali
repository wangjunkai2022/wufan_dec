.class Lcom/papa/sim/statistic/o$d;
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
        "Lcom/papa/sim/statistic/StatResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/db/d;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/papa/sim/statistic/o;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/o;Lcom/papa/sim/statistic/db/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    iput-object p2, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    iput-object p3, p0, Lcom/papa/sim/statistic/o$d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result p1

    const-string v0, ";time="

    const-string v1, "method [onFailure]:send failed. statisticTable.id= "

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/db/b;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :try_start_1
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/papa/sim/statistic/StatResult;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {v0}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatResult;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ok"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/b;->I(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/b;->A(Ljava/lang/String;)V

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/db/b;->delete(Lcom/papa/sim/statistic/db/d;)V

    goto/16 :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/db/b;->e(Lcom/papa/sim/statistic/db/d;)V

    goto/16 :goto_1

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result p1

    const-string v0, ";time="

    if-nez p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method [onSuccess]:send failed. send to 1.statisticTable.id= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/db/b;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method [onSuccess]:send failed.save it to db .statisticTable.id= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object p1, p0, Lcom/papa/sim/statistic/o$d;->c:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/sim/statistic/o$d;->a:Lcom/papa/sim/statistic/db/d;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/papa/sim/statistic/StatResult;

    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/o$d;->b(Lcom/papa/sim/statistic/StatResult;)V

    return-void
.end method

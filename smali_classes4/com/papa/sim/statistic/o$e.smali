.class Lcom/papa/sim/statistic/o$e;
.super Ljava/lang/Object;
.source "StatCore.java"

# interfaces
.implements Lcom/papa/sim/statistic/http/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/o;->X(Ljava/util/List;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/papa/sim/statistic/o;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/o;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    iput-object p2, p0, Lcom/papa/sim/statistic/o$e;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    iget-object p1, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    .line 3
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/papa/sim/statistic/o$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/db/d;

    .line 5
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, ";time="

    const-string v4, "method [onFailure]:send failed. statisticTable.id= "

    if-nez v2, :cond_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v2}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 8
    :try_start_2
    iget-object v2, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v2}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object v2

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/papa/sim/statistic/db/b;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 9
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v2}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 10
    :try_start_4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_2
    :goto_1
    return-void

    .line 11
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v0}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/b;->s(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_2
    iget-object p1, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/papa/sim/statistic/o;->e(Lcom/papa/sim/statistic/o;Z)Z

    return-void
.end method

.method public b(Lcom/papa/sim/statistic/StatResult;)V
    .locals 6

    if-eqz p1, :cond_8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/papa/sim/statistic/o$e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/db/d;

    const-string v3, "ok"

    .line 4
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatResult;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->d(Lcom/papa/sim/statistic/o;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v3

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/pref/b;->I(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->d(Lcom/papa/sim/statistic/o;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v3

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/pref/b;->A(Ljava/lang/String;)V

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v3

    if-nez v3, :cond_2

    .line 10
    iget-object v3, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    .line 11
    iget-object v3, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/db/b;->delete(Lcom/papa/sim/statistic/db/d;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/db/b;->e(Lcom/papa/sim/statistic/db/d;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ";time="

    if-nez v3, :cond_5

    .line 16
    :try_start_1
    iget-object v3, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method [onSuccess]:send failed. send to 1.statisticTable.id= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v3, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object v3

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/papa/sim/statistic/db/b;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_5
    iget-object v3, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {v3}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method [onSuccess]:send failed.save it to db .statisticTable.id= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void

    .line 20
    :cond_7
    iget-object p1, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/b;->k()Ljava/util/List;

    move-result-object p1

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object p1, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/db/b;->s(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/papa/sim/statistic/o;->e(Lcom/papa/sim/statistic/o;Z)Z

    .line 25
    iget-object p1, p0, Lcom/papa/sim/statistic/o$e;->b:Lcom/papa/sim/statistic/o;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/papa/sim/statistic/StatResult;

    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/o$e;->b(Lcom/papa/sim/statistic/StatResult;)V

    return-void
.end method

.class Lcom/join/mgps/fragment/j2$b;
.super Ljava/lang/Object;
.source "GameFormFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/j2;->V(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/dto/GamelistRankingmainbean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/j2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/j2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/j2$b;->a:Lcom/join/mgps/fragment/j2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GamelistRankingmainbean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/j2$b;->a:Lcom/join/mgps/fragment/j2;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/j2;->showLodingFailed()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GamelistRankingmainbean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GamelistRankingmainbean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    const/4 v1, 0x2

    if-ne p1, v0, :cond_5

    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GamelistRankingmainbean;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamelistRankingmainbean;->getFav_list()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/j2$b;->a:Lcom/join/mgps/fragment/j2;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/join/mgps/fragment/j2;->r:Z

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 10
    new-instance v9, Lcom/join/mgps/fragment/j2$g;

    iget-object v4, p0, Lcom/join/mgps/fragment/j2$b;->a:Lcom/join/mgps/fragment/j2;

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getUid()I

    move-result v8

    move-object v3, v9

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/fragment/j2$g;-><init>(Lcom/join/mgps/fragment/j2;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    .line 11
    iget-object v3, p0, Lcom/join/mgps/fragment/j2$b;->a:Lcom/join/mgps/fragment/j2;

    invoke-static {v3}, Lcom/join/mgps/fragment/j2;->Q(Lcom/join/mgps/fragment/j2;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/join/mgps/fragment/j2$b;->a:Lcom/join/mgps/fragment/j2;

    invoke-static {v3}, Lcom/join/mgps/fragment/j2;->Q(Lcom/join/mgps/fragment/j2;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 12
    iget-object v5, p0, Lcom/join/mgps/fragment/j2$b;->a:Lcom/join/mgps/fragment/j2;

    iget v3, v5, Lcom/join/mgps/fragment/j2;->i:I

    if-ne v3, v1, :cond_1

    .line 13
    new-instance v3, Lcom/join/mgps/fragment/j2$g;

    invoke-static {v5}, Lcom/join/mgps/fragment/j2;->Q(Lcom/join/mgps/fragment/j2;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getUid()I

    move-result v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/join/mgps/fragment/j2$g;-><init>(Lcom/join/mgps/fragment/j2;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/j2$b;->a:Lcom/join/mgps/fragment/j2;

    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/j2;->a0(Ljava/util/List;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/j2$b;->a:Lcom/join/mgps/fragment/j2;

    iget p2, p1, Lcom/join/mgps/fragment/j2;->i:I

    if-ne p2, v1, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/fragment/j2;->O()V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/fragment/j2;->Z()V

    goto :goto_1

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/j2$b;->a:Lcom/join/mgps/fragment/j2;

    iget p2, p1, Lcom/join/mgps/fragment/j2;->i:I

    if-ne p2, v1, :cond_6

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/fragment/j2;->O()V

    goto :goto_1

    .line 20
    :cond_6
    invoke-virtual {p1}, Lcom/join/mgps/fragment/j2;->Z()V

    goto :goto_1

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/j2$b;->a:Lcom/join/mgps/fragment/j2;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/j2;->showLodingFailed()V

    :goto_1
    return-void
.end method

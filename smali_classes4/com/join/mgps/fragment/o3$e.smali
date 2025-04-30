.class Lcom/join/mgps/fragment/o3$e;
.super Ljava/lang/Object;
.source "NewArenaMainFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o3;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResultMainBean<",
        "Lcom/join/mgps/dto/ArenaAdData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$e;->a:Lcom/join/mgps/fragment/o3;

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
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaAdData;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaAdData;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaAdData;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result p2

    const/16 v0, 0x258

    if-ne p2, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArenaAdData;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaAdData;->isL_has_not_read()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$e;->a:Lcom/join/mgps/fragment/o3;

    iget-object p1, p1, Lcom/join/mgps/fragment/o3;->n:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

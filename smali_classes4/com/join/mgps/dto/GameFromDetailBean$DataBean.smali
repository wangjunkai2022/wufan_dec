.class public Lcom/join/mgps/dto/GameFromDetailBean$DataBean;
.super Ljava/lang/Object;
.source "GameFromDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameFromDetailBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;,
        Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;
    }
.end annotation


# instance fields
.field private details:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;

.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean;->details:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;

    return-object v0
.end method

.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public setDetails(Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean;->details:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;

    return-void
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean;->game_list:Ljava/util/List;

    return-void
.end method

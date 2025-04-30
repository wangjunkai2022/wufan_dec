.class public Lcom/join/mgps/dto/ForumResponseGame$DataBean;
.super Ljava/lang/Object;
.source "ForumResponseGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumResponseGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private details:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListItemBean;",
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
.method public getDetails()Lcom/join/mgps/dto/ForumResponseGame$Datadetails;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->details:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    return-object v0
.end method

.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public setDetails(Lcom/join/mgps/dto/ForumResponseGame$Datadetails;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->details:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    return-void
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->game_list:Ljava/util/List;

    return-void
.end method

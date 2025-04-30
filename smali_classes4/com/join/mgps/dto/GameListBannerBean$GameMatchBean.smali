.class public Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;
.super Ljava/lang/Object;
.source "GameListBannerBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameListBannerBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameMatchBean"
.end annotation


# instance fields
.field private join_number:I

.field private match_title:Ljava/lang/String;

.field private nick_name:Ljava/lang/String;

.field final synthetic this$0:Lcom/join/mgps/dto/GameListBannerBean;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dto/GameListBannerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->this$0:Lcom/join/mgps/dto/GameListBannerBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJoin_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->join_number:I

    return v0
.end method

.method public getMatch_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->match_title:Ljava/lang/String;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public setJoin_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->join_number:I

    return-void
.end method

.method public setMatch_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->match_title:Ljava/lang/String;

    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->nick_name:Ljava/lang/String;

    return-void
.end method

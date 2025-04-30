.class public Lcom/join/mgps/dto/SearchResultAdinfo;
.super Lcom/join/mgps/dto/RecommendAdInfoData;
.source "SearchResultAdinfo.java"


# instance fields
.field private game_info:Lcom/join/mgps/dto/CollectionBeanSub;

.field private label:Ljava/lang/String;

.field private position:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/RecommendAdInfoData;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchResultAdinfo;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchResultAdinfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchResultAdinfo;->position:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchResultAdinfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_info(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchResultAdinfo;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchResultAdinfo;->label:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchResultAdinfo;->position:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchResultAdinfo;->title:Ljava/lang/String;

    return-void
.end method

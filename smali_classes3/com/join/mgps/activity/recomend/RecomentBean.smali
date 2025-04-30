.class public Lcom/join/mgps/activity/recomend/RecomentBean;
.super Ljava/lang/Object;
.source "RecomentBean.java"


# instance fields
.field private game_info:Lcom/join/mgps/dto/AppBean;

.field private index:I

.field private is_select:I

.field private source_url:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_info()Lcom/join/mgps/dto/AppBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomentBean;->game_info:Lcom/join/mgps/dto/AppBean;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/recomend/RecomentBean;->index:I

    return v0
.end method

.method public getIs_select()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/recomend/RecomentBean;->is_select:I

    return v0
.end method

.method public getSource_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomentBean;->source_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomentBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_info(Lcom/join/mgps/dto/AppBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomentBean;->game_info:Lcom/join/mgps/dto/AppBean;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/recomend/RecomentBean;->index:I

    return-void
.end method

.method public setIs_select(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/recomend/RecomentBean;->is_select:I

    return-void
.end method

.method public setSource_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomentBean;->source_url:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomentBean;->tag:Ljava/lang/String;

    return-void
.end method

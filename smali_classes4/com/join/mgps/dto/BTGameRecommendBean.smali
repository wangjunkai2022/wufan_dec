.class public Lcom/join/mgps/dto/BTGameRecommendBean;
.super Ljava/lang/Object;
.source "BTGameRecommendBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ico_remote:Ljava/lang/String;

.field private id:I

.field private sp_tpl_two_position:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameRecommendBean;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BTGameRecommendBean;->id:I

    return v0
.end method

.method public getSp_tpl_two_position()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameRecommendBean;->sp_tpl_two_position:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameRecommendBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameRecommendBean;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameRecommendBean;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BTGameRecommendBean;->id:I

    return-void
.end method

.method public setSp_tpl_two_position(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameRecommendBean;->sp_tpl_two_position:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameRecommendBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameRecommendBean;->tpl_type:Ljava/lang/String;

    return-void
.end method

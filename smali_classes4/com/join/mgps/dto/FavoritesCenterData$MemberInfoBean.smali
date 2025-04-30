.class public Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;
.super Ljava/lang/Object;
.source "FavoritesCenterData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/FavoritesCenterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberInfoBean"
.end annotation


# instance fields
.field private nick_name:Ljava/lang/String;

.field private portrait:Ljava/lang/String;

.field private rank:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private svip:I

.field private tag_info:Ljava/lang/String;

.field private uid:I

.field private vip:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNick_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPortrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getSvip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->svip:I

    return v0
.end method

.method public getTag_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->tag_info:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->uid:I

    return v0
.end method

.method public getVip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->vip:I

    return v0
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->nick_name:Ljava/lang/String;

    return-void
.end method

.method public setPortrait(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->portrait:Ljava/lang/String;

    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->rank:Ljava/lang/String;

    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->sex:Ljava/lang/String;

    return-void
.end method

.method public setSvip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->svip:I

    return-void
.end method

.method public setTag_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->tag_info:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->uid:I

    return-void
.end method

.method public setVip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->vip:I

    return-void
.end method

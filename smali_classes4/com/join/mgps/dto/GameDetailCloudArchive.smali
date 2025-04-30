.class public Lcom/join/mgps/dto/GameDetailCloudArchive;
.super Ljava/lang/Object;
.source "GameDetailCloudArchive.java"


# instance fields
.field private auth:Ljava/lang/String;

.field private divider:I

.field private hideTop:I

.field private pic:Ljava/lang/String;

.field private praise_count:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuth()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public getDivider()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->divider:I

    return v0
.end method

.method public getHideTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->hideTop:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->praise_count:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAuth(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->auth:Ljava/lang/String;

    return-void
.end method

.method public setDivider(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->divider:I

    return-void
.end method

.method public setHideTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->hideTop:I

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->pic:Ljava/lang/String;

    return-void
.end method

.method public setPraise_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->praise_count:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetailCloudArchive;->title:Ljava/lang/String;

    return-void
.end method

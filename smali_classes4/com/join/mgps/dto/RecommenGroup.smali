.class public Lcom/join/mgps/dto/RecommenGroup;
.super Ljava/lang/Object;
.source "RecommenGroup.java"


# instance fields
.field private description:Ljava/lang/String;

.field private fid:I

.field private icon_src:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private today_posts:I

.field private user_identify:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommenGroup;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecommenGroup;->fid:I

    return v0
.end method

.method public getIcon_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommenGroup;->icon_src:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommenGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getToday_posts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecommenGroup;->today_posts:I

    return v0
.end method

.method public getUser_identify()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommenGroup;->user_identify:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommenGroup;->description:Ljava/lang/String;

    return-void
.end method

.method public setFid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecommenGroup;->fid:I

    return-void
.end method

.method public setIcon_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommenGroup;->icon_src:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommenGroup;->name:Ljava/lang/String;

    return-void
.end method

.method public setToday_posts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecommenGroup;->today_posts:I

    return-void
.end method

.method public setUser_identify(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommenGroup;->user_identify:Ljava/lang/String;

    return-void
.end method

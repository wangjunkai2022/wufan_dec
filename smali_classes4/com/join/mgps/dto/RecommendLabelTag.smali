.class public Lcom/join/mgps/dto/RecommendLabelTag;
.super Ljava/lang/Object;
.source "RecommendLabelTag.java"


# instance fields
.field private description:Ljava/lang/String;

.field private tag_icon:Ljava/lang/String;

.field private tag_id:I

.field private tag_name:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendLabelTag;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_icon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendLabelTag;->tag_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecommendLabelTag;->tag_id:I

    return v0
.end method

.method public getTag_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendLabelTag;->tag_name:Ljava/lang/String;

    return-object v0
.end method

.method public getToday_posts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecommendLabelTag;->today_posts:I

    return v0
.end method

.method public getUser_identify()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendLabelTag;->user_identify:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendLabelTag;->description:Ljava/lang/String;

    return-void
.end method

.method public setTag_icon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendLabelTag;->tag_icon:Ljava/lang/String;

    return-void
.end method

.method public setTag_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecommendLabelTag;->tag_id:I

    return-void
.end method

.method public setTag_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendLabelTag;->tag_name:Ljava/lang/String;

    return-void
.end method

.method public setToday_posts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecommendLabelTag;->today_posts:I

    return-void
.end method

.method public setUser_identify(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendLabelTag;->user_identify:Ljava/lang/String;

    return-void
.end method

.class public Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomepageRecommendLabel"
.end annotation


# instance fields
.field fenzu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroupClassify;",
            ">;"
        }
    .end annotation
.end field

.field flag:I

.field label_switcher:I

.field private msg:Ljava/lang/String;

.field post_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field recommend_tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field private result:Z

.field tag_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
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
.method public getFenzu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroupClassify;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->fenzu:Ljava/util/List;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->flag:I

    return v0
.end method

.method public getLabel_switcher()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->label_switcher:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPost_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->post_list:Ljava/util/List;

    return-object v0
.end method

.method public getRecommend_tags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->recommend_tags:Ljava/util/List;

    return-object v0
.end method

.method public getTag_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->tag_list:Ljava/util/List;

    return-object v0
.end method

.method public isResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->result:Z

    return v0
.end method

.method public setFenzu(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroupClassify;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->fenzu:Ljava/util/List;

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->flag:I

    return-void
.end method

.method public setLabel_switcher(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->label_switcher:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->msg:Ljava/lang/String;

    return-void
.end method

.method public setPost_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->post_list:Ljava/util/List;

    return-void
.end method

.method public setRecommend_tags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->recommend_tags:Ljava/util/List;

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->result:Z

    return-void
.end method

.method public setTag_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->tag_list:Ljava/util/List;

    return-void
.end method

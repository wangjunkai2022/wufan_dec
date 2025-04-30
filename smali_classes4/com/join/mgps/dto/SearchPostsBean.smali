.class public Lcom/join/mgps/dto/SearchPostsBean;
.super Ljava/lang/Object;
.source "SearchPostsBean.java"


# instance fields
.field private keyword:Ljava/lang/String;

.field private posts_list:Lcom/join/mgps/dto/SearchIntegratedPostBean;

.field private recommend_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;",
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
.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchPostsBean;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchPostsBean;->posts_list:Lcom/join/mgps/dto/SearchIntegratedPostBean;

    return-object v0
.end method

.method public getRecommend_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchPostsBean;->recommend_list:Ljava/util/List;

    return-object v0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchPostsBean;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setPosts_list(Lcom/join/mgps/dto/SearchIntegratedPostBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchPostsBean;->posts_list:Lcom/join/mgps/dto/SearchIntegratedPostBean;

    return-void
.end method

.method public setRecommend_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchPostsBean;->recommend_list:Ljava/util/List;

    return-void
.end method

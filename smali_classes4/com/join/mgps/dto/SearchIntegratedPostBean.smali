.class public Lcom/join/mgps/dto/SearchIntegratedPostBean;
.super Ljava/lang/Object;
.source "SearchIntegratedPostBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;",
            ">;"
        }
    .end annotation
.end field

.field private recommend_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;",
            ">;"
        }
    .end annotation
.end field

.field private top_area:Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean;->list:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean;->recommend_list:Ljava/util/List;

    return-object v0
.end method

.method public getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean;->top_area:Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean;->list:Ljava/util/List;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean;->recommend_list:Ljava/util/List;

    return-void
.end method

.method public setTop_area(Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean;->top_area:Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    return-void
.end method

.class public Lcom/join/mgps/dto/ClassifyCommonDataBean;
.super Ljava/lang/Object;
.source "ClassifyCommonDataBean.java"


# instance fields
.field private first:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private main:Lcom/join/mgps/dto/CommonMainDataBean;

.field private more:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private position:Ljava/lang/String;

.field private sub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SubAppDataBean;",
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

.method public constructor <init>(Lcom/join/mgps/dto/CommonMainDataBean;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonMainDataBean;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SubAppDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->main:Lcom/join/mgps/dto/CommonMainDataBean;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->more:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->position:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->sub:Ljava/util/List;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->first:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFirst()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->first:Ljava/util/List;

    return-object v0
.end method

.method public getMain()Lcom/join/mgps/dto/CommonMainDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->main:Lcom/join/mgps/dto/CommonMainDataBean;

    return-object v0
.end method

.method public getMore()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->more:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getSub()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SubAppDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->sub:Ljava/util/List;

    return-object v0
.end method

.method public setFirst(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->first:Ljava/util/List;

    return-void
.end method

.method public setMain(Lcom/join/mgps/dto/CommonMainDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->main:Lcom/join/mgps/dto/CommonMainDataBean;

    return-void
.end method

.method public setMore(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->more:Ljava/util/List;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->position:Ljava/lang/String;

    return-void
.end method

.method public setSub(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SubAppDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyCommonDataBean;->sub:Ljava/util/List;

    return-void
.end method

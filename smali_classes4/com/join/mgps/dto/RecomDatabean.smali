.class public Lcom/join/mgps/dto/RecomDatabean;
.super Ljava/lang/Object;
.source "RecomDatabean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dataFrom:I

.field private main:Lcom/join/mgps/dto/ModleBean;

.field private more:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppMoreBean;",
            ">;"
        }
    .end annotation
.end field

.field private sub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBeanMain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/join/mgps/dto/ModleBean;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/join/mgps/dto/ModleBean;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBeanMain;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppMoreBean;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/join/mgps/dto/RecomDatabean;->dataFrom:I

    .line 9
    iput-object p2, p0, Lcom/join/mgps/dto/RecomDatabean;->main:Lcom/join/mgps/dto/ModleBean;

    .line 10
    iput-object p3, p0, Lcom/join/mgps/dto/RecomDatabean;->sub:Ljava/util/List;

    .line 11
    iput-object p4, p0, Lcom/join/mgps/dto/RecomDatabean;->more:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getDataFrom()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/RecomDatabean;->dataFrom:I

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/RecomDatabean;->main:Lcom/join/mgps/dto/ModleBean;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/RecomDatabean;->sub:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMore()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dto/RecomDatabean;->more:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDataFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecomDatabean;->dataFrom:I

    return v0
.end method

.method public getMain()Lcom/join/mgps/dto/ModleBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDatabean;->main:Lcom/join/mgps/dto/ModleBean;

    return-object v0
.end method

.method public getMore()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppMoreBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDatabean;->more:Ljava/util/List;

    return-object v0
.end method

.method public getSub()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBeanMain;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDatabean;->sub:Ljava/util/List;

    return-object v0
.end method

.method public setDataFrom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecomDatabean;->dataFrom:I

    return-void
.end method

.method public setMain(Lcom/join/mgps/dto/ModleBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDatabean;->main:Lcom/join/mgps/dto/ModleBean;

    return-void
.end method

.method public setMore(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppMoreBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDatabean;->more:Ljava/util/List;

    return-void
.end method

.method public setSub(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBeanMain;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDatabean;->sub:Ljava/util/List;

    return-void
.end method

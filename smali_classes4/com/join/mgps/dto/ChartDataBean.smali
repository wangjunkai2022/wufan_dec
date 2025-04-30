.class public Lcom/join/mgps/dto/ChartDataBean;
.super Ljava/lang/Object;
.source "ChartDataBean.java"


# instance fields
.field private main:Lcom/join/mgps/dto/ChartMainDataBean;

.field private more:Ljava/util/ArrayList;

.field private position:Ljava/lang/String;

.field private sub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ChartSubDataBean;",
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

.method public constructor <init>(Lcom/join/mgps/dto/ChartMainDataBean;Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ChartMainDataBean;",
            "Ljava/util/ArrayList;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ChartSubDataBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/ChartDataBean;->main:Lcom/join/mgps/dto/ChartMainDataBean;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/ChartDataBean;->more:Ljava/util/ArrayList;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/ChartDataBean;->sub:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/ChartDataBean;->position:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMain()Lcom/join/mgps/dto/ChartMainDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ChartDataBean;->main:Lcom/join/mgps/dto/ChartMainDataBean;

    return-object v0
.end method

.method public getMore()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ChartDataBean;->more:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ChartDataBean;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getSub()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ChartSubDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ChartDataBean;->sub:Ljava/util/List;

    return-object v0
.end method

.method public setMain(Lcom/join/mgps/dto/ChartMainDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ChartDataBean;->main:Lcom/join/mgps/dto/ChartMainDataBean;

    return-void
.end method

.method public setMore(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ChartDataBean;->more:Ljava/util/ArrayList;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ChartDataBean;->position:Ljava/lang/String;

    return-void
.end method

.method public setSub(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ChartSubDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ChartDataBean;->sub:Ljava/util/List;

    return-void
.end method

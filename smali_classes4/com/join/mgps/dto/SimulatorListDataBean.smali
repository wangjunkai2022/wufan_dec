.class public Lcom/join/mgps/dto/SimulatorListDataBean;
.super Ljava/lang/Object;
.source "SimulatorListDataBean.java"


# instance fields
.field private main:Lcom/join/mgps/dto/SimulatorListMainDataBean;

.field private more:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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

.method public constructor <init>(Lcom/join/mgps/dto/SimulatorListMainDataBean;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/SimulatorListMainDataBean;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SubAppDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListDataBean;->main:Lcom/join/mgps/dto/SimulatorListMainDataBean;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/SimulatorListDataBean;->more:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/SimulatorListDataBean;->sub:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMain()Lcom/join/mgps/dto/SimulatorListMainDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListDataBean;->main:Lcom/join/mgps/dto/SimulatorListMainDataBean;

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
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListDataBean;->more:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListDataBean;->sub:Ljava/util/List;

    return-object v0
.end method

.method public setMain(Lcom/join/mgps/dto/SimulatorListMainDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListDataBean;->main:Lcom/join/mgps/dto/SimulatorListMainDataBean;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListDataBean;->more:Ljava/util/List;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListDataBean;->sub:Ljava/util/List;

    return-void
.end method

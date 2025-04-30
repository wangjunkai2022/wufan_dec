.class public Lcom/papa/sim/statistic/AccountResultMainBean;
.super Ljava/lang/Object;
.source "AccountResultMainBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Lcom/papa/sim/statistic/PabiBalanceBean;

.field private error:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/papa/sim/statistic/PabiBalanceBean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/papa/sim/statistic/AccountResultMainBean;->error:I

    .line 4
    iput-object p2, p0, Lcom/papa/sim/statistic/AccountResultMainBean;->data:Lcom/papa/sim/statistic/PabiBalanceBean;

    return-void
.end method


# virtual methods
.method public getData()Lcom/papa/sim/statistic/PabiBalanceBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/AccountResultMainBean;->data:Lcom/papa/sim/statistic/PabiBalanceBean;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/AccountResultMainBean;->error:I

    return v0
.end method

.method public setData(Lcom/papa/sim/statistic/PabiBalanceBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/AccountResultMainBean;->data:Lcom/papa/sim/statistic/PabiBalanceBean;

    return-void
.end method

.method public setError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/AccountResultMainBean;->error:I

    return-void
.end method

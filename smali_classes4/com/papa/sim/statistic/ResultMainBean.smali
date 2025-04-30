.class public Lcom/papa/sim/statistic/ResultMainBean;
.super Ljava/lang/Object;
.source "ResultMainBean.java"


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
.field private code:I

.field private flag:I

.field private messages:Lcom/papa/sim/statistic/ResultMessageBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/papa/sim/statistic/ResultMessageBean<",
            "TE;>;"
        }
    .end annotation
.end field

.field private requesttype:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/ResultMessageBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/papa/sim/statistic/ResultMessageBean<",
            "TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/papa/sim/statistic/ResultMainBean;->flag:I

    .line 4
    iput p2, p0, Lcom/papa/sim/statistic/ResultMainBean;->code:I

    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/ResultMainBean;->version:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/papa/sim/statistic/ResultMainBean;->requesttype:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/papa/sim/statistic/ResultMainBean;->messages:Lcom/papa/sim/statistic/ResultMessageBean;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/ResultMainBean;->code:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/ResultMainBean;->flag:I

    return v0
.end method

.method public getMessages()Lcom/papa/sim/statistic/ResultMessageBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/papa/sim/statistic/ResultMessageBean<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ResultMainBean;->messages:Lcom/papa/sim/statistic/ResultMessageBean;

    return-object v0
.end method

.method public getRequesttype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ResultMainBean;->requesttype:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ResultMainBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/ResultMainBean;->code:I

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/ResultMainBean;->flag:I

    return-void
.end method

.method public setMessages(Lcom/papa/sim/statistic/ResultMessageBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa/sim/statistic/ResultMessageBean<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ResultMainBean;->messages:Lcom/papa/sim/statistic/ResultMessageBean;

    return-void
.end method

.method public setRequesttype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ResultMainBean;->requesttype:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ResultMainBean;->version:Ljava/lang/String;

    return-void
.end method

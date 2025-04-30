.class public Lcom/join/mgps/dto/AccountResultBean;
.super Ljava/lang/Object;
.source "AccountResultBean.java"


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
.field private data:Lcom/join/mgps/dto/AccountLoginresultData;

.field private error:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/join/mgps/dto/AccountLoginresultData;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/AccountResultBean;->error:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/AccountResultBean;->data:Lcom/join/mgps/dto/AccountLoginresultData;

    return-void
.end method


# virtual methods
.method public getData()Lcom/join/mgps/dto/AccountLoginresultData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountResultBean;->data:Lcom/join/mgps/dto/AccountLoginresultData;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountResultBean;->error:I

    return v0
.end method

.method public setData(Lcom/join/mgps/dto/AccountLoginresultData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountResultBean;->data:Lcom/join/mgps/dto/AccountLoginresultData;

    return-void
.end method

.method public setError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountResultBean;->error:I

    return-void
.end method

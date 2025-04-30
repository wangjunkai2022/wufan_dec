.class public Lcom/join/mgps/dto/CategoryCommonMessageBean;
.super Ljava/lang/Object;
.source "CategoryCommonMessageBean.java"


# instance fields
.field private data:Lcom/join/mgps/dto/CategoryCommonDataBean;

.field private modeltype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/join/mgps/dto/CategoryCommonDataBean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryCommonMessageBean;->modeltype:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/CategoryCommonMessageBean;->data:Lcom/join/mgps/dto/CategoryCommonDataBean;

    return-void
.end method


# virtual methods
.method public getData()Lcom/join/mgps/dto/CategoryCommonDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CategoryCommonMessageBean;->data:Lcom/join/mgps/dto/CategoryCommonDataBean;

    return-object v0
.end method

.method public getModeltype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CategoryCommonMessageBean;->modeltype:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/join/mgps/dto/CategoryCommonDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryCommonMessageBean;->data:Lcom/join/mgps/dto/CategoryCommonDataBean;

    return-void
.end method

.method public setModeltype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryCommonMessageBean;->modeltype:Ljava/lang/String;

    return-void
.end method

.class public Lcom/join/mgps/dto/SearchAutoMessageBean;
.super Ljava/lang/Object;
.source "SearchAutoMessageBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;
    }
.end annotation


# instance fields
.field private data:Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;

.field private modeltype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchAutoMessageBean;->data:Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;

    return-object v0
.end method

.method public getModeltype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchAutoMessageBean;->modeltype:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchAutoMessageBean;->data:Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;

    return-void
.end method

.method public setModeltype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchAutoMessageBean;->modeltype:Ljava/lang/String;

    return-void
.end method

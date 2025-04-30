.class public Lcom/join/mgps/dto/DetialShowImageBean;
.super Ljava/lang/Object;
.source "DetialShowImageBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private local:Lcom/join/mgps/dto/DetialShowImageSingBean;

.field private remote:Lcom/join/mgps/dto/DetialShowImageSingBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/DetialShowImageSingBean;Lcom/join/mgps/dto/DetialShowImageSingBean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/DetialShowImageBean;->local:Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/DetialShowImageBean;->remote:Lcom/join/mgps/dto/DetialShowImageSingBean;

    return-void
.end method


# virtual methods
.method public getLocal()Lcom/join/mgps/dto/DetialShowImageSingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetialShowImageBean;->local:Lcom/join/mgps/dto/DetialShowImageSingBean;

    return-object v0
.end method

.method public getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetialShowImageBean;->remote:Lcom/join/mgps/dto/DetialShowImageSingBean;

    return-object v0
.end method

.method public setLocal(Lcom/join/mgps/dto/DetialShowImageSingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetialShowImageBean;->local:Lcom/join/mgps/dto/DetialShowImageSingBean;

    return-void
.end method

.method public setRemote(Lcom/join/mgps/dto/DetialShowImageSingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetialShowImageBean;->remote:Lcom/join/mgps/dto/DetialShowImageSingBean;

    return-void
.end method

.class public Lcom/join/mgps/dto/WxMiniProgramBean;
.super Ljava/lang/Object;
.source "WxMiniProgramBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WxMiniProgramBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WxMiniProgramBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WxMiniProgramBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WxMiniProgramBean;->path:Ljava/lang/String;

    return-void
.end method

.class public Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;
.super Ljava/lang/Object;
.source "GameFactoryListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameFactoryListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogoInfo"
.end annotation


# instance fields
.field private introduce:Ljava/lang/String;

.field private logo_pic:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntroduce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->introduce:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->logo_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIntroduce(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->introduce:Ljava/lang/String;

    return-void
.end method

.method public setLogo_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->logo_pic:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->title:Ljava/lang/String;

    return-void
.end method

.class public Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;
.super Ljava/lang/Object;
.source "SimulatorAreaDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SimulatorAreaDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameTypeBean"
.end annotation


# instance fields
.field private describe:Ljava/lang/String;

.field private game_count:Ljava/lang/String;

.field private ico_remote:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private show_index:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescribe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->describe:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->game_count:Ljava/lang/String;

    return-object v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_index()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->show_index:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->describe:Ljava/lang/String;

    return-void
.end method

.method public setGame_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->game_count:Ljava/lang/String;

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setShow_index(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->show_index:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->title:Ljava/lang/String;

    return-void
.end method

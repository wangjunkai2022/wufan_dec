.class public Lcom/join/mgps/dto/DownloadCfg;
.super Ljava/lang/Object;
.source "DownloadCfg.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cfg_switch:Ljava/lang/String;

.field private cfg_switch_express:Ljava/lang/String;

.field private cfg_values:Ljava/lang/String;

.field private cfg_values_express:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadCfg;->cfg_switch_express:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/DownloadCfg;->cfg_values_express:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCfg_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadCfg;->cfg_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_switch_express()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadCfg;->cfg_switch_express:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_values()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadCfg;->cfg_values:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_values_express()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadCfg;->cfg_values_express:Ljava/lang/String;

    return-object v0
.end method

.method public setCfg_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadCfg;->cfg_switch:Ljava/lang/String;

    return-void
.end method

.method public setCfg_switch_express(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadCfg;->cfg_switch_express:Ljava/lang/String;

    return-void
.end method

.method public setCfg_values(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadCfg;->cfg_values:Ljava/lang/String;

    return-void
.end method

.method public setCfg_values_express(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadCfg;->cfg_values_express:Ljava/lang/String;

    return-void
.end method

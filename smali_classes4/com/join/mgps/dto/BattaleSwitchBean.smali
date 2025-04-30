.class public Lcom/join/mgps/dto/BattaleSwitchBean;
.super Ljava/lang/Object;
.source "BattaleSwitchBean.java"


# instance fields
.field private cfg_switch:I

.field private cfg_values:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCfg_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BattaleSwitchBean;->cfg_switch:I

    return v0
.end method

.method public getCfg_values()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BattaleSwitchBean;->cfg_values:Ljava/lang/String;

    return-object v0
.end method

.method public setCfg_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BattaleSwitchBean;->cfg_switch:I

    return-void
.end method

.method public setCfg_values(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BattaleSwitchBean;->cfg_values:Ljava/lang/String;

    return-void
.end method

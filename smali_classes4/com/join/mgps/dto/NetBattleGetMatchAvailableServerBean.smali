.class public Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;
.super Ljava/lang/Object;
.source "NetBattleGetMatchAvailableServerBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private error:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private port:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;->error:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;->ip:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;->port:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;->port:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;->error:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;->ip:Ljava/lang/String;

    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;->port:Ljava/lang/String;

    return-void
.end method

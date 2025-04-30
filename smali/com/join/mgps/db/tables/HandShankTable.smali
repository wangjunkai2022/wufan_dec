.class public Lcom/join/mgps/db/tables/HandShankTable;
.super Ljava/lang/Object;
.source "HandShankTable.java"


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field private isConnect:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private time:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/db/tables/HandShankTable;->isConnect:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/join/mgps/db/tables/HandShankTable;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/join/mgps/db/tables/HandShankTable;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/HandShankTable;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getIsConnect()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/HandShankTable;->isConnect:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/HandShankTable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/HandShankTable;->time:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/HandShankTable;->address:Ljava/lang/String;

    return-void
.end method

.method public setIsConnect(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/HandShankTable;->isConnect:Ljava/lang/Boolean;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/HandShankTable;->name:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/HandShankTable;->time:Ljava/lang/Long;

    return-void
.end method

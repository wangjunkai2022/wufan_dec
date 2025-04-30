.class public Lcom/join/mgps/db/tables/JoystickTable;
.super Ljava/lang/Object;
.source "JoystickTable.java"


# instance fields
.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private mac:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private time:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/JoystickTable;->id:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/JoystickTable;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/JoystickTable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/JoystickTable;->time:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/JoystickTable;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/JoystickTable;->id:I

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/JoystickTable;->mac:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/JoystickTable;->name:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/JoystickTable;->time:Ljava/lang/Long;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/JoystickTable;->type:Ljava/lang/String;

    return-void
.end method

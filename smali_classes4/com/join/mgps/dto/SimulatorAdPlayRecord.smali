.class public Lcom/join/mgps/dto/SimulatorAdPlayRecord;
.super Lcom/join/mgps/dto/BaseBean;
.source "SimulatorAdPlayRecord.java"


# instance fields
.field private adType:I

.field private maxTimes:I

.field private times:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseBean;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->maxTimes:I

    return-void
.end method


# virtual methods
.method public add()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    return-void
.end method

.method public canPlay()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    iget v1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->maxTimes:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 3
    iget v2, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    iget p1, p1, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAdType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    return v0
.end method

.method public getMaxTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->maxTimes:I

    return v0
.end method

.method public getTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAdType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    return-void
.end method

.method public setMaxTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->maxTimes:I

    return-void
.end method

.method public setTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    return-void
.end method

.method public typeOf(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

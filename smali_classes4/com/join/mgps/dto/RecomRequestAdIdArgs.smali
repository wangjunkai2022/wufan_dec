.class public Lcom/join/mgps/dto/RecomRequestAdIdArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RecomRequestAdIdArgs.java"


# instance fields
.field private from_aid:Ljava/lang/String;

.field private is_anonymous:I

.field private m:Ljava/lang/String;

.field private pn:I

.field private uid:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->pn:I

    .line 3
    iput p2, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->is_anonymous:I

    .line 4
    iput p3, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->uid:I

    .line 5
    iput-object p4, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->from_aid:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrom_aid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->from_aid:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_anonymous()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->is_anonymous:I

    return v0
.end method

.method public getM()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->pn:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->uid:I

    return v0
.end method

.method public setFrom_aid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->from_aid:Ljava/lang/String;

    return-void
.end method

.method public setIs_anonymous(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->is_anonymous:I

    return-void
.end method

.method public setM(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->m:Ljava/lang/String;

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->pn:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;->uid:I

    return-void
.end method

.class public Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;
.super Ljava/lang/Object;
.source "RequestInfoArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/RequestInfoArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestInfoinfo"
.end annotation


# instance fields
.field time:J

.field type:I

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->type:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->time:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->type:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->uid:Ljava/lang/String;

    return-void
.end method

.class public Lcom/join/mgps/dto/OemData$GiftGetCdkData;
.super Ljava/lang/Object;
.source "OemData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/OemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftGetCdkData"
.end annotation


# instance fields
.field private end_time:J

.field private gift_cdk:Ljava/lang/String;

.field private start_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnd_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->end_time:J

    return-wide v0
.end method

.method public getGift_cdk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->gift_cdk:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->start_time:J

    return-wide v0
.end method

.method public setEnd_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->end_time:J

    return-void
.end method

.method public setGift_cdk(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->gift_cdk:Ljava/lang/String;

    return-void
.end method

.method public setStart_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->start_time:J

    return-void
.end method

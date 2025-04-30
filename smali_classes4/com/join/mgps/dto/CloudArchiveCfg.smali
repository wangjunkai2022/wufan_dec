.class public Lcom/join/mgps/dto/CloudArchiveCfg;
.super Ljava/lang/Object;
.source "CloudArchiveCfg.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private last_enter_main_page_time:J

.field private location_at:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLast_enter_main_page_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CloudArchiveCfg;->last_enter_main_page_time:J

    return-wide v0
.end method

.method public getLocation_at()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudArchiveCfg;->location_at:I

    return v0
.end method

.method public setLast_enter_main_page_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CloudArchiveCfg;->last_enter_main_page_time:J

    return-void
.end method

.method public setLocation_at(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudArchiveCfg;->location_at:I

    return-void
.end method

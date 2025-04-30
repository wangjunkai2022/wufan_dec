.class public Lcom/join/mgps/dto/SingleGameAdBean;
.super Ljava/lang/Object;
.source "SingleGameAdBean.java"


# instance fields
.field private counts:I

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/SingleGameAdBean;->counts:I

    .line 4
    iput-wide p2, p0, Lcom/join/mgps/dto/SingleGameAdBean;->time:J

    return-void
.end method


# virtual methods
.method public getCounts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SingleGameAdBean;->counts:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/SingleGameAdBean;->time:J

    return-wide v0
.end method

.method public setCounts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SingleGameAdBean;->counts:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/SingleGameAdBean;->time:J

    return-void
.end method

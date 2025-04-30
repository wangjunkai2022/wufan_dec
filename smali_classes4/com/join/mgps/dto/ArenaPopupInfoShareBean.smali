.class public Lcom/join/mgps/dto/ArenaPopupInfoShareBean;
.super Ljava/lang/Object;
.source "ArenaPopupInfoShareBean.java"


# instance fields
.field private daily_count:I

.field private hasShowCount:I

.field private id:I

.field private lastShowTime:J

.field private show_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDaily_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->daily_count:I

    return v0
.end method

.method public getHasShowCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->hasShowCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->id:I

    return v0
.end method

.method public getLastShowTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->lastShowTime:J

    return-wide v0
.end method

.method public getShow_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->show_time:J

    return-wide v0
.end method

.method public setDaily_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->daily_count:I

    return-void
.end method

.method public setHasShowCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->hasShowCount:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->id:I

    return-void
.end method

.method public setLastShowTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->lastShowTime:J

    return-void
.end method

.method public setShow_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->show_time:J

    return-void
.end method

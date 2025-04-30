.class Lcom/join/mgps/control/RhythmLayout$b;
.super Ljava/util/Timer;
.source "RhythmLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/control/RhythmLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/TimerTask;

.field private b:Z

.field private c:F

.field private d:F

.field final synthetic e:Lcom/join/mgps/control/RhythmLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/control/RhythmLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/control/RhythmLayout$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/control/RhythmLayout$b;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/control/RhythmLayout$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/control/RhythmLayout$b;->c:F

    return p0
.end method


# virtual methods
.method c(FF)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->c:F

    .line 2
    iput p2, p0, Lcom/join/mgps/control/RhythmLayout$b;->d:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {v1}, Lcom/join/mgps/control/RhythmLayout;->a(Lcom/join/mgps/control/RhythmLayout;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {v1}, Lcom/join/mgps/control/RhythmLayout;->b(Lcom/join/mgps/control/RhythmLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout;->a(Lcom/join/mgps/control/RhythmLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_2

    :cond_0
    cmpg-float p1, p2, v0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->b:Z

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/join/mgps/control/RhythmLayout;->d(Lcom/join/mgps/control/RhythmLayout;J)J

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->b:Z

    :goto_1
    return-void
.end method

.method d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b;->a:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/control/RhythmLayout$b$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/control/RhythmLayout$b$a;-><init>(Lcom/join/mgps/control/RhythmLayout$b;)V

    iput-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b;->a:Ljava/util/TimerTask;

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b;->a:Ljava/util/TimerTask;

    const-wide/16 v3, 0x12c

    const-wide/16 v5, 0xfa

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.class Lcom/join/mgps/task/a$a;
.super Landroid/os/CountDownTimer;
.source "CreateApWifiThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/task/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/task/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/task/a;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/task/a$a;->a:Lcom/join/mgps/task/a;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/task/a$a;->a:Lcom/join/mgps/task/a;

    invoke-virtual {v0}, Lcom/join/mgps/task/a;->b()V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/task/a;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTick: \u5f00\u59cb\u5012\u8ba1\u65f6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/task/a$a;->a:Lcom/join/mgps/task/a;

    invoke-virtual {p1}, Lcom/join/mgps/task/a;->d()V

    :cond_0
    return-void
.end method

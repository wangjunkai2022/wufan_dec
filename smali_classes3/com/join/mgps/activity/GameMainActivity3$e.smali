.class Lcom/join/mgps/activity/GameMainActivity3$e;
.super Landroid/os/CountDownTimer;
.source "GameMainActivity3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainActivity3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivity3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$e;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$e;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameMainActivity3;->i2()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

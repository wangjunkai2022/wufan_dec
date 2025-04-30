.class Lcom/join/mgps/activity/GameMainNewActivity$d;
.super Landroid/os/CountDownTimer;
.source "GameMainNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainNewActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainNewActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$d;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity$d;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameMainNewActivity;->K()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

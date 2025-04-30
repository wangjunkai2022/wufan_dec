.class Lcom/join/mgps/customview/d$d;
.super Landroid/os/CountDownTimer;
.source "DownFinishToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/d;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/d;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/d$d;->a:Lcom/join/mgps/customview/d;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/d$d;->a:Lcom/join/mgps/customview/d;

    invoke-virtual {v0}, Lcom/join/mgps/customview/d;->d()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

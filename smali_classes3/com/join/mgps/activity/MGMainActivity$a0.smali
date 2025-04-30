.class Lcom/join/mgps/activity/MGMainActivity$a0;
.super Lcom/join/mgps/ad/e;
.source "MGMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->initGDTPspAd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic q:Z

.field final synthetic r:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$a0;->r:Lcom/join/mgps/activity/MGMainActivity;

    iput-boolean p5, p0, Lcom/join/mgps/activity/MGMainActivity$a0;->q:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onADClose()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADClose()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a0;->r:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->gdtPspAd:Lcom/join/mgps/ad/e;

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    return-void
.end method

.method public onADShow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADShow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a0;->r:Lcom/join/mgps/activity/MGMainActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/join/mgps/activity/MGMainActivity;->sendVideoAdWatchLog(II)V

    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onInitSuccess()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity$a0;->q:Z

    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/e;->h(Z)V

    return-void
.end method

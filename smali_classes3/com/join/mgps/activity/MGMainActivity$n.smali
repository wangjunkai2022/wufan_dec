.class Lcom/join/mgps/activity/MGMainActivity$n;
.super Lcom/join/mgps/ad/e;
.source "MGMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->initGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$n;->r:Lcom/join/mgps/activity/MGMainActivity;

    iput-boolean p5, p0, Lcom/join/mgps/activity/MGMainActivity$n;->q:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/ad/c;->a(Ljava/lang/String;II)V

    .line 2
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$n;->r:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$n;->r:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/MGMainActivity;->access$1900(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/papa91/wrapper/UserPrefs;->setFbaAdGamesConfig(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$n;->r:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->gdtAdVideo:Lcom/join/mgps/ad/e;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 2
    invoke-super {p0, p1}, Lcom/join/mgps/ad/c;->b(Z)V

    return-void
.end method

.method public onADShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADShow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$n;->r:Lcom/join/mgps/activity/MGMainActivity;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity;->sendVideoAdWatchLog(II)V

    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onInitSuccess()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity$n;->q:Z

    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/e;->h(Z)V

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onVideoCached()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$n;->r:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->gdtAdVideo:Lcom/join/mgps/ad/e;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    return-void
.end method

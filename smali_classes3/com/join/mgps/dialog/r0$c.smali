.class Lcom/join/mgps/dialog/r0$c;
.super Lcom/join/mgps/ad/i;
.source "GDTAdVipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/r0;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/r0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r0$c;->a:Lcom/join/mgps/dialog/r0;

    invoke-direct {p0}, Lcom/join/mgps/ad/i;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/i;->b(Z)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/r0$c;->a:Lcom/join/mgps/dialog/r0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/dialog/r0;->g(Lcom/join/mgps/dialog/r0;Z)Z

    return-void
.end method

.method public onADClose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/i;->onADClose()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/r0$c;->a:Lcom/join/mgps/dialog/r0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/r0;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/r0$c;->a:Lcom/join/mgps/dialog/r0;

    invoke-static {v0}, Lcom/join/mgps/dialog/r0;->f(Lcom/join/mgps/dialog/r0;)Lcom/join/mgps/dialog/r0$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/r0$c;->a:Lcom/join/mgps/dialog/r0;

    invoke-static {v0}, Lcom/join/mgps/dialog/r0;->f(Lcom/join/mgps/dialog/r0;)Lcom/join/mgps/dialog/r0$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/dialog/r0$d;->onAdClose()V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/ad/i;->onError(ILjava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/r0$c;->a:Lcom/join/mgps/dialog/r0;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/join/mgps/dialog/r0;->g(Lcom/join/mgps/dialog/r0;Z)Z

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/i;->onVideoCached()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/r0$c;->a:Lcom/join/mgps/dialog/r0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/dialog/r0;->g(Lcom/join/mgps/dialog/r0;Z)Z

    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/i;->onVideoComplete()V

    .line 2
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    iget-object v1, p0, Lcom/join/mgps/dialog/r0$c;->a:Lcom/join/mgps/dialog/r0;

    iget-object v1, v1, Lcom/join/mgps/dialog/r0;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesHasSeeCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesHasSeeCount(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/r0$c;->a:Lcom/join/mgps/dialog/r0;

    invoke-static {v0}, Lcom/join/mgps/dialog/r0;->f(Lcom/join/mgps/dialog/r0;)Lcom/join/mgps/dialog/r0$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/r0$c;->a:Lcom/join/mgps/dialog/r0;

    invoke-static {v0}, Lcom/join/mgps/dialog/r0;->f(Lcom/join/mgps/dialog/r0;)Lcom/join/mgps/dialog/r0$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/dialog/r0$d;->onAdShow()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/r0$c;->a:Lcom/join/mgps/dialog/r0;

    invoke-static {v0}, Lcom/join/mgps/dialog/r0;->h(Lcom/join/mgps/dialog/r0;)V

    return-void
.end method

.class Lcom/join/mgps/ad/a$a;
.super Lcom/join/mgps/ad/m;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/a;->d(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic s:Z

.field final synthetic t:Lcom/join/mgps/ad/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    iput-boolean p5, p0, Lcom/join/mgps/ad/a$a;->s:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/ad/c;->a(Ljava/lang/String;II)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/join/mgps/ad/f;->a(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/c;->b(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/ad/f;->b(Z)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/c;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/ad/f;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onADClick()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADClick()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/ad/f;->onADClick()V

    :cond_0
    return-void
.end method

.method public onADClose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADClose()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/ad/f;->onADClose()V

    :cond_0
    return-void
.end method

.method public onADExpose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADExpose()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/ad/f;->onADExpose()V

    :cond_0
    return-void
.end method

.method public onADShow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADShow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/ad/f;->onADShow()V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/ad/c;->onError(ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/join/mgps/ad/f;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onInitSuccess()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/ad/a$a;->s:Z

    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/m;->h(Z)V

    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/c;->onReward(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/ad/f;->onReward(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onVideoCached()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onVideoCached()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/ad/f;->onVideoCached()V

    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onVideoComplete()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->t:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/ad/f;->onVideoComplete()V

    :cond_0
    return-void
.end method

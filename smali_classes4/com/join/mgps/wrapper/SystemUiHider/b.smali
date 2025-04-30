.class Lcom/join/mgps/wrapper/SystemUiHider/b;
.super Lcom/join/mgps/wrapper/SystemUiHider/a;
.source "SystemUiHiderBase.java"


# instance fields
.field private i:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/wrapper/SystemUiHider/a;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/b;->i:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/b;->i:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/b;->i:Z

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->c:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/b;->i:Z

    return-void
.end method

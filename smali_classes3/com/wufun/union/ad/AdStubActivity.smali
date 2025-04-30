.class public Lcom/wufun/union/ad/AdStubActivity;
.super Landroid/app/Activity;
.source "AdStubActivity.java"


# instance fields
.field private a:Lm2/a;

.field private b:Landroid/view/View;

.field private c:Landroid/os/Bundle;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wufun/union/ad/AdStubActivity;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdStubActivity;->c:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/AdStubActivity;->d:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method bindService()V
    .locals 3

    .line 1
    new-instance v0, Lcom/wufun/union/ad/AdStubActivity$a;

    invoke-direct {v0, p0}, Lcom/wufun/union/ad/AdStubActivity$a;-><init>(Lcom/wufun/union/ad/AdStubActivity;)V

    iput-object v0, p0, Lcom/wufun/union/ad/AdStubActivity;->d:Landroid/content/ServiceConnection;

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.wufun.union.ad.action.AdService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/wufun/union/ad/AdStubActivity;->d:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method c()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/AdStubActivity;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 4
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wufun/union/ad/AdStubActivity;->b:Landroid/view/View;

    const/16 v1, 0x1307

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lm2/a;->c(Landroid/view/LayoutInflater;)Lm2/a;

    move-result-object p1

    iput-object p1, p0, Lcom/wufun/union/ad/AdStubActivity;->a:Lm2/a;

    .line 3
    invoke-virtual {p1}, Lm2/a;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/wufun/union/ad/AdStubActivity;->a:Lm2/a;

    iget-object p1, p1, Lm2/a;->b:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wufun/union/ad/AdStubActivity;->b:Landroid/view/View;

    .line 5
    invoke-virtual {p0}, Lcom/wufun/union/ad/AdStubActivity;->c()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/wufun/union/ad/AdStubActivity;->c:Landroid/os/Bundle;

    .line 8
    invoke-virtual {p0}, Lcom/wufun/union/ad/AdStubActivity;->bindService()V

    return-void

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/wufun/union/ad/AdStubActivity;->b()V

    return-void
.end method

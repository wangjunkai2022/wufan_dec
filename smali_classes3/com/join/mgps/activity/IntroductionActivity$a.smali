.class Lcom/join/mgps/activity/IntroductionActivity$a;
.super Landroid/os/Handler;
.source "IntroductionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/IntroductionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/IntroductionActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/IntroductionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/IntroductionActivity;->J:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/IntroductionActivity;->u0(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    iget-object v1, p1, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v0

    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v0

    invoke-static {p1, v1, v2, v3}, Lcom/join/mgps/activity/IntroductionActivity;->D0(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/IntroductionActivity;->f1()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/IntroductionActivity;->E0(Lcom/join/mgps/activity/IntroductionActivity;Z)Z

    :cond_3
    :goto_0
    return-void
.end method

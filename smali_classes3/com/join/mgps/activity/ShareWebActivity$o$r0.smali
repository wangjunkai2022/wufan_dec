.class Lcom/join/mgps/activity/ShareWebActivity$o$r0;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$r0;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/WebAccountDataBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/WebAccountDataBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$r0;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/activity/ShareWebActivity;->K0(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/dto/AccountBean;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$r0;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/WebAccountDataBean;->setAccountBean(Lcom/join/mgps/dto/AccountBean;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$r0;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$r0;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$r0;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->L0(Lcom/join/mgps/activity/ShareWebActivity;Z)Z

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$r0;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;II)V

    return-void
.end method

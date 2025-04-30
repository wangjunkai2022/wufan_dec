.class Lcom/join/mgps/activity/MGMainActivity$v;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/y1$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$v;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$v;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$v;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/pref/b;->D(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$v;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$v;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/pref/b;->J(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$v;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->dialogBack:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$v;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->initApplicationData()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$v;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$300(Lcom/join/mgps/activity/MGMainActivity;)V

    const/4 v0, 0x0

    .line 8
    invoke-static {v1, v0}, Lcom/mob/MobSDK;->submitPolicyGrantResult(ZLcom/mob/OperationCallback;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$v;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getRootUrl()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$v;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->afterViewsInitData(Z)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$v;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->onResume()V

    return-void
.end method

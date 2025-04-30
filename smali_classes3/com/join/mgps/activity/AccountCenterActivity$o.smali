.class Lcom/join/mgps/activity/AccountCenterActivity$o;
.super Ljava/lang/Object;
.source "AccountCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountCenterActivity;->d1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/AccountCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountCenterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity$o;->a:Lcom/join/mgps/activity/AccountCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity$o;->a:Lcom/join/mgps/activity/AccountCenterActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/AccountCenterActivity;->E0(Lcom/join/mgps/activity/AccountCenterActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/AccountCenterActivity$o;->a:Lcom/join/mgps/activity/AccountCenterActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/AccountCenterActivity;->F0(Lcom/join/mgps/activity/AccountCenterActivity;)Lcom/join/mgps/dto/GameOLHeadAdBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getSub()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CompanySubBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CompanySubBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

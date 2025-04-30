.class Lcom/join/mgps/activity/AccountCenterActivity$b;
.super Ljava/lang/Object;
.source "AccountCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountCenterActivity;->c1()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity$b;->a:Lcom/join/mgps/activity/AccountCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/AccountCenterActivity$b;->a:Lcom/join/mgps/activity/AccountCenterActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/AccountCenterActivity;->G0(Lcom/join/mgps/activity/AccountCenterActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goMYAccountDetialActivity(Landroid/content/Context;Lcom/join/mgps/dto/AccountBean;)V

    :cond_0
    return-void
.end method

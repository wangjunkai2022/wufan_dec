.class Lcom/join/mgps/activity/ShareWebActivity$o$a0;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o;->goAccountDetial()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$a0;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$a0;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$a0;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v2, v2, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ShareWebActivity;->J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goMYAccountDetialActivity(Landroid/content/Context;Lcom/join/mgps/dto/AccountBean;)V

    return-void
.end method

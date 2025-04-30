.class Lcom/join/mgps/activity/ShareWebActivity$l;
.super Ljava/lang/Thread;
.source "ShareWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity;->m2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/ShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$l;->b:Lcom/join/mgps/activity/ShareWebActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Lcom/alipay/sdk/app/PayTask;

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$l;->b:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v0, v2}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    .line 5
    iput v2, v1, Landroid/os/Message;->what:I

    .line 6
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$l;->b:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->G0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 10
    iput v1, v0, Landroid/os/Message;->what:I

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$l;->b:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->G0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

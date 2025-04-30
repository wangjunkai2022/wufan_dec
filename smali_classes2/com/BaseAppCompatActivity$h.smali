.class Lcom/BaseAppCompatActivity$h;
.super Landroid/content/BroadcastReceiver;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/BaseAppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$h;->a:Lcom/BaseAppCompatActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/BaseAppCompatActivity$h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/mgps/Util/UtilsMy;->z0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.wufun.unzip.failed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/BaseAppCompatActivity$h;->a:Lcom/BaseAppCompatActivity;

    invoke-static {v0, p2, p1}, Lcom/BaseAppCompatActivity;->access$300(Lcom/BaseAppCompatActivity;Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.deletecheckhasfile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/BaseAppCompatActivity$h;->a:Lcom/BaseAppCompatActivity;

    iget-boolean v0, v0, Lcom/BaseAppCompatActivity;->isInBackground:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "plugNumber"

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "gameZipPath"

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "PackageName"

    .line 7
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "romType"

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "gameName"

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    new-instance v0, Lcom/join/mgps/customview/w;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/w;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v7, Lcom/c;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/join/mgps/customview/w;->b(Lcom/join/mgps/customview/w$a;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/BaseAppCompatActivity$h;->a:Lcom/BaseAppCompatActivity;

    iget-wide v3, p1, Lcom/BaseAppCompatActivity;->timeLastDe:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/w;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/BaseAppCompatActivity$h;->a:Lcom/BaseAppCompatActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/BaseAppCompatActivity;->timeLastDe:J

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/BaseAppCompatActivity$h;->a:Lcom/BaseAppCompatActivity;

    iget-boolean v0, p1, Lcom/BaseAppCompatActivity;->isInBackground:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string v0, "gameid"

    .line 16
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/BaseAppCompatActivity;->access$400(Lcom/BaseAppCompatActivity;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

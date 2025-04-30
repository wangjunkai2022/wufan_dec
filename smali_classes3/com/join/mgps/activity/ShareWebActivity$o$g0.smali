.class Lcom/join/mgps/activity/ShareWebActivity$o$g0;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o;->joinAction(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/ShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$g0;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$g0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/activity/ShareWebActivity$o$g0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$g0;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$g0;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$g0;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity$o$g0;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v3, v3, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/sim/statistic/p;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/join/mgps/activity/ShareWebActivity$o$h0$a;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o$h0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareWebActivity$o$h0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o$h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$h0$a;->a:Lcom/join/mgps/activity/ShareWebActivity$o$h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$h0$a;->a:Lcom/join/mgps/activity/ShareWebActivity$o$h0;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$o$h0;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->H0(Lcom/join/mgps/activity/ShareWebActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$h0$a;->a:Lcom/join/mgps/activity/ShareWebActivity$o$h0;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$o$h0;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->I0(Lcom/join/mgps/activity/ShareWebActivity;J)J

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$h0$a;->a:Lcom/join/mgps/activity/ShareWebActivity$o$h0;

    iget-object v0, p1, Lcom/join/mgps/activity/ShareWebActivity$o$h0;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$o$h0;->a:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/r;->s(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.class Lcom/join/mgps/activity/ShareWebActivity$o$c;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o;->setScreenLandOrPort(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/ShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$c;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iput p2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$c;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$c;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->p1(Lcom/join/mgps/activity/ShareWebActivity;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$c;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->N0(Lcom/join/mgps/activity/ShareWebActivity;I)I

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$c;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$c;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->N0(Lcom/join/mgps/activity/ShareWebActivity;I)I

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$c;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$c;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0, v2}, Lcom/join/mgps/activity/ShareWebActivity;->N0(Lcom/join/mgps/activity/ShareWebActivity;I)I

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$c;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$c;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->N0(Lcom/join/mgps/activity/ShareWebActivity;I)I

    :goto_0
    return-void
.end method

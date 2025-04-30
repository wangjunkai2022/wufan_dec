.class Lcom/join/mgps/activity/ShareWebActivity$p$a;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$p;->setScreenLandOrPort(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/ShareWebActivity$p;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$p;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$p$a;->b:Lcom/join/mgps/activity/ShareWebActivity$p;

    iput p2, p0, Lcom/join/mgps/activity/ShareWebActivity$p$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ShareWebActivity$p$a;->a:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$p$a;->b:Lcom/join/mgps/activity/ShareWebActivity$p;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$p;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->p1(Lcom/join/mgps/activity/ShareWebActivity;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$p$a;->b:Lcom/join/mgps/activity/ShareWebActivity$p;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$p;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$p$a;->b:Lcom/join/mgps/activity/ShareWebActivity$p;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$p;->a:Lcom/join/mgps/activity/ShareWebActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$p$a;->b:Lcom/join/mgps/activity/ShareWebActivity$p;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$p;->a:Lcom/join/mgps/activity/ShareWebActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

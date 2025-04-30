.class Lcom/join/mgps/activity/ForumProfileMessageActivity$e;
.super Lcom/join/mgps/customview/ForumLoadingView$e;
.source "ForumProfileMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageActivity;->I0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumProfileMessageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$e;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    invoke-direct {p0, p2}, Lcom/join/mgps/customview/ForumLoadingView$e;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView$e;->a(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$e;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$e;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->H0(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$e;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    const-string v2, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55\uff01"

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->showToast(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

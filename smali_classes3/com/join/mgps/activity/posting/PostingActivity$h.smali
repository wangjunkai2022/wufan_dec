.class Lcom/join/mgps/activity/posting/PostingActivity$h;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/posting/PostingActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$h;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$h;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->I0(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/r1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$h;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->I0(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/r1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dialog/r1;->b()V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$h;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    new-instance v0, Lcom/join/mgps/dialog/r1;

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->F0(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/r1;-><init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;)V

    invoke-static {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->J0(Lcom/join/mgps/activity/posting/PostingActivity;Lcom/join/mgps/dialog/r1;)Lcom/join/mgps/dialog/r1;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$h;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->I0(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/r1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dialog/r1;->d()V

    return-void
.end method

.class Lcom/join/mgps/activity/ForumPostsActivity$z;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->R1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$z;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$z;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/ForumPostsActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$z;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/ForumPostsActivity;->k:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$z;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/ForumPostsActivity;->l:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$z;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showSystemKeyBoard(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$z;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$z;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$z;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->l:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

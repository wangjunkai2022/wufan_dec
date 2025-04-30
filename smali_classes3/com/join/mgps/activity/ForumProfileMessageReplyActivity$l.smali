.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->k1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->g:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->h:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSystemKeyBoard(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

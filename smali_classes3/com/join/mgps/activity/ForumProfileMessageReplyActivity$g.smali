.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->T1(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iput p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->a:I

    iput p3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result p1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->a:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->W0(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result p1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result p1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->b:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->X0(I)V

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;->c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->O0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)Lcom/join/mgps/dialog/p0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

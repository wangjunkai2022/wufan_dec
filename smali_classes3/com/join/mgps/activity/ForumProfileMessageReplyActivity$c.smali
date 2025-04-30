.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->j1()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->M0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->H0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->H0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result p1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->T1(II)V

    return-void
.end method

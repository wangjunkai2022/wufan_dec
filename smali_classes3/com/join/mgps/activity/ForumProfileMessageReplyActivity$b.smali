.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->M0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->H0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

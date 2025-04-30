.class Lcom/join/mgps/activity/ForumPostsActivity$i;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->p2()V

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->G0(Lcom/join/mgps/activity/ForumPostsActivity;)V

    goto :goto_0

    .line 4
    :pswitch_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->s1()V

    goto :goto_0

    .line 5
    :pswitch_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->r1()V

    goto :goto_0

    .line 6
    :pswitch_5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const v0, 0x7f09045a

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->H0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->I0(Lcom/join/mgps/activity/ForumPostsActivity;)V

    goto :goto_0

    .line 8
    :pswitch_6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const v0, 0x7f090457

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->H0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->I0(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->J0(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/activity/ForumPostsActivity$e0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->J0(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/activity/ForumPostsActivity$e0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090a7e
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

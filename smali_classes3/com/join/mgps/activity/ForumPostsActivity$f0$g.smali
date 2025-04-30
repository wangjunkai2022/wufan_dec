.class Lcom/join/mgps/activity/ForumPostsActivity$f0$g;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity$f0;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsActivity$f0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0$g;->a:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0$g;->a:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    const v0, 0x7f09045a

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->H0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0$g;->a:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->I0(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0$g;->a:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o1()V

    return-void
.end method

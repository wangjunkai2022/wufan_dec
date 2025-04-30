.class Lcom/join/mgps/activity/ForumPostsActivity$j0$a;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity$j0;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsActivity$j0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity$j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$j0$a;->a:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$j0$a;->a:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    iget-boolean v0, p1, Lcom/join/mgps/activity/ForumPostsActivity$j0;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/join/mgps/activity/ForumPostsActivity$j0;->c:Z

    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->a(Lcom/join/mgps/activity/ForumPostsActivity$j0;)Lcom/join/mgps/activity/ForumPostsActivity$j0$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$j0$a;->a:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->a(Lcom/join/mgps/activity/ForumPostsActivity$j0;)Lcom/join/mgps/activity/ForumPostsActivity$j0$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/activity/ForumPostsActivity$j0$c;->b()V

    :cond_1
    return-void
.end method

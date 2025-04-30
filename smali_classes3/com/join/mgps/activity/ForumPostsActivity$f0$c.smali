.class Lcom/join/mgps/activity/ForumPostsActivity$f0$c;
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0$c;->a:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0$c;->a:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->G0(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0$c;->a:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o1()V

    return-void
.end method

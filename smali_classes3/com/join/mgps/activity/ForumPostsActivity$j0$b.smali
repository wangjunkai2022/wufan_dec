.class Lcom/join/mgps/activity/ForumPostsActivity$j0$b;
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
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/ForumPostsActivity$j0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity$j0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$j0$b;->b:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    iput p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$j0$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$j0$b;->b:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->a(Lcom/join/mgps/activity/ForumPostsActivity$j0;)Lcom/join/mgps/activity/ForumPostsActivity$j0$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$j0$b;->b:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->a(Lcom/join/mgps/activity/ForumPostsActivity$j0;)Lcom/join/mgps/activity/ForumPostsActivity$j0$c;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$j0$b;->a:I

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$j0$b;->b:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity$j0$c;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

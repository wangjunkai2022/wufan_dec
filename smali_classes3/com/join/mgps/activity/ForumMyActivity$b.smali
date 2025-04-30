.class Lcom/join/mgps/activity/ForumMyActivity$b;
.super Ljava/lang/Object;
.source "ForumMyActivity.java"

# interfaces
.implements Lru/noties/scrollable/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumMyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumMyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$b;->a:Lcom/join/mgps/activity/ForumMyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$b;->a:Lcom/join/mgps/activity/ForumMyActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

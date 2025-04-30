.class Lcom/join/mgps/activity/ForumMyActivity$k$a;
.super Ljava/lang/Object;
.source "ForumMyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyActivity$k;->e(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/ForumMyActivity$k;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumMyActivity$k;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->b:Lcom/join/mgps/activity/ForumMyActivity$k;

    iput p2, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->b:Lcom/join/mgps/activity/ForumMyActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    iget v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->b:Lcom/join/mgps/activity/ForumMyActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    iget v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->b:Lcom/join/mgps/activity/ForumMyActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    iget v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :goto_0
    return-void
.end method

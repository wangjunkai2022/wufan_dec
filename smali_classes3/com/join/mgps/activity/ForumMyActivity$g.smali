.class Lcom/join/mgps/activity/ForumMyActivity$g;
.super Ljava/lang/Object;
.source "ForumMyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyActivity;->K0()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$g;->a:Lcom/join/mgps/activity/ForumMyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$g;->a:Lcom/join/mgps/activity/ForumMyActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XExpandableListView;->s()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$g;->a:Lcom/join/mgps/activity/ForumMyActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XExpandableListView;->r()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$g;->a:Lcom/join/mgps/activity/ForumMyActivity;

    iget v1, v0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XExpandableListView;->setNoMore()V

    :cond_1
    return-void
.end method

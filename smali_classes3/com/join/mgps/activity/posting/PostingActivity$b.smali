.class Lcom/join/mgps/activity/posting/PostingActivity$b;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/posting/PostingActivity$n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/posting/PostingActivity;->n1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/posting/PostingActivity;->A0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/posting/PostingActivity;->z0:Lcom/join/mgps/activity/posting/PostingActivity$n;

    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->A0:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/posting/PostingActivity$n;->d(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->z0:Lcom/join/mgps/activity/posting/PostingActivity$n;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lnet/bither/util/b;->j(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->A0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->p:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->p:Lit/sephiroth/android/library/widget/HListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

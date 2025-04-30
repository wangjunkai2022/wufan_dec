.class Lcom/join/mgps/activity/ForumPostsActivity$f;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->l3(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    iput p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->a:I

    iput p3, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->t1(II)V

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->t1(II)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->E0(Lcom/join/mgps/activity/ForumPostsActivity;)I

    move-result p1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->a:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->j1(I)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->E0(Lcom/join/mgps/activity/ForumPostsActivity;)I

    move-result p1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->E0(Lcom/join/mgps/activity/ForumPostsActivity;)I

    move-result p1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->E0(Lcom/join/mgps/activity/ForumPostsActivity;)I

    move-result p1

    const/16 v0, 0x21

    if-ne p1, v0, :cond_2

    .line 5
    iget p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->a:I

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$f;->a(I)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->E0(Lcom/join/mgps/activity/ForumPostsActivity;)I

    move-result p1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->E0(Lcom/join/mgps/activity/ForumPostsActivity;)I

    move-result p1

    const/16 v0, 0x24

    if-ne p1, v0, :cond_5

    .line 7
    :cond_3
    iget p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:I

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$f;->b(I)V

    goto :goto_1

    .line 8
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->k1(I)V

    .line 9
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->V0(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/dialog/p0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

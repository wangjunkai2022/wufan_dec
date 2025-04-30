.class Lcom/join/mgps/adapter/ForumPostsAdapter$v$a;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter$v;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/b0;

.field final synthetic b:Lcom/join/mgps/adapter/ForumPostsAdapter$v;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter$v;Lcom/join/mgps/dialog/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$v$a;->b:Lcom/join/mgps/adapter/ForumPostsAdapter$v;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$v$a;->a:Lcom/join/mgps/dialog/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$v$a;->b:Lcom/join/mgps/adapter/ForumPostsAdapter$v;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$v;->a:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->b(Lcom/join/mgps/adapter/ForumPostsAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsCopyActivity_;->D0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumPostsCopyActivity_$b;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$v$a;->b:Lcom/join/mgps/adapter/ForumPostsAdapter$v;

    iget-object v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$v;->a:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->d(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsCopyActivity_$b;->a(Ljava/lang/String;)Lcom/join/mgps/activity/ForumPostsCopyActivity_$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$v$a;->a:Lcom/join/mgps/dialog/b0;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

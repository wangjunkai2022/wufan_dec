.class Lcom/join/mgps/adapter/ForumPostsAdapter$r;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field final synthetic d:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->d:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->c:Lcom/join/mgps/dto/ForumBean$GameInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/papa/sim/statistic/p;->q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;->c:Lcom/join/mgps/dto/ForumBean$GameInfo;

    const/16 v1, 0x3393

    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/i0;->J0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$GameInfo;I)V

    return-void
.end method

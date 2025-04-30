.class Lcom/join/mgps/adapter/ForumPostsAdapter$j0$a;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/RecommendLabelTag;

.field final synthetic b:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter$j0;Lcom/join/mgps/dto/RecommendLabelTag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$a;->b:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$a;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$a;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$a;->b:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

    invoke-static {v2}, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->a(Lcom/join/mgps/adapter/ForumPostsAdapter$j0;)I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$a;->b:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

    invoke-static {v3}, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->b(Lcom/join/mgps/adapter/ForumPostsAdapter$j0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;IILjava/lang/String;)V

    return-void
.end method

.class public final synthetic Lcom/join/mgps/adapter/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/ForumPostsAdapter;

.field public final synthetic b:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/w;->a:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/w;->b:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/adapter/w;->a:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget-object v1, p0, Lcom/join/mgps/adapter/w;->b:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->a(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;Landroid/view/View;)V

    return-void
.end method

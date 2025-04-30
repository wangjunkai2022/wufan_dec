.class Lcom/join/mgps/adapter/ForumPostsAdapter$m;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->w0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean$GameInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field final synthetic b:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$m;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$m;->a:Lcom/join/mgps/dto/ForumBean$GameInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$m;->a:Lcom/join/mgps/dto/ForumBean$GameInfo;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->I0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    return-void
.end method

.class Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$v;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->g1(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$v;->c:Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;

    iput p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$v;->a:I

    iput-boolean p3, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$v;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$v;->c:Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;

    iget v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$v;->a:I

    iget-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$v;->b:Z

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->j2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;IZ)V

    return-void
.end method

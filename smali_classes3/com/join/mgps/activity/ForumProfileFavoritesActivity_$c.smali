.class Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$c;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->V1(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AbsListView;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$c;->c:Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$c;->a:Landroid/widget/AbsListView;

    iput p3, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$c;->c:Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$c;->a:Landroid/widget/AbsListView;

    iget v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$c;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->t2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Landroid/widget/AbsListView;I)V

    return-void
.end method

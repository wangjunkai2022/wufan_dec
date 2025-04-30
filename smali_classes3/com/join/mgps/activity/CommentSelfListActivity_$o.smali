.class Lcom/join/mgps/activity/CommentSelfListActivity_$o;
.super Ljava/lang/Object;
.source "CommentSelfListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentSelfListActivity_;->a1(Lcom/join/mgps/dto/FavoritesCenterData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/FavoritesCenterData;

.field final synthetic b:Lcom/join/mgps/activity/CommentSelfListActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentSelfListActivity_;Lcom/join/mgps/dto/FavoritesCenterData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity_$o;->b:Lcom/join/mgps/activity/CommentSelfListActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/CommentSelfListActivity_$o;->a:Lcom/join/mgps/dto/FavoritesCenterData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity_$o;->b:Lcom/join/mgps/activity/CommentSelfListActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/CommentSelfListActivity_$o;->a:Lcom/join/mgps/dto/FavoritesCenterData;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/CommentSelfListActivity_;->c1(Lcom/join/mgps/activity/CommentSelfListActivity_;Lcom/join/mgps/dto/FavoritesCenterData;)V

    return-void
.end method

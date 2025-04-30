.class Lcom/join/mgps/activity/SharePostsActivity_$d;
.super Ljava/lang/Object;
.source "SharePostsActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SharePostsActivity_;->Z0(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/SharePostsActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity_;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity_$d;->c:Lcom/join/mgps/activity/SharePostsActivity_;

    iput p2, p0, Lcom/join/mgps/activity/SharePostsActivity_$d;->a:I

    iput p3, p0, Lcom/join/mgps/activity/SharePostsActivity_$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity_$d;->c:Lcom/join/mgps/activity/SharePostsActivity_;

    iget v1, p0, Lcom/join/mgps/activity/SharePostsActivity_$d;->a:I

    iget v2, p0, Lcom/join/mgps/activity/SharePostsActivity_$d;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/SharePostsActivity_;->d1(Lcom/join/mgps/activity/SharePostsActivity_;II)V

    return-void
.end method

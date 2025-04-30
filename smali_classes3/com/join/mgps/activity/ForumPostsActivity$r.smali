.class Lcom/join/mgps/activity/ForumPostsActivity$r;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->m2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$r;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$r;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->l2(Z)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$r;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u89c6\u9891\u64ad\u653e\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

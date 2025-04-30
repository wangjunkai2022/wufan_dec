.class Lcom/join/mgps/activity/SharePostsActivity$a;
.super Lcom/join/mgps/Util/i0$j;
.source "SharePostsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SharePostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SharePostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$a;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-direct {p0}, Lcom/join/mgps/Util/i0$j;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/Util/i0$j;->d(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$a;->a:Lcom/join/mgps/activity/SharePostsActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SharePostsActivity;->a1(I)V

    return-void
.end method

.method public e(Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/Util/i0$j;->e(Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$a;->a:Lcom/join/mgps/activity/SharePostsActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SharePostsActivity;->a1(I)V

    return-void
.end method

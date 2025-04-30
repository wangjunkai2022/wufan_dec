.class Lcom/join/mgps/activity/ForumMyActivity_$c;
.super Ljava/lang/Object;
.source "ForumMyActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyActivity_;->J0(Lcom/join/mgps/dto/ForumData$MyForumMain;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumData$MyForumMain;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/ForumMyActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumMyActivity_;Lcom/join/mgps/dto/ForumData$MyForumMain;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity_$c;->c:Lcom/join/mgps/activity/ForumMyActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumMyActivity_$c;->a:Lcom/join/mgps/dto/ForumData$MyForumMain;

    iput p3, p0, Lcom/join/mgps/activity/ForumMyActivity_$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity_$c;->c:Lcom/join/mgps/activity/ForumMyActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyActivity_$c;->a:Lcom/join/mgps/dto/ForumData$MyForumMain;

    iget v2, p0, Lcom/join/mgps/activity/ForumMyActivity_$c;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ForumMyActivity_;->N0(Lcom/join/mgps/activity/ForumMyActivity_;Lcom/join/mgps/dto/ForumData$MyForumMain;I)V

    return-void
.end method

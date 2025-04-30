.class Lcom/join/mgps/activity/ForumActivity_$n;
.super Ljava/lang/Object;
.source "ForumActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumActivity_;->e1(Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

.field final synthetic b:Lcom/join/mgps/activity/ForumActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumActivity_;Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity_$n;->b:Lcom/join/mgps/activity/ForumActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumActivity_$n;->a:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity_$n;->b:Lcom/join/mgps/activity/ForumActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity_$n;->a:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumActivity_;->j1(Lcom/join/mgps/activity/ForumActivity_;Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V

    return-void
.end method

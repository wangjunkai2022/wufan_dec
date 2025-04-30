.class Lcom/join/mgps/activity/ForumGroupMemberActivity_$e;
.super Ljava/lang/Object;
.source "ForumGroupMemberActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumGroupMemberActivity_;->Q0(ILcom/join/mgps/dto/ForumData$GroupFans;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/dto/ForumData$GroupFans;

.field final synthetic c:Lcom/join/mgps/activity/ForumGroupMemberActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumGroupMemberActivity_;ILcom/join/mgps/dto/ForumData$GroupFans;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity_$e;->c:Lcom/join/mgps/activity/ForumGroupMemberActivity_;

    iput p2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity_$e;->a:I

    iput-object p3, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity_$e;->b:Lcom/join/mgps/dto/ForumData$GroupFans;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity_$e;->c:Lcom/join/mgps/activity/ForumGroupMemberActivity_;

    iget v1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity_$e;->a:I

    iget-object v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity_$e;->b:Lcom/join/mgps/dto/ForumData$GroupFans;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ForumGroupMemberActivity_;->U0(Lcom/join/mgps/activity/ForumGroupMemberActivity_;ILcom/join/mgps/dto/ForumData$GroupFans;)V

    return-void
.end method

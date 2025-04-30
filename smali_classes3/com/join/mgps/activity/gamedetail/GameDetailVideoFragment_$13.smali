.class Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$13;
.super Ljava/lang/Object;
.source "GameDetailVideoFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;

.field final synthetic val$result:Lcom/join/mgps/dto/ResultMainBean;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$13;->this$0:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;

    iput-object p2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$13;->val$result:Lcom/join/mgps/dto/ResultMainBean;

    iput p3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$13;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$13;->this$0:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$13;->val$result:Lcom/join/mgps/dto/ResultMainBean;

    iget v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$13;->val$type:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->access$501(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;Lcom/join/mgps/dto/ResultMainBean;I)V

    return-void
.end method

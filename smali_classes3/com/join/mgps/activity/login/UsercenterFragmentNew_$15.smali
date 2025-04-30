.class Lcom/join/mgps/activity/login/UsercenterFragmentNew_$15;
.super Ljava/lang/Object;
.source "UsercenterFragmentNew_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->updateAdapterByNewMsgCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew_;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$15;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew_;

    iput p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$15;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$15;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew_;

    iget v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$15;->val$count:I

    invoke-static {v0, v1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->access$601(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;I)V

    return-void
.end method

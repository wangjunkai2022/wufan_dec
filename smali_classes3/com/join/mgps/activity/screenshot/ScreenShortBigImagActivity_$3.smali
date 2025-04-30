.class Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$3;
.super Ljava/lang/Object;
.source "ScreenShortBigImagActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_;->updateUi(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_;

.field final synthetic val$itemBeans:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$3;->val$itemBeans:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$3;->val$itemBeans:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_;->access$001(Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_;Ljava/util/List;)V

    return-void
.end method

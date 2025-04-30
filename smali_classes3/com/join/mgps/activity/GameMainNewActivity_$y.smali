.class Lcom/join/mgps/activity/GameMainNewActivity_$y;
.super Ljava/lang/Object;
.source "GameMainNewActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainNewActivity_;->Z(Lcom/join/mgps/dto/GameMainV3DataBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameMainV3DataBean;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/GameMainNewActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainNewActivity_;Lcom/join/mgps/dto/GameMainV3DataBean;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity_$y;->c:Lcom/join/mgps/activity/GameMainNewActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/GameMainNewActivity_$y;->a:Lcom/join/mgps/dto/GameMainV3DataBean;

    iput-boolean p3, p0, Lcom/join/mgps/activity/GameMainNewActivity_$y;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity_$y;->c:Lcom/join/mgps/activity/GameMainNewActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity_$y;->a:Lcom/join/mgps/dto/GameMainV3DataBean;

    iget-boolean v2, p0, Lcom/join/mgps/activity/GameMainNewActivity_$y;->b:Z

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/GameMainNewActivity_;->a0(Lcom/join/mgps/activity/GameMainNewActivity_;Lcom/join/mgps/dto/GameMainV3DataBean;Z)V

    return-void
.end method

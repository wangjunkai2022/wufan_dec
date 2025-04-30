.class Lcom/join/mgps/activity/ModGameIndexActivity_$h;
.super Ljava/lang/Object;
.source "ModGameIndexActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity_;->q2(Lcom/join/mgps/dto/ModGameDetailBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ModGameDetailBean;

.field final synthetic b:Lcom/join/mgps/activity/ModGameIndexActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$h;->b:Lcom/join/mgps/activity/ModGameIndexActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$h;->a:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$h;->b:Lcom/join/mgps/activity/ModGameIndexActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$h;->a:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity_;->C2(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/join/mgps/dto/ModGameDetailBean;)V

    return-void
.end method

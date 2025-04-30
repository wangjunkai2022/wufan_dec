.class Lcom/papa/gsyvideoplayer/utils/g$c;
.super Ljava/util/TimerTask;
.source "GifCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/gsyvideoplayer/utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/utils/g;


# direct methods
.method private constructor <init>(Lcom/papa/gsyvideoplayer/utils/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/g$c;->a:Lcom/papa/gsyvideoplayer/utils/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa/gsyvideoplayer/utils/g;Lcom/papa/gsyvideoplayer/utils/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/g$c;-><init>(Lcom/papa/gsyvideoplayer/utils/g;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$c;->a:Lcom/papa/gsyvideoplayer/utils/g;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->f(Lcom/papa/gsyvideoplayer/utils/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$c;->a:Lcom/papa/gsyvideoplayer/utils/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/g;->g(Lcom/papa/gsyvideoplayer/utils/g;Z)Z

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$c;->a:Lcom/papa/gsyvideoplayer/utils/g;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->h(Lcom/papa/gsyvideoplayer/utils/g;)V

    :cond_0
    return-void
.end method

.class Lcom/join/mgps/control/RhythmLayout$b$a;
.super Ljava/util/TimerTask;
.source "RhythmLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/control/RhythmLayout$b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/control/RhythmLayout$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/control/RhythmLayout$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v2, v2, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout;->c(Lcom/join/mgps/control/RhythmLayout;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout$b;->a(Lcom/join/mgps/control/RhythmLayout$b;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 3
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-virtual {v0}, Lcom/join/mgps/control/RhythmLayout;->getFirstVisibleItemPosition()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    invoke-static {v1}, Lcom/join/mgps/control/RhythmLayout$b;->b(Lcom/join/mgps/control/RhythmLayout$b;)F

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v2, v2, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout;->a(Lcom/join/mgps/control/RhythmLayout;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    invoke-static {v1}, Lcom/join/mgps/control/RhythmLayout$b;->b(Lcom/join/mgps/control/RhythmLayout$b;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sub-int/2addr v0, v3

    if-ltz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v1, v1, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {v1, v4}, Lcom/join/mgps/control/RhythmLayout;->f(Lcom/join/mgps/control/RhythmLayout;I)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    invoke-static {v1}, Lcom/join/mgps/control/RhythmLayout$b;->b(Lcom/join/mgps/control/RhythmLayout$b;)F

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v2, v2, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout;->b(Lcom/join/mgps/control/RhythmLayout;)I

    move-result v2

    iget-object v5, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v5, v5, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {v5}, Lcom/join/mgps/control/RhythmLayout;->a(Lcom/join/mgps/control/RhythmLayout;)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v1, v1, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-virtual {v1}, Lcom/join/mgps/control/RhythmLayout;->getSize()I

    move-result v1

    add-int/lit8 v2, v0, 0x7

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    .line 8
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v1, v1, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/join/mgps/control/RhythmLayout;->f(Lcom/join/mgps/control/RhythmLayout;I)I

    add-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v1, v1, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {v1, v3, v4}, Lcom/join/mgps/control/RhythmLayout;->g(Lcom/join/mgps/control/RhythmLayout;ZZ)Ljava/util/List;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v2, v2, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout;->j(Lcom/join/mgps/control/RhythmLayout;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/control/RhythmLayout$b$a$a;

    invoke-direct {v3, p0, v1, v0}, Lcom/join/mgps/control/RhythmLayout$b$a$a;-><init>(Lcom/join/mgps/control/RhythmLayout$b$a;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

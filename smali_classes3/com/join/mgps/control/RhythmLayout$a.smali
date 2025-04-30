.class Lcom/join/mgps/control/RhythmLayout$a;
.super Ljava/lang/Object;
.source "RhythmLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/control/RhythmLayout;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/control/RhythmLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/control/RhythmLayout;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout$a;->b:Lcom/join/mgps/control/RhythmLayout;

    iput-object p2, p0, Lcom/join/mgps/control/RhythmLayout$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$a;->b:Lcom/join/mgps/control/RhythmLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/join/mgps/control/RhythmLayout;->v(Landroid/view/View;Z)Landroid/animation/Animator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

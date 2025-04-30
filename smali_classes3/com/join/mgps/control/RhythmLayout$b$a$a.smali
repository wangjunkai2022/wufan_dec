.class Lcom/join/mgps/control/RhythmLayout$b$a$a;
.super Ljava/lang/Object;
.source "RhythmLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/control/RhythmLayout$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/control/RhythmLayout$b$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/control/RhythmLayout$b$a;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->c:Lcom/join/mgps/control/RhythmLayout$b$a;

    iput-object p2, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->a:Ljava/util/List;

    iput p3, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->c:Lcom/join/mgps/control/RhythmLayout$b$a;

    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-static {v0}, Lcom/join/mgps/control/RhythmLayout;->e(Lcom/join/mgps/control/RhythmLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/control/RhythmLayout;->h(Lcom/join/mgps/control/RhythmLayout;ILjava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->c:Lcom/join/mgps/control/RhythmLayout$b$a;

    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    iget v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->b:I

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/control/RhythmLayout;->s(IIIZ)Landroid/animation/Animator;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->c:Lcom/join/mgps/control/RhythmLayout$b$a;

    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b$a;->a:Lcom/join/mgps/control/RhythmLayout$b;

    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    const-wide/16 v1, 0xa

    invoke-static {v0, v1, v2}, Lcom/join/mgps/control/RhythmLayout;->i(Lcom/join/mgps/control/RhythmLayout;J)V

    return-void
.end method

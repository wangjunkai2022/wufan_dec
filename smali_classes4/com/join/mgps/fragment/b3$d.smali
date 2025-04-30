.class Lcom/join/mgps/fragment/b3$d;
.super Ljava/lang/Object;
.source "GmaeFormPostFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/b3;->r1(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AbsListView;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/fragment/b3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/b3;Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/b3$d;->e:Lcom/join/mgps/fragment/b3;

    iput-object p2, p0, Lcom/join/mgps/fragment/b3$d;->a:Landroid/widget/AbsListView;

    iput p3, p0, Lcom/join/mgps/fragment/b3$d;->b:I

    iput p4, p0, Lcom/join/mgps/fragment/b3$d;->c:I

    iput p5, p0, Lcom/join/mgps/fragment/b3$d;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b3$d;->e:Lcom/join/mgps/fragment/b3;

    iget-object v1, p0, Lcom/join/mgps/fragment/b3$d;->a:Landroid/widget/AbsListView;

    iget v2, p0, Lcom/join/mgps/fragment/b3$d;->b:I

    iget v3, p0, Lcom/join/mgps/fragment/b3$d;->c:I

    iget v4, p0, Lcom/join/mgps/fragment/b3$d;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/fragment/b3;->u1(Lcom/join/mgps/fragment/b3;Landroid/widget/AbsListView;III)V

    return-void
.end method

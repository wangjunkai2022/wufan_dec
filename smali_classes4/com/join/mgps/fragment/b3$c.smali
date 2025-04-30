.class Lcom/join/mgps/fragment/b3$c;
.super Ljava/lang/Object;
.source "GmaeFormPostFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/b3;->s1(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AbsListView;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/b3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/b3;Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/b3$c;->c:Lcom/join/mgps/fragment/b3;

    iput-object p2, p0, Lcom/join/mgps/fragment/b3$c;->a:Landroid/widget/AbsListView;

    iput p3, p0, Lcom/join/mgps/fragment/b3$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b3$c;->c:Lcom/join/mgps/fragment/b3;

    iget-object v1, p0, Lcom/join/mgps/fragment/b3$c;->a:Landroid/widget/AbsListView;

    iget v2, p0, Lcom/join/mgps/fragment/b3$c;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/b3;->Q1(Lcom/join/mgps/fragment/b3;Landroid/widget/AbsListView;I)V

    return-void
.end method

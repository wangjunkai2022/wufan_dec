.class public final synthetic Lcom/papa91/arc/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/papa91/arc/view/MenuView;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/arc/view/MenuView;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/view/a;->a:Lcom/papa91/arc/view/MenuView;

    iput p2, p0, Lcom/papa91/arc/view/a;->b:I

    iput p3, p0, Lcom/papa91/arc/view/a;->c:I

    iput p4, p0, Lcom/papa91/arc/view/a;->d:I

    iput p5, p0, Lcom/papa91/arc/view/a;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/papa91/arc/view/a;->a:Lcom/papa91/arc/view/MenuView;

    iget v1, p0, Lcom/papa91/arc/view/a;->b:I

    iget v2, p0, Lcom/papa91/arc/view/a;->c:I

    iget v3, p0, Lcom/papa91/arc/view/a;->d:I

    iget v4, p0, Lcom/papa91/arc/view/a;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/papa91/arc/view/MenuView;->a(Lcom/papa91/arc/view/MenuView;IIII)V

    return-void
.end method
